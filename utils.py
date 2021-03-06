import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

class data_visualizer():

    def __init__(self, dataset):
        """ Constructs data visualizer object, adding an 'Index' column at beginning """

        self.dataset = dataset
 
    def all_feature_plots(self, dependent, shape = (3,4), figsize = (8,30), remove = [], cat_type = "Boxplot", save_fig = True, verbose_titles = False):
        """ Generates subplots of features variables against dependent variable (scatter if continous, else Boxplot) """

        columns = [i for i in self.dataset.columns if i not in remove]

        fig, axes = plt.subplots(shape[0], shape[1], figsize = figsize, sharey = True)
        for ind, ax in zip(columns, axes.flatten()):

            if self.dataset[ind].dtype == 'float64' or self.dataset[ind].dtype == 'int64':
                ax.scatter(self.dataset[ind], self.dataset[dependent])
                if verbose_titles:
                    ax.set_title(str(ind) +"\n" +" Mean:" + str(round(self.dataset[ind].mean(), 2)) + " Std:" + str(round(self.dataset[ind].std(), 2)) + " Skew:" + str(round(self.dataset[ind].skew(), 2)) + " Kurt:" + str(round(self.dataset[ind].kurtosis(), 2))               )#Mean:{self.dataset[ind].mean:.1f}, std:{self.dataset[ind].std()}, skew:{self.dataset[ind].skew()}, kurt:{self.dataset[ind].kurt()}')
                else:
                    ax.set_title(ind)
            elif self.dataset[ind].dtype == 'O':
                no_nan_col = self.dataset[ind].fillna("nan")
                if cat_type == "Scatter":
                    ax.scatter(no_nan_col, self.dataset[dependent])
                elif cat_type == "Boxplot":
                    data = []
                    ticks = []
                    for i in self.dataset[ind].unique():
                        if pd.isnull(i):
                            data.append(self.dataset[self.dataset[ind].isnull()][dependent])
                            ticks.append('nan')
                        else:
                            data.append(self.dataset[self.dataset[ind] == i][dependent])
                            ticks.append(i) 
                    ax.boxplot(data)
                    ax.set_xticklabels(ticks)
                    ax.set_title(ind)

        plt.tight_layout()
        plt.savefig("feature_analysis.png")
        plt.show()

from collections import defaultdict

class data_analyser():
    def __init__(self, dataset):
        self.dataset = dataset
    
    def categorical_analysis(self, remove = []):
        columns = [i for i in self.dataset.columns if i not in remove and self.dataset[i].dtype == 'O']
        self.cat_dict = defaultdict(list)
        for i in columns:
            self.cat_dict[i].append(list(self.dataset[i].value_counts(sort=True).index))
            self.cat_dict[i].append(list(self.dataset[i].value_counts(sort=True).values))
            self.cat_dict[i].append(list(round(j,2) for j in self.dataset[i].value_counts(normalize=True, sort=True).values))
            self.cat_dict[i].append(round(self.dataset[i].isna().sum(),2))

        column_names = ["Categories", "Counts", "Frequency", "Null Count"]
        return pd.DataFrame.from_dict(self.cat_dict, orient = 'index', columns = column_names)

    def continuous_analysis(self, remove = []):
        columns = [i for i in self.dataset.columns if i not in remove and (self.dataset[i].dtype == 'int64')
                     or (self.dataset[i].dtype == 'float64')]
        self.cont_dict = defaultdict(list)
        for i in columns:
            self.cont_dict[i].append(round(self.dataset[i].mean(),2))
            self.cont_dict[i].append(round(self.dataset[i].std(),2))
            self.cont_dict[i].append(round(self.dataset[i].kurtosis(),2))
            self.cont_dict[i].append(round(self.dataset[i].skew(),2))
            self.cont_dict[i].append(round(self.dataset[i].max(),2))
            self.cont_dict[i].append(round(self.dataset[i].min(),2))
            self.cont_dict[i].append(round(self.dataset[i].isna().sum(),2))

        column_names = ["Mean", "Std", "Kurtosis", "Skewness", "Max", "Min", "Null count"]
        return pd.DataFrame.from_dict(self.cont_dict, orient = 'index', columns = column_names)

    def continuous_correlation(self, remove = [], figsize=(10,10)):
        columns = [i for i in self.dataset.columns if i not in remove and (self.dataset[i].dtype == 'int64')
                     or (self.dataset[i].dtype == 'float64')]
        df = self.dataset[columns].copy()
        plt.figure(figsize=figsize)
        plt.title('Continuous correlation', y=1.05, size=15)
        colormap = plt.cm.RdBu
        sns.heatmap(df.astype(float).corr(),linewidths=0.1,vmax=1.0, square=True, cmap=colormap, linecolor='white', annot=True)

from math import log10 , floor
def round_it(x, sig):
    return round(x, sig-int(floor(log10(abs(x))))-1)













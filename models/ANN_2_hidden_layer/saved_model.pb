??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
dense_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namedense_layer1/kernel
{
'dense_layer1/kernel/Read/ReadVariableOpReadVariableOpdense_layer1/kernel*
_output_shapes

:*
dtype0
z
dense_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_layer1/bias
s
%dense_layer1/bias/Read/ReadVariableOpReadVariableOpdense_layer1/bias*
_output_shapes
:*
dtype0
?
dense_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namedense_layer2/kernel
{
'dense_layer2/kernel/Read/ReadVariableOpReadVariableOpdense_layer2/kernel*
_output_shapes

:*
dtype0
z
dense_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_layer2/bias
s
%dense_layer2/bias/Read/ReadVariableOpReadVariableOpdense_layer2/bias*
_output_shapes
:*
dtype0
?
output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameoutput_layer/kernel
{
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes

:*
dtype0
z
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/dense_layer1/kernel/m
?
.Adam/dense_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer1/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_layer1/bias/m
?
,Adam/dense_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer1/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/dense_layer2/kernel/m
?
.Adam/dense_layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer2/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_layer2/bias/m
?
,Adam/dense_layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer2/bias/m*
_output_shapes
:*
dtype0
?
Adam/output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/output_layer/kernel/m
?
.Adam/output_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/m*
_output_shapes

:*
dtype0
?
Adam/output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/m
?
,Adam/output_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/dense_layer1/kernel/v
?
.Adam/dense_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer1/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_layer1/bias/v
?
,Adam/dense_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer1/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/dense_layer2/kernel/v
?
.Adam/dense_layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer2/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_layer2/bias/v
?
,Adam/dense_layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer2/bias/v*
_output_shapes
:*
dtype0
?
Adam/output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/output_layer/kernel/v
?
.Adam/output_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/v*
_output_shapes

:*
dtype0
?
Adam/output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/v
?
,Adam/output_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
 
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
 	keras_api
h

!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
?
'iter

(beta_1

)beta_2
	*decay
+learning_ratemTmUmVmW!mX"mYvZv[v\v]!v^"v_
*
0
1
2
3
!4
"5
 
*
0
1
2
3
!4
"5
?
	variables
,layer_regularization_losses

-layers
.metrics
	regularization_losses

trainable_variables
/non_trainable_variables
0layer_metrics
 
_]
VARIABLE_VALUEdense_layer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_layer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
	variables
1layer_regularization_losses

2layers
3metrics
regularization_losses
trainable_variables
4non_trainable_variables
5layer_metrics
 
 
 
?
	variables
6layer_regularization_losses

7layers
8metrics
regularization_losses
trainable_variables
9non_trainable_variables
:layer_metrics
_]
VARIABLE_VALUEdense_layer2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_layer2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
	variables
;layer_regularization_losses

<layers
=metrics
regularization_losses
trainable_variables
>non_trainable_variables
?layer_metrics
 
 
 
?
	variables
@layer_regularization_losses

Alayers
Bmetrics
regularization_losses
trainable_variables
Cnon_trainable_variables
Dlayer_metrics
_]
VARIABLE_VALUEoutput_layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEoutput_layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
?
#	variables
Elayer_regularization_losses

Flayers
Gmetrics
$regularization_losses
%trainable_variables
Hnon_trainable_variables
Ilayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
*
0
1
2
3
4
5

J0
K1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ltotal
	Mcount
N	variables
O	keras_api
4
	Ptotal
	Qcount
R	variables
S	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

N	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1

R	variables
??
VARIABLE_VALUEAdam/dense_layer1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_layer1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_layer2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_layer2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/output_layer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/output_layer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_layer1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_layer1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_layer2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_layer2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/output_layer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/output_layer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_2Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2dense_layer1/kerneldense_layer1/biasdense_layer2/kerneldense_layer2/biasoutput_layer/kerneloutput_layer/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_506715
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'dense_layer1/kernel/Read/ReadVariableOp%dense_layer1/bias/Read/ReadVariableOp'dense_layer2/kernel/Read/ReadVariableOp%dense_layer2/bias/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp.Adam/dense_layer1/kernel/m/Read/ReadVariableOp,Adam/dense_layer1/bias/m/Read/ReadVariableOp.Adam/dense_layer2/kernel/m/Read/ReadVariableOp,Adam/dense_layer2/bias/m/Read/ReadVariableOp.Adam/output_layer/kernel/m/Read/ReadVariableOp,Adam/output_layer/bias/m/Read/ReadVariableOp.Adam/dense_layer1/kernel/v/Read/ReadVariableOp,Adam/dense_layer1/bias/v/Read/ReadVariableOp.Adam/dense_layer2/kernel/v/Read/ReadVariableOp,Adam/dense_layer2/bias/v/Read/ReadVariableOp.Adam/output_layer/kernel/v/Read/ReadVariableOp,Adam/output_layer/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_507032
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_layer1/kerneldense_layer1/biasdense_layer2/kerneldense_layer2/biasoutput_layer/kerneloutput_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_layer1/kernel/mAdam/dense_layer1/bias/mAdam/dense_layer2/kernel/mAdam/dense_layer2/bias/mAdam/output_layer/kernel/mAdam/output_layer/bias/mAdam/dense_layer1/kernel/vAdam/dense_layer1/bias/vAdam/dense_layer2/kernel/vAdam/dense_layer2/bias/vAdam/output_layer/kernel/vAdam/output_layer/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_507123??
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_506899

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
H__inference_dense_layer1_layer_call_and_return_conditional_losses_506826

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_506904

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_5065452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_Deeper_ANN_layer_call_fn_506650
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_5066352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_2
?
?
$__inference_signature_wrapper_506715
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_5064452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_2
?3
?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506755

inputs/
+dense_layer1_matmul_readvariableop_resource0
,dense_layer1_biasadd_readvariableop_resource/
+dense_layer2_matmul_readvariableop_resource0
,dense_layer2_biasadd_readvariableop_resource/
+output_layer_matmul_readvariableop_resource0
,output_layer_biasadd_readvariableop_resource
identity??#dense_layer1/BiasAdd/ReadVariableOp?"dense_layer1/MatMul/ReadVariableOp?#dense_layer2/BiasAdd/ReadVariableOp?"dense_layer2/MatMul/ReadVariableOp?#output_layer/BiasAdd/ReadVariableOp?"output_layer/MatMul/ReadVariableOp?
"dense_layer1/MatMul/ReadVariableOpReadVariableOp+dense_layer1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_layer1/MatMul/ReadVariableOp?
dense_layer1/MatMulMatMulinputs*dense_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer1/MatMul?
#dense_layer1/BiasAdd/ReadVariableOpReadVariableOp,dense_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#dense_layer1/BiasAdd/ReadVariableOp?
dense_layer1/BiasAddBiasAdddense_layer1/MatMul:product:0+dense_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer1/BiasAdd
dense_layer1/ReluReludense_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_layer1/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/dropout/Const?
dropout/dropout/MulMuldense_layer1/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Mul}
dropout/dropout/ShapeShapedense_layer1/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Mul_1?
"dense_layer2/MatMul/ReadVariableOpReadVariableOp+dense_layer2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_layer2/MatMul/ReadVariableOp?
dense_layer2/MatMulMatMuldropout/dropout/Mul_1:z:0*dense_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer2/MatMul?
#dense_layer2/BiasAdd/ReadVariableOpReadVariableOp,dense_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#dense_layer2/BiasAdd/ReadVariableOp?
dense_layer2/BiasAddBiasAdddense_layer2/MatMul:product:0+dense_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer2/BiasAdd
dense_layer2/ReluReludense_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_layer2/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMuldense_layer2/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShapedense_layer2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_1/dropout/Mul_1?
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"output_layer/MatMul/ReadVariableOp?
output_layer/MatMulMatMuldropout_1/dropout/Mul_1:z:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output_layer/MatMul?
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#output_layer/BiasAdd/ReadVariableOp?
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output_layer/BiasAdd?
IdentityIdentityoutput_layer/BiasAdd:output:0$^dense_layer1/BiasAdd/ReadVariableOp#^dense_layer1/MatMul/ReadVariableOp$^dense_layer2/BiasAdd/ReadVariableOp#^dense_layer2/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2J
#dense_layer1/BiasAdd/ReadVariableOp#dense_layer1/BiasAdd/ReadVariableOp2H
"dense_layer1/MatMul/ReadVariableOp"dense_layer1/MatMul/ReadVariableOp2J
#dense_layer2/BiasAdd/ReadVariableOp#dense_layer2/BiasAdd/ReadVariableOp2H
"dense_layer2/MatMul/ReadVariableOp"dense_layer2/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_Deeper_ANN_layer_call_fn_506688
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_5066732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_2
?(
?
!__inference__wrapped_model_506445
input_2:
6deeper_ann_dense_layer1_matmul_readvariableop_resource;
7deeper_ann_dense_layer1_biasadd_readvariableop_resource:
6deeper_ann_dense_layer2_matmul_readvariableop_resource;
7deeper_ann_dense_layer2_biasadd_readvariableop_resource:
6deeper_ann_output_layer_matmul_readvariableop_resource;
7deeper_ann_output_layer_biasadd_readvariableop_resource
identity??.Deeper_ANN/dense_layer1/BiasAdd/ReadVariableOp?-Deeper_ANN/dense_layer1/MatMul/ReadVariableOp?.Deeper_ANN/dense_layer2/BiasAdd/ReadVariableOp?-Deeper_ANN/dense_layer2/MatMul/ReadVariableOp?.Deeper_ANN/output_layer/BiasAdd/ReadVariableOp?-Deeper_ANN/output_layer/MatMul/ReadVariableOp?
-Deeper_ANN/dense_layer1/MatMul/ReadVariableOpReadVariableOp6deeper_ann_dense_layer1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-Deeper_ANN/dense_layer1/MatMul/ReadVariableOp?
Deeper_ANN/dense_layer1/MatMulMatMulinput_25Deeper_ANN/dense_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
Deeper_ANN/dense_layer1/MatMul?
.Deeper_ANN/dense_layer1/BiasAdd/ReadVariableOpReadVariableOp7deeper_ann_dense_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.Deeper_ANN/dense_layer1/BiasAdd/ReadVariableOp?
Deeper_ANN/dense_layer1/BiasAddBiasAdd(Deeper_ANN/dense_layer1/MatMul:product:06Deeper_ANN/dense_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
Deeper_ANN/dense_layer1/BiasAdd?
Deeper_ANN/dense_layer1/ReluRelu(Deeper_ANN/dense_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Deeper_ANN/dense_layer1/Relu?
Deeper_ANN/dropout/IdentityIdentity*Deeper_ANN/dense_layer1/Relu:activations:0*
T0*'
_output_shapes
:?????????2
Deeper_ANN/dropout/Identity?
-Deeper_ANN/dense_layer2/MatMul/ReadVariableOpReadVariableOp6deeper_ann_dense_layer2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-Deeper_ANN/dense_layer2/MatMul/ReadVariableOp?
Deeper_ANN/dense_layer2/MatMulMatMul$Deeper_ANN/dropout/Identity:output:05Deeper_ANN/dense_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
Deeper_ANN/dense_layer2/MatMul?
.Deeper_ANN/dense_layer2/BiasAdd/ReadVariableOpReadVariableOp7deeper_ann_dense_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.Deeper_ANN/dense_layer2/BiasAdd/ReadVariableOp?
Deeper_ANN/dense_layer2/BiasAddBiasAdd(Deeper_ANN/dense_layer2/MatMul:product:06Deeper_ANN/dense_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
Deeper_ANN/dense_layer2/BiasAdd?
Deeper_ANN/dense_layer2/ReluRelu(Deeper_ANN/dense_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Deeper_ANN/dense_layer2/Relu?
Deeper_ANN/dropout_1/IdentityIdentity*Deeper_ANN/dense_layer2/Relu:activations:0*
T0*'
_output_shapes
:?????????2
Deeper_ANN/dropout_1/Identity?
-Deeper_ANN/output_layer/MatMul/ReadVariableOpReadVariableOp6deeper_ann_output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-Deeper_ANN/output_layer/MatMul/ReadVariableOp?
Deeper_ANN/output_layer/MatMulMatMul&Deeper_ANN/dropout_1/Identity:output:05Deeper_ANN/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
Deeper_ANN/output_layer/MatMul?
.Deeper_ANN/output_layer/BiasAdd/ReadVariableOpReadVariableOp7deeper_ann_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.Deeper_ANN/output_layer/BiasAdd/ReadVariableOp?
Deeper_ANN/output_layer/BiasAddBiasAdd(Deeper_ANN/output_layer/MatMul:product:06Deeper_ANN/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
Deeper_ANN/output_layer/BiasAdd?
IdentityIdentity(Deeper_ANN/output_layer/BiasAdd:output:0/^Deeper_ANN/dense_layer1/BiasAdd/ReadVariableOp.^Deeper_ANN/dense_layer1/MatMul/ReadVariableOp/^Deeper_ANN/dense_layer2/BiasAdd/ReadVariableOp.^Deeper_ANN/dense_layer2/MatMul/ReadVariableOp/^Deeper_ANN/output_layer/BiasAdd/ReadVariableOp.^Deeper_ANN/output_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2`
.Deeper_ANN/dense_layer1/BiasAdd/ReadVariableOp.Deeper_ANN/dense_layer1/BiasAdd/ReadVariableOp2^
-Deeper_ANN/dense_layer1/MatMul/ReadVariableOp-Deeper_ANN/dense_layer1/MatMul/ReadVariableOp2`
.Deeper_ANN/dense_layer2/BiasAdd/ReadVariableOp.Deeper_ANN/dense_layer2/BiasAdd/ReadVariableOp2^
-Deeper_ANN/dense_layer2/MatMul/ReadVariableOp-Deeper_ANN/dense_layer2/MatMul/ReadVariableOp2`
.Deeper_ANN/output_layer/BiasAdd/ReadVariableOp.Deeper_ANN/output_layer/BiasAdd/ReadVariableOp2^
-Deeper_ANN/output_layer/MatMul/ReadVariableOp-Deeper_ANN/output_layer/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_2
?!
?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506781

inputs/
+dense_layer1_matmul_readvariableop_resource0
,dense_layer1_biasadd_readvariableop_resource/
+dense_layer2_matmul_readvariableop_resource0
,dense_layer2_biasadd_readvariableop_resource/
+output_layer_matmul_readvariableop_resource0
,output_layer_biasadd_readvariableop_resource
identity??#dense_layer1/BiasAdd/ReadVariableOp?"dense_layer1/MatMul/ReadVariableOp?#dense_layer2/BiasAdd/ReadVariableOp?"dense_layer2/MatMul/ReadVariableOp?#output_layer/BiasAdd/ReadVariableOp?"output_layer/MatMul/ReadVariableOp?
"dense_layer1/MatMul/ReadVariableOpReadVariableOp+dense_layer1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_layer1/MatMul/ReadVariableOp?
dense_layer1/MatMulMatMulinputs*dense_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer1/MatMul?
#dense_layer1/BiasAdd/ReadVariableOpReadVariableOp,dense_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#dense_layer1/BiasAdd/ReadVariableOp?
dense_layer1/BiasAddBiasAdddense_layer1/MatMul:product:0+dense_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer1/BiasAdd
dense_layer1/ReluReludense_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_layer1/Relu?
dropout/IdentityIdentitydense_layer1/Relu:activations:0*
T0*'
_output_shapes
:?????????2
dropout/Identity?
"dense_layer2/MatMul/ReadVariableOpReadVariableOp+dense_layer2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_layer2/MatMul/ReadVariableOp?
dense_layer2/MatMulMatMuldropout/Identity:output:0*dense_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer2/MatMul?
#dense_layer2/BiasAdd/ReadVariableOpReadVariableOp,dense_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#dense_layer2/BiasAdd/ReadVariableOp?
dense_layer2/BiasAddBiasAdddense_layer2/MatMul:product:0+dense_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_layer2/BiasAdd
dense_layer2/ReluReludense_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_layer2/Relu?
dropout_1/IdentityIdentitydense_layer2/Relu:activations:0*
T0*'
_output_shapes
:?????????2
dropout_1/Identity?
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"output_layer/MatMul/ReadVariableOp?
output_layer/MatMulMatMuldropout_1/Identity:output:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output_layer/MatMul?
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#output_layer/BiasAdd/ReadVariableOp?
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output_layer/BiasAdd?
IdentityIdentityoutput_layer/BiasAdd:output:0$^dense_layer1/BiasAdd/ReadVariableOp#^dense_layer1/MatMul/ReadVariableOp$^dense_layer2/BiasAdd/ReadVariableOp#^dense_layer2/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2J
#dense_layer1/BiasAdd/ReadVariableOp#dense_layer1/BiasAdd/ReadVariableOp2H
"dense_layer1/MatMul/ReadVariableOp"dense_layer1/MatMul/ReadVariableOp2J
#dense_layer2/BiasAdd/ReadVariableOp#dense_layer2/BiasAdd/ReadVariableOp2H
"dense_layer2/MatMul/ReadVariableOp"dense_layer2/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506673

inputs
dense_layer1_506655
dense_layer1_506657
dense_layer2_506661
dense_layer2_506663
output_layer_506667
output_layer_506669
identity??$dense_layer1/StatefulPartitionedCall?$dense_layer2/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
$dense_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_layer1_506655dense_layer1_506657*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer1_layer_call_and_return_conditional_losses_5064602&
$dense_layer1/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall-dense_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_5064932
dropout/PartitionedCall?
$dense_layer2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_layer2_506661dense_layer2_506663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer2_layer_call_and_return_conditional_losses_5065172&
$dense_layer2/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall-dense_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_5065502
dropout_1/PartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_layer_506667output_layer_506669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_5065732&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0%^dense_layer1/StatefulPartitionedCall%^dense_layer2/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2L
$dense_layer1/StatefulPartitionedCall$dense_layer1/StatefulPartitionedCall2L
$dense_layer2/StatefulPartitionedCall$dense_layer2/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

b
C__inference_dropout_layer_call_and_return_conditional_losses_506847

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
H__inference_dense_layer2_layer_call_and_return_conditional_losses_506873

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_output_layer_layer_call_fn_506928

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_5065732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
H__inference_dense_layer2_layer_call_and_return_conditional_losses_506517

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506611
input_2
dense_layer1_506593
dense_layer1_506595
dense_layer2_506599
dense_layer2_506601
output_layer_506605
output_layer_506607
identity??$dense_layer1/StatefulPartitionedCall?$dense_layer2/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
$dense_layer1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_layer1_506593dense_layer1_506595*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer1_layer_call_and_return_conditional_losses_5064602&
$dense_layer1/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall-dense_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_5064932
dropout/PartitionedCall?
$dense_layer2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_layer2_506599dense_layer2_506601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer2_layer_call_and_return_conditional_losses_5065172&
$dense_layer2/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall-dense_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_5065502
dropout_1/PartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_layer_506605output_layer_506607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_5065732&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0%^dense_layer1/StatefulPartitionedCall%^dense_layer2/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2L
$dense_layer1/StatefulPartitionedCall$dense_layer1/StatefulPartitionedCall2L
$dense_layer2/StatefulPartitionedCall$dense_layer2/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_2
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_506894

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_506545

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_dense_layer1_layer_call_fn_506835

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer1_layer_call_and_return_conditional_losses_5064602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_dense_layer2_layer_call_fn_506882

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer2_layer_call_and_return_conditional_losses_5065172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
(__inference_dropout_layer_call_fn_506857

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_5064882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_Deeper_ANN_layer_call_fn_506815

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_5066732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
H__inference_output_layer_layer_call_and_return_conditional_losses_506919

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_506550

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_dropout_layer_call_fn_506862

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_5064932
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
__inference__traced_save_507032
file_prefix2
.savev2_dense_layer1_kernel_read_readvariableop0
,savev2_dense_layer1_bias_read_readvariableop2
.savev2_dense_layer2_kernel_read_readvariableop0
,savev2_dense_layer2_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop9
5savev2_adam_dense_layer1_kernel_m_read_readvariableop7
3savev2_adam_dense_layer1_bias_m_read_readvariableop9
5savev2_adam_dense_layer2_kernel_m_read_readvariableop7
3savev2_adam_dense_layer2_bias_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableop9
5savev2_adam_dense_layer1_kernel_v_read_readvariableop7
3savev2_adam_dense_layer1_bias_v_read_readvariableop9
5savev2_adam_dense_layer2_kernel_v_read_readvariableop7
3savev2_adam_dense_layer2_bias_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_dense_layer1_kernel_read_readvariableop,savev2_dense_layer1_bias_read_readvariableop.savev2_dense_layer2_kernel_read_readvariableop,savev2_dense_layer2_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop5savev2_adam_dense_layer1_kernel_m_read_readvariableop3savev2_adam_dense_layer1_bias_m_read_readvariableop5savev2_adam_dense_layer2_kernel_m_read_readvariableop3savev2_adam_dense_layer2_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop5savev2_adam_dense_layer1_kernel_v_read_readvariableop3savev2_adam_dense_layer1_bias_v_read_readvariableop5savev2_adam_dense_layer2_kernel_v_read_readvariableop3savev2_adam_dense_layer2_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::: : : : : : : : : ::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
F
*__inference_dropout_1_layer_call_fn_506909

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_5065502
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506635

inputs
dense_layer1_506617
dense_layer1_506619
dense_layer2_506623
dense_layer2_506625
output_layer_506629
output_layer_506631
identity??$dense_layer1/StatefulPartitionedCall?$dense_layer2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
$dense_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_layer1_506617dense_layer1_506619*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer1_layer_call_and_return_conditional_losses_5064602&
$dense_layer1/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall-dense_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_5064882!
dropout/StatefulPartitionedCall?
$dense_layer2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_layer2_506623dense_layer2_506625*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer2_layer_call_and_return_conditional_losses_5065172&
$dense_layer2/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall-dense_layer2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_5065452#
!dropout_1/StatefulPartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_layer_506629output_layer_506631*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_5065732&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0%^dense_layer1/StatefulPartitionedCall%^dense_layer2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2L
$dense_layer1/StatefulPartitionedCall$dense_layer1/StatefulPartitionedCall2L
$dense_layer2/StatefulPartitionedCall$dense_layer2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_506852

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_506493

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506590
input_2
dense_layer1_506471
dense_layer1_506473
dense_layer2_506528
dense_layer2_506530
output_layer_506584
output_layer_506586
identity??$dense_layer1/StatefulPartitionedCall?$dense_layer2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
$dense_layer1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_layer1_506471dense_layer1_506473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer1_layer_call_and_return_conditional_losses_5064602&
$dense_layer1/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall-dense_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_5064882!
dropout/StatefulPartitionedCall?
$dense_layer2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_layer2_506528dense_layer2_506530*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_layer2_layer_call_and_return_conditional_losses_5065172&
$dense_layer2/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall-dense_layer2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_5065452#
!dropout_1/StatefulPartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_layer_506584output_layer_506586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_5065732&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0%^dense_layer1/StatefulPartitionedCall%^dense_layer2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::2L
$dense_layer1/StatefulPartitionedCall$dense_layer1/StatefulPartitionedCall2L
$dense_layer2/StatefulPartitionedCall$dense_layer2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_2
?

b
C__inference_dropout_layer_call_and_return_conditional_losses_506488

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?t
?
"__inference__traced_restore_507123
file_prefix(
$assignvariableop_dense_layer1_kernel(
$assignvariableop_1_dense_layer1_bias*
&assignvariableop_2_dense_layer2_kernel(
$assignvariableop_3_dense_layer2_bias*
&assignvariableop_4_output_layer_kernel(
$assignvariableop_5_output_layer_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_12
.assignvariableop_15_adam_dense_layer1_kernel_m0
,assignvariableop_16_adam_dense_layer1_bias_m2
.assignvariableop_17_adam_dense_layer2_kernel_m0
,assignvariableop_18_adam_dense_layer2_bias_m2
.assignvariableop_19_adam_output_layer_kernel_m0
,assignvariableop_20_adam_output_layer_bias_m2
.assignvariableop_21_adam_dense_layer1_kernel_v0
,assignvariableop_22_adam_dense_layer1_bias_v2
.assignvariableop_23_adam_dense_layer2_kernel_v0
,assignvariableop_24_adam_dense_layer2_bias_v2
.assignvariableop_25_adam_output_layer_kernel_v0
,assignvariableop_26_adam_output_layer_bias_v
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp$assignvariableop_dense_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp$assignvariableop_1_dense_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp&assignvariableop_2_dense_layer2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp$assignvariableop_3_dense_layer2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp&assignvariableop_4_output_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp$assignvariableop_5_output_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_adam_dense_layer1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp,assignvariableop_16_adam_dense_layer1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp.assignvariableop_17_adam_dense_layer2_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp,assignvariableop_18_adam_dense_layer2_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp.assignvariableop_19_adam_output_layer_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_output_layer_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_dense_layer1_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_dense_layer1_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_dense_layer2_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_dense_layer2_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp.assignvariableop_25_adam_output_layer_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adam_output_layer_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*?
_input_shapesp
n: :::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
H__inference_dense_layer1_layer_call_and_return_conditional_losses_506460

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
H__inference_output_layer_layer_call_and_return_conditional_losses_506573

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_Deeper_ANN_layer_call_fn_506798

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_5066352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_20
serving_default_input_2:0?????????@
output_layer0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?2
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
`_default_save_signature
*a&call_and_return_all_conditional_losses
b__call__"?/
_tf_keras_network?/{"class_name": "Functional", "name": "Deeper_ANN", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "Deeper_ANN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_layer1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "dtype": "float32", "units": 25, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense_layer1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_layer2", "trainable": true, "dtype": "float32", "units": 12, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer2", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_layer2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_layer", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["output_layer", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 20]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Deeper_ANN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_layer1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "dtype": "float32", "units": 25, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense_layer1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_layer2", "trainable": true, "dtype": "float32", "units": 12, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer2", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_layer2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_layer", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["output_layer", 0, 0]]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "RootMeanSquaredError", "config": {"name": "root_mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*c&call_and_return_all_conditional_losses
d__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_layer1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_layer1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "dtype": "float32", "units": 25, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
?
	variables
regularization_losses
trainable_variables
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_layer2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_layer2", "trainable": true, "dtype": "float32", "units": 12, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 25}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25]}}
?
	variables
regularization_losses
trainable_variables
 	keras_api
*i&call_and_return_all_conditional_losses
j__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?	

!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
*k&call_and_return_all_conditional_losses
l__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "output_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_layer", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20, 1]}, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12]}}
?
'iter

(beta_1

)beta_2
	*decay
+learning_ratemTmUmVmW!mX"mYvZv[v\v]!v^"v_"
	optimizer
J
0
1
2
3
!4
"5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
!4
"5"
trackable_list_wrapper
?
	variables
,layer_regularization_losses

-layers
.metrics
	regularization_losses

trainable_variables
/non_trainable_variables
0layer_metrics
b__call__
`_default_save_signature
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
,
mserving_default"
signature_map
%:#2dense_layer1/kernel
:2dense_layer1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
	variables
1layer_regularization_losses

2layers
3metrics
regularization_losses
trainable_variables
4non_trainable_variables
5layer_metrics
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
6layer_regularization_losses

7layers
8metrics
regularization_losses
trainable_variables
9non_trainable_variables
:layer_metrics
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
%:#2dense_layer2/kernel
:2dense_layer2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
	variables
;layer_regularization_losses

<layers
=metrics
regularization_losses
trainable_variables
>non_trainable_variables
?layer_metrics
h__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
@layer_regularization_losses

Alayers
Bmetrics
regularization_losses
trainable_variables
Cnon_trainable_variables
Dlayer_metrics
j__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
%:#2output_layer/kernel
:2output_layer/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
#	variables
Elayer_regularization_losses

Flayers
Gmetrics
$regularization_losses
%trainable_variables
Hnon_trainable_variables
Ilayer_metrics
l__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
	Ltotal
	Mcount
N	variables
O	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	Ptotal
	Qcount
R	variables
S	keras_api"?
_tf_keras_metric?{"class_name": "RootMeanSquaredError", "name": "root_mean_squared_error", "dtype": "float32", "config": {"name": "root_mean_squared_error", "dtype": "float32"}}
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
:  (2total
:  (2count
.
P0
Q1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
*:(2Adam/dense_layer1/kernel/m
$:"2Adam/dense_layer1/bias/m
*:(2Adam/dense_layer2/kernel/m
$:"2Adam/dense_layer2/bias/m
*:(2Adam/output_layer/kernel/m
$:"2Adam/output_layer/bias/m
*:(2Adam/dense_layer1/kernel/v
$:"2Adam/dense_layer1/bias/v
*:(2Adam/dense_layer2/kernel/v
$:"2Adam/dense_layer2/bias/v
*:(2Adam/output_layer/kernel/v
$:"2Adam/output_layer/bias/v
?2?
!__inference__wrapped_model_506445?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_2?????????
?2?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506755
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506611
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506781
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506590?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_Deeper_ANN_layer_call_fn_506815
+__inference_Deeper_ANN_layer_call_fn_506650
+__inference_Deeper_ANN_layer_call_fn_506798
+__inference_Deeper_ANN_layer_call_fn_506688?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dense_layer1_layer_call_and_return_conditional_losses_506826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_dense_layer1_layer_call_fn_506835?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dropout_layer_call_and_return_conditional_losses_506852
C__inference_dropout_layer_call_and_return_conditional_losses_506847?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dropout_layer_call_fn_506862
(__inference_dropout_layer_call_fn_506857?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dense_layer2_layer_call_and_return_conditional_losses_506873?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_dense_layer2_layer_call_fn_506882?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dropout_1_layer_call_and_return_conditional_losses_506894
E__inference_dropout_1_layer_call_and_return_conditional_losses_506899?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_1_layer_call_fn_506909
*__inference_dropout_1_layer_call_fn_506904?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_output_layer_layer_call_and_return_conditional_losses_506919?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_output_layer_layer_call_fn_506928?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_506715input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506590i!"8?5
.?+
!?
input_2?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506611i!"8?5
.?+
!?
input_2?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506755h!"7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_Deeper_ANN_layer_call_and_return_conditional_losses_506781h!"7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
+__inference_Deeper_ANN_layer_call_fn_506650\!"8?5
.?+
!?
input_2?????????
p

 
? "???????????
+__inference_Deeper_ANN_layer_call_fn_506688\!"8?5
.?+
!?
input_2?????????
p 

 
? "???????????
+__inference_Deeper_ANN_layer_call_fn_506798[!"7?4
-?*
 ?
inputs?????????
p

 
? "???????????
+__inference_Deeper_ANN_layer_call_fn_506815[!"7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
!__inference__wrapped_model_506445w!"0?-
&?#
!?
input_2?????????
? ";?8
6
output_layer&?#
output_layer??????????
H__inference_dense_layer1_layer_call_and_return_conditional_losses_506826\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
-__inference_dense_layer1_layer_call_fn_506835O/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_dense_layer2_layer_call_and_return_conditional_losses_506873\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
-__inference_dense_layer2_layer_call_fn_506882O/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dropout_1_layer_call_and_return_conditional_losses_506894\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_506899\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? }
*__inference_dropout_1_layer_call_fn_506904O3?0
)?&
 ?
inputs?????????
p
? "??????????}
*__inference_dropout_1_layer_call_fn_506909O3?0
)?&
 ?
inputs?????????
p 
? "???????????
C__inference_dropout_layer_call_and_return_conditional_losses_506847\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
C__inference_dropout_layer_call_and_return_conditional_losses_506852\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? {
(__inference_dropout_layer_call_fn_506857O3?0
)?&
 ?
inputs?????????
p
? "??????????{
(__inference_dropout_layer_call_fn_506862O3?0
)?&
 ?
inputs?????????
p 
? "???????????
H__inference_output_layer_layer_call_and_return_conditional_losses_506919\!"/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
-__inference_output_layer_layer_call_fn_506928O!"/?,
%?"
 ?
inputs?????????
? "???????????
$__inference_signature_wrapper_506715?!";?8
? 
1?.
,
input_2!?
input_2?????????";?8
6
output_layer&?#
output_layer?????????
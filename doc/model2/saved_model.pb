ยอ
ต
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

๛
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%ทั8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
ฎ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
ม
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
executor_typestring จ
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ึ

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes
:	
*
dtype0

"Adam/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*3
shared_name$"Adam/batch_normalization_11/beta/v

6Adam/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/v*
_output_shapes	
:ศ*
dtype0

#Adam/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*4
shared_name%#Adam/batch_normalization_11/gamma/v

7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/v*
_output_shapes	
:ศ*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*%
shared_nameAdam/dense_14/bias/v
z
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes	
:ศ*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ศ*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v* 
_output_shapes
:
ศ*
dtype0

Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_19/bias/v
|
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_19/kernel/v

+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*'
_output_shapes
: *
dtype0

"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_10/beta/v

6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes
: *
dtype0

#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_10/gamma/v

7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes
: *
dtype0

Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_18/kernel/v

+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
: *
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes
:	
*
dtype0

"Adam/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*3
shared_name$"Adam/batch_normalization_11/beta/m

6Adam/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/m*
_output_shapes	
:ศ*
dtype0

#Adam/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*4
shared_name%#Adam/batch_normalization_11/gamma/m

7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/m*
_output_shapes	
:ศ*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*%
shared_nameAdam/dense_14/bias/m
z
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes	
:ศ*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ศ*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m* 
_output_shapes
:
ศ*
dtype0

Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_19/bias/m
|
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_19/kernel/m

+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*'
_output_shapes
: *
dtype0

"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_10/beta/m

6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes
: *
dtype0

#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_10/gamma/m

7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes
: *
dtype0

Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_18/kernel/m

+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
: *
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
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:
*
dtype0
{
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_15/kernel
t
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes
:	
*
dtype0
ฅ
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*7
shared_name(&batch_normalization_11/moving_variance

:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes	
:ศ*
dtype0

"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*3
shared_name$"batch_normalization_11/moving_mean

6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes	
:ศ*
dtype0

batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*,
shared_namebatch_normalization_11/beta

/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes	
:ศ*
dtype0

batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*-
shared_namebatch_normalization_11/gamma

0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes	
:ศ*
dtype0
s
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ศ*
shared_namedense_14/bias
l
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes	
:ศ*
dtype0
|
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ศ* 
shared_namedense_14/kernel
u
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel* 
_output_shapes
:
ศ*
dtype0
u
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_19/bias
n
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes	
:*
dtype0

conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_19/kernel
~
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*'
_output_shapes
: *
dtype0
ค
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_10/moving_variance

:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
: *
dtype0

"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_10/moving_mean

6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_10/beta

/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
: *
dtype0

batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_10/gamma

0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
: *
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
: *
dtype0

conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
: *
dtype0

serving_default_conv2d_18_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
์
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_18_inputconv2d_18/kernelconv2d_18/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_19/kernelconv2d_19/biasdense_14/kerneldense_14/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_15/kerneldense_15/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_476376

NoOpNoOp
ขv
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?u
valueำuBะu Bษu

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
ศ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
ี
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&axis
	'gamma
(beta
)moving_mean
*moving_variance*

+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
ฅ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator* 
ศ
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op*

A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
ฅ
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M_random_generator* 
ฆ
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias*

V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
ฅ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b_random_generator* 
ี
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance*

n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
ฆ
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias*
z
0
1
'2
(3
)4
*5
>6
?7
T8
U9
j10
k11
l12
m13
z14
{15*
Z
0
1
'2
(3
>4
?5
T6
U7
j8
k9
z10
{11*
* 
ฑ
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
น
	iter
beta_1
beta_2

decay
learning_ratem?m'm(m>m?mTmUmjmkmzm{mvv'v(v>v?vTvUvjvkvzv{v*

serving_default* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
'0
(1
)2
*3*

'0
(1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
?layers
กmetrics
 ขlayer_regularization_losses
ฃlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

คtrace_0* 

ฅtrace_0* 
* 
* 
* 

ฆnon_trainable_variables
งlayers
จmetrics
 ฉlayer_regularization_losses
ชlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

ซtrace_0
ฌtrace_1* 

ญtrace_0
ฎtrace_1* 
* 

>0
?1*

>0
?1*
* 

ฏnon_trainable_variables
ฐlayers
ฑmetrics
 ฒlayer_regularization_losses
ณlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

ดtrace_0* 

ตtrace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ถnon_trainable_variables
ทlayers
ธmetrics
 นlayer_regularization_losses
บlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

ปtrace_0* 

ผtrace_0* 
* 
* 
* 

ฝnon_trainable_variables
พlayers
ฟmetrics
 ภlayer_regularization_losses
มlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

ยtrace_0
รtrace_1* 

ฤtrace_0
ลtrace_1* 
* 

T0
U1*

T0
U1*
* 

ฦnon_trainable_variables
วlayers
ศmetrics
 ษlayer_regularization_losses
สlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

หtrace_0* 

ฬtrace_0* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

อnon_trainable_variables
ฮlayers
ฯmetrics
 ะlayer_regularization_losses
ัlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

าtrace_0* 

ำtrace_0* 
* 
* 
* 

ิnon_trainable_variables
ีlayers
ึmetrics
 ืlayer_regularization_losses
ุlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 

ูtrace_0
ฺtrace_1* 

?trace_0
?trace_1* 
* 
 
j0
k1
l2
m3*

j0
k1*
* 

?non_trainable_variables
?layers
฿metrics
 เlayer_regularization_losses
แlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

โtrace_0
ใtrace_1* 

ไtrace_0
ๅtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ๆnon_trainable_variables
็layers
่metrics
 ้layer_regularization_losses
๊layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

๋trace_0* 

์trace_0* 

z0
{1*

z0
{1*
* 

ํnon_trainable_variables
๎layers
๏metrics
 ๐layer_regularization_losses
๑layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

๒trace_0* 

๓trace_0* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
)0
*1
l2
m3*
b
0
1
2
3
4
5
6
7
	8

9
10
11
12*

๔0
๕1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

)0
*1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

l0
m1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
๖	variables
๗	keras_api

๘total

๙count*
M
๚	variables
๛	keras_api

?total

?count
?
_fn_kwargs*

๘0
๙1*

๖	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

๚	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_10/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_11/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_10/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_11/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ณ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_10/beta/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_11/beta/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_10/beta/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_11/beta/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_477154
ฺ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_19/kernelconv2d_19/biasdense_14/kerneldense_14/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_15/kerneldense_15/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/m#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/m#Adam/batch_normalization_11/gamma/m"Adam/batch_normalization_11/beta/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/v#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/v#Adam/batch_normalization_11/gamma/v"Adam/batch_normalization_11/beta/vAdam/dense_15/kernel/vAdam/dense_15/bias/v*=
Tin6
422*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_477311จำ
ษ
a
E__inference_flatten_7_layer_call_and_return_conditional_losses_476964

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs
?
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_475842

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
บ
M
1__inference_max_pooling2d_19_layer_call_fn_476859

inputs
identityฺ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_475713
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
บ
M
1__inference_max_pooling2d_17_layer_call_fn_476727

inputs
identityฺ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_475689
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_475689

inputs
identityก
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

ม
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475669

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
exponential_avg_factor%
ื#<ฦ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ะ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
๙
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_476747

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ษ
a
E__inference_flatten_7_layer_call_and_return_conditional_losses_475903

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs
ฅ{
ฑ
!__inference__wrapped_model_475616
conv2d_18_inputO
5sequential_7_conv2d_18_conv2d_readvariableop_resource: D
6sequential_7_conv2d_18_biasadd_readvariableop_resource: I
;sequential_7_batch_normalization_10_readvariableop_resource: K
=sequential_7_batch_normalization_10_readvariableop_1_resource: Z
Lsequential_7_batch_normalization_10_fusedbatchnormv3_readvariableop_resource: \
Nsequential_7_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource: P
5sequential_7_conv2d_19_conv2d_readvariableop_resource: E
6sequential_7_conv2d_19_biasadd_readvariableop_resource:	K
7sequential_7_dense_14_tensordot_readvariableop_resource:
ศD
5sequential_7_dense_14_biasadd_readvariableop_resource:	ศJ
;sequential_7_batch_normalization_11_readvariableop_resource:	ศL
=sequential_7_batch_normalization_11_readvariableop_1_resource:	ศ[
Lsequential_7_batch_normalization_11_fusedbatchnormv3_readvariableop_resource:	ศ]
Nsequential_7_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:	ศG
4sequential_7_dense_15_matmul_readvariableop_resource:	
C
5sequential_7_dense_15_biasadd_readvariableop_resource:

identityขCsequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOpขEsequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ข2sequential_7/batch_normalization_10/ReadVariableOpข4sequential_7/batch_normalization_10/ReadVariableOp_1ขCsequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOpขEsequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ข2sequential_7/batch_normalization_11/ReadVariableOpข4sequential_7/batch_normalization_11/ReadVariableOp_1ข-sequential_7/conv2d_18/BiasAdd/ReadVariableOpข,sequential_7/conv2d_18/Conv2D/ReadVariableOpข-sequential_7/conv2d_19/BiasAdd/ReadVariableOpข,sequential_7/conv2d_19/Conv2D/ReadVariableOpข,sequential_7/dense_14/BiasAdd/ReadVariableOpข.sequential_7/dense_14/Tensordot/ReadVariableOpข,sequential_7/dense_15/BiasAdd/ReadVariableOpข+sequential_7/dense_15/MatMul/ReadVariableOpช
,sequential_7/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ะ
sequential_7/conv2d_18/Conv2DConv2Dconv2d_18_input4sequential_7/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
-sequential_7/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ย
sequential_7/conv2d_18/BiasAddBiasAdd&sequential_7/conv2d_18/Conv2D:output:05sequential_7/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   ช
2sequential_7/batch_normalization_10/ReadVariableOpReadVariableOp;sequential_7_batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype0ฎ
4sequential_7/batch_normalization_10/ReadVariableOp_1ReadVariableOp=sequential_7_batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype0ฬ
Csequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_7_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ะ
Esequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_7_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0
4sequential_7/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3'sequential_7/conv2d_18/BiasAdd:output:0:sequential_7/batch_normalization_10/ReadVariableOp:value:0<sequential_7/batch_normalization_10/ReadVariableOp_1:value:0Ksequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Msequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o:*
is_training( ึ
%sequential_7/max_pooling2d_17/MaxPoolMaxPool8sequential_7/batch_normalization_10/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides

 sequential_7/dropout_25/IdentityIdentity.sequential_7/max_pooling2d_17/MaxPool:output:0*
T0*/
_output_shapes
:????????? ซ
,sequential_7/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype0๋
sequential_7/conv2d_19/Conv2DConv2D)sequential_7/dropout_25/Identity:output:04sequential_7/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
ก
-sequential_7/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ร
sequential_7/conv2d_19/BiasAddBiasAdd&sequential_7/conv2d_19/Conv2D:output:05sequential_7/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ว
%sequential_7/max_pooling2d_18/MaxPoolMaxPool'sequential_7/conv2d_19/BiasAdd:output:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

 sequential_7/dropout_26/IdentityIdentity.sequential_7/max_pooling2d_18/MaxPool:output:0*
T0*0
_output_shapes
:?????????จ
.sequential_7/dense_14/Tensordot/ReadVariableOpReadVariableOp7sequential_7_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
ศ*
dtype0n
$sequential_7/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
$sequential_7/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
%sequential_7/dense_14/Tensordot/ShapeShape)sequential_7/dropout_26/Identity:output:0*
T0*
_output_shapes
:o
-sequential_7/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_7/dense_14/Tensordot/GatherV2GatherV2.sequential_7/dense_14/Tensordot/Shape:output:0-sequential_7/dense_14/Tensordot/free:output:06sequential_7/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_7/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_7/dense_14/Tensordot/GatherV2_1GatherV2.sequential_7/dense_14/Tensordot/Shape:output:0-sequential_7/dense_14/Tensordot/axes:output:08sequential_7/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_7/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ฐ
$sequential_7/dense_14/Tensordot/ProdProd1sequential_7/dense_14/Tensordot/GatherV2:output:0.sequential_7/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_7/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ถ
&sequential_7/dense_14/Tensordot/Prod_1Prod3sequential_7/dense_14/Tensordot/GatherV2_1:output:00sequential_7/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_7/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ๔
&sequential_7/dense_14/Tensordot/concatConcatV2-sequential_7/dense_14/Tensordot/free:output:0-sequential_7/dense_14/Tensordot/axes:output:04sequential_7/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ป
%sequential_7/dense_14/Tensordot/stackPack-sequential_7/dense_14/Tensordot/Prod:output:0/sequential_7/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:อ
)sequential_7/dense_14/Tensordot/transpose	Transpose)sequential_7/dropout_26/Identity:output:0/sequential_7/dense_14/Tensordot/concat:output:0*
T0*0
_output_shapes
:?????????ฬ
'sequential_7/dense_14/Tensordot/ReshapeReshape-sequential_7/dense_14/Tensordot/transpose:y:0.sequential_7/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????อ
&sequential_7/dense_14/Tensordot/MatMulMatMul0sequential_7/dense_14/Tensordot/Reshape:output:06sequential_7/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????ศr
'sequential_7/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:ศo
-sequential_7/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(sequential_7/dense_14/Tensordot/concat_1ConcatV21sequential_7/dense_14/Tensordot/GatherV2:output:00sequential_7/dense_14/Tensordot/Const_2:output:06sequential_7/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ส
sequential_7/dense_14/TensordotReshape0sequential_7/dense_14/Tensordot/MatMul:product:01sequential_7/dense_14/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:?????????ศ
,sequential_7/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:ศ*
dtype0ร
sequential_7/dense_14/BiasAddBiasAdd(sequential_7/dense_14/Tensordot:output:04sequential_7/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ศฦ
%sequential_7/max_pooling2d_19/MaxPoolMaxPool&sequential_7/dense_14/BiasAdd:output:0*0
_output_shapes
:?????????ศ*
ksize
*
paddingVALID*
strides

 sequential_7/dropout_27/IdentityIdentity.sequential_7/max_pooling2d_19/MaxPool:output:0*
T0*0
_output_shapes
:?????????ศซ
2sequential_7/batch_normalization_11/ReadVariableOpReadVariableOp;sequential_7_batch_normalization_11_readvariableop_resource*
_output_shapes	
:ศ*
dtype0ฏ
4sequential_7/batch_normalization_11/ReadVariableOp_1ReadVariableOp=sequential_7_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0อ
Csequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_7_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ศ*
dtype0ั
Esequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_7_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0
4sequential_7/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3)sequential_7/dropout_27/Identity:output:0:sequential_7/batch_normalization_11/ReadVariableOp:value:0<sequential_7/batch_normalization_11/ReadVariableOp_1:value:0Ksequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Msequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????ศ:ศ:ศ:ศ:ศ:*
epsilon%o:*
is_training( m
sequential_7/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ฝ
sequential_7/flatten_7/ReshapeReshape8sequential_7/batch_normalization_11/FusedBatchNormV3:y:0%sequential_7/flatten_7/Const:output:0*
T0*(
_output_shapes
:?????????ก
+sequential_7/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_15_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0ถ
sequential_7/dense_15/MatMulMatMul'sequential_7/flatten_7/Reshape:output:03sequential_7/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????

,sequential_7/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_15_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ธ
sequential_7/dense_15/BiasAddBiasAdd&sequential_7/dense_15/MatMul:product:04sequential_7/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????

sequential_7/dense_15/SoftmaxSoftmax&sequential_7/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
v
IdentityIdentity'sequential_7/dense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
ต
NoOpNoOpD^sequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOpF^sequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_13^sequential_7/batch_normalization_10/ReadVariableOp5^sequential_7/batch_normalization_10/ReadVariableOp_1D^sequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOpF^sequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_13^sequential_7/batch_normalization_11/ReadVariableOp5^sequential_7/batch_normalization_11/ReadVariableOp_1.^sequential_7/conv2d_18/BiasAdd/ReadVariableOp-^sequential_7/conv2d_18/Conv2D/ReadVariableOp.^sequential_7/conv2d_19/BiasAdd/ReadVariableOp-^sequential_7/conv2d_19/Conv2D/ReadVariableOp-^sequential_7/dense_14/BiasAdd/ReadVariableOp/^sequential_7/dense_14/Tensordot/ReadVariableOp-^sequential_7/dense_15/BiasAdd/ReadVariableOp,^sequential_7/dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 2
Csequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOpCsequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2
Esequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Esequential_7/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12h
2sequential_7/batch_normalization_10/ReadVariableOp2sequential_7/batch_normalization_10/ReadVariableOp2l
4sequential_7/batch_normalization_10/ReadVariableOp_14sequential_7/batch_normalization_10/ReadVariableOp_12
Csequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOpCsequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2
Esequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Esequential_7/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12h
2sequential_7/batch_normalization_11/ReadVariableOp2sequential_7/batch_normalization_11/ReadVariableOp2l
4sequential_7/batch_normalization_11/ReadVariableOp_14sequential_7/batch_normalization_11/ReadVariableOp_12^
-sequential_7/conv2d_18/BiasAdd/ReadVariableOp-sequential_7/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_18/Conv2D/ReadVariableOp,sequential_7/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_19/BiasAdd/ReadVariableOp-sequential_7/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_19/Conv2D/ReadVariableOp,sequential_7/conv2d_19/Conv2D/ReadVariableOp2\
,sequential_7/dense_14/BiasAdd/ReadVariableOp,sequential_7/dense_14/BiasAdd/ReadVariableOp2`
.sequential_7/dense_14/Tensordot/ReadVariableOp.sequential_7/dense_14/Tensordot/ReadVariableOp2\
,sequential_7/dense_15/BiasAdd/ReadVariableOp,sequential_7/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_15/MatMul/ReadVariableOp+sequential_7/dense_15/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_18_input
บ
ฃ
-__inference_sequential_7_layer_call_fn_476413

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: 
	unknown_6:	
	unknown_7:
ศ
	unknown_8:	ศ
	unknown_9:	ศ

unknown_10:	ศ

unknown_11:	ศ

unknown_12:	ศ

unknown_13:	


unknown_14:

identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_475923o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs

d
+__inference_dropout_25_layer_call_fn_476742

inputs
identityขStatefulPartitionedCallษ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_476060w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ค

๖
D__inference_dense_15_layer_call_and_return_conditional_losses_476984

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identityขBiasAdd/ReadVariableOpขMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
	
ึ
7__inference_batch_normalization_11_layer_call_fn_476917

inputs
unknown:	ศ
	unknown_0:	ศ
	unknown_1:	ศ
	unknown_2:	ศ
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475769
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ศ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????ศ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????ศ
 
_user_specified_nameinputs
ฬe
๎
__inference__traced_save_477154
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop
savev2_const

identity_1ขMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*ย
valueธBต2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHั
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop>savev2_adam_batch_normalization_10_gamma_m_read_readvariableop=savev2_adam_batch_normalization_10_beta_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop>savev2_adam_batch_normalization_11_gamma_m_read_readvariableop=savev2_adam_batch_normalization_11_beta_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop>savev2_adam_batch_normalization_10_gamma_v_read_readvariableop=savev2_adam_batch_normalization_10_beta_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop>savev2_adam_batch_normalization_11_gamma_v_read_readvariableop=savev2_adam_batch_normalization_11_beta_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: : : : : : : : ::
ศ:ศ:ศ:ศ:ศ:ศ:	
:
: : : : : : : : : : : : : : ::
ศ:ศ:ศ:ศ:	
:
: : : : : ::
ศ:ศ:ศ:ศ:	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :-)
'
_output_shapes
: :!

_output_shapes	
::&	"
 
_output_shapes
:
ศ:!


_output_shapes	
:ศ:!

_output_shapes	
:ศ:!

_output_shapes	
:ศ:!

_output_shapes	
:ศ:!

_output_shapes	
:ศ:%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :-)
'
_output_shapes
: :!

_output_shapes	
::& "
 
_output_shapes
:
ศ:!!

_output_shapes	
:ศ:!"

_output_shapes	
:ศ:!#

_output_shapes	
:ศ:%$!

_output_shapes
:	
: %

_output_shapes
:
:,&(
&
_output_shapes
: : '

_output_shapes
: : (

_output_shapes
: : )

_output_shapes
: :-*)
'
_output_shapes
: :!+

_output_shapes	
::&,"
 
_output_shapes
:
ศ:!-

_output_shapes	
:ศ:!.

_output_shapes	
:ศ:!/

_output_shapes	
:ศ:%0!

_output_shapes
:	
: 1

_output_shapes
:
:2

_output_shapes
: 
ผ

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_476891

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????ศC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????ศ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ฏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????ศx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????ศr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????ศb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????ศ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs
ล
G
+__inference_dropout_27_layer_call_fn_476869

inputs
identityบ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_475886i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????ศ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs
๒e
ฏ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476535

inputsB
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: <
.batch_normalization_10_readvariableop_resource: >
0batch_normalization_10_readvariableop_1_resource: M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource: C
(conv2d_19_conv2d_readvariableop_resource: 8
)conv2d_19_biasadd_readvariableop_resource:	>
*dense_14_tensordot_readvariableop_resource:
ศ7
(dense_14_biasadd_readvariableop_resource:	ศ=
.batch_normalization_11_readvariableop_resource:	ศ?
0batch_normalization_11_readvariableop_1_resource:	ศN
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:	ศP
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:	ศ:
'dense_15_matmul_readvariableop_resource:	
6
(dense_15_biasadd_readvariableop_resource:

identityข6batch_normalization_10/FusedBatchNormV3/ReadVariableOpข8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ข%batch_normalization_10/ReadVariableOpข'batch_normalization_10/ReadVariableOp_1ข6batch_normalization_11/FusedBatchNormV3/ReadVariableOpข8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ข%batch_normalization_11/ReadVariableOpข'batch_normalization_11/ReadVariableOp_1ข conv2d_18/BiasAdd/ReadVariableOpขconv2d_18/Conv2D/ReadVariableOpข conv2d_19/BiasAdd/ReadVariableOpขconv2d_19/Conv2D/ReadVariableOpขdense_14/BiasAdd/ReadVariableOpข!dense_14/Tensordot/ReadVariableOpขdense_15/BiasAdd/ReadVariableOpขdense_15/MatMul/ReadVariableOp
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ญ
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype0ฒ
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ถ
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ฝ
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3conv2d_18/BiasAdd:output:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o:*
is_training( ผ
max_pooling2d_17/MaxPoolMaxPool+batch_normalization_10/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
|
dropout_25/IdentityIdentity!max_pooling2d_17/MaxPool:output:0*
T0*/
_output_shapes
:????????? 
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype0ฤ
conv2d_19/Conv2DConv2Ddropout_25/Identity:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ญ
max_pooling2d_18/MaxPoolMaxPoolconv2d_19/BiasAdd:output:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
}
dropout_26/IdentityIdentity!max_pooling2d_18/MaxPool:output:0*
T0*0
_output_shapes
:?????????
!dense_14/Tensordot/ReadVariableOpReadVariableOp*dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
ศ*
dtype0a
dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          d
dense_14/Tensordot/ShapeShapedropout_26/Identity:output:0*
T0*
_output_shapes
:b
 dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ฿
dense_14/Tensordot/GatherV2GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/free:output:0)dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ใ
dense_14/Tensordot/GatherV2_1GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/axes:output:0+dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_14/Tensordot/ProdProd$dense_14/Tensordot/GatherV2:output:0!dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_14/Tensordot/Prod_1Prod&dense_14/Tensordot/GatherV2_1:output:0#dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ภ
dense_14/Tensordot/concatConcatV2 dense_14/Tensordot/free:output:0 dense_14/Tensordot/axes:output:0'dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_14/Tensordot/stackPack dense_14/Tensordot/Prod:output:0"dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ฆ
dense_14/Tensordot/transpose	Transposedropout_26/Identity:output:0"dense_14/Tensordot/concat:output:0*
T0*0
_output_shapes
:?????????ฅ
dense_14/Tensordot/ReshapeReshape dense_14/Tensordot/transpose:y:0!dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????ฆ
dense_14/Tensordot/MatMulMatMul#dense_14/Tensordot/Reshape:output:0)dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????ศe
dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:ศb
 dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ห
dense_14/Tensordot/concat_1ConcatV2$dense_14/Tensordot/GatherV2:output:0#dense_14/Tensordot/Const_2:output:0)dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ฃ
dense_14/TensordotReshape#dense_14/Tensordot/MatMul:product:0$dense_14/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:?????????ศ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
dense_14/BiasAddBiasAdddense_14/Tensordot:output:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ศฌ
max_pooling2d_19/MaxPoolMaxPooldense_14/BiasAdd:output:0*0
_output_shapes
:?????????ศ*
ksize
*
paddingVALID*
strides
}
dropout_27/IdentityIdentity!max_pooling2d_19/MaxPool:output:0*
T0*0
_output_shapes
:?????????ศ
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0ณ
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ศ*
dtype0ท
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0ฤ
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3dropout_27/Identity:output:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????ศ:ศ:ศ:ศ:ศ:*
epsilon%o:*
is_training( `
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  
flatten_7/ReshapeReshape+batch_normalization_11/FusedBatchNormV3:y:0flatten_7/Const:output:0*
T0*(
_output_shapes
:?????????
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_15/MatMulMatMulflatten_7/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????

dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
h
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
i
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
ๅ
NoOpNoOp7^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_1!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp"^dense_14/Tensordot/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2F
!dense_14/Tensordot/ReadVariableOp!dense_14/Tensordot/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
ก
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475738

inputs&
readvariableop_resource:	ศ(
readvariableop_1_resource:	ศ7
(fusedbatchnormv3_readvariableop_resource:	ศ9
*fusedbatchnormv3_readvariableop_1_resource:	ศ
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ศ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ศ*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0อ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????ศ:ศ:ศ:ศ:ศ:*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ศฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????ศ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????ศ
 
_user_specified_nameinputs
?
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_476803

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ผ

e
F__inference_dropout_26_layer_call_and_return_conditional_losses_476027

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ฏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ม
G
+__inference_dropout_25_layer_call_fn_476737

inputs
identityน
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_475818h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
อ

R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476704

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
๖
?
D__inference_dense_14_layer_call_and_return_conditional_losses_475874

inputs5
!tensordot_readvariableop_resource:
ศ.
biasadd_readvariableop_resource:	ศ
identityขBiasAdd/ReadVariableOpขTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
ศ*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ป
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ฟ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:?????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????ศ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:ศY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ง
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*0
_output_shapes
:?????????ศs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ศh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????ศz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_475701

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
๐
ก
*__inference_conv2d_19_layer_call_fn_476768

inputs"
unknown: 
	unknown_0:	
identityขStatefulPartitionedCallใ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_475830x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ผ

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_475994

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????ศC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????ศ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ฏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????ศx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????ศr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????ศb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????ศ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs

ม
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476722

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ึ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
exponential_avg_factor%
ื#<ฦ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ะ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ฏ


E__inference_conv2d_19_layer_call_and_return_conditional_losses_475830

inputs9
conv2d_readvariableop_resource: .
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
	
ึ
7__inference_batch_normalization_11_layer_call_fn_476904

inputs
unknown:	ศ
	unknown_0:	ศ
	unknown_1:	ศ
	unknown_2:	ศ
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????ศ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475738
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ศ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????ศ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????ศ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_476864

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ล
G
+__inference_dropout_26_layer_call_fn_476793

inputs
identityบ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_475842i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ณ
F
*__inference_flatten_7_layer_call_fn_476958

inputs
identityฑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_475903a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs

ล
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476953

inputs&
readvariableop_resource:	ศ(
readvariableop_1_resource:	ศ7
(fusedbatchnormv3_readvariableop_resource:	ศ9
*fusedbatchnormv3_readvariableop_1_resource:	ศ
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ศ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ศ*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????ศ:ศ:ศ:ศ:ศ:*
epsilon%o:*
exponential_avg_factor%
ื#<ฦ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ะ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ศิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????ศ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????ศ
 
_user_specified_nameinputs
:
๎
H__inference_sequential_7_layer_call_and_return_conditional_losses_476282
conv2d_18_input*
conv2d_18_476236: 
conv2d_18_476238: +
batch_normalization_10_476241: +
batch_normalization_10_476243: +
batch_normalization_10_476245: +
batch_normalization_10_476247: +
conv2d_19_476252: 
conv2d_19_476254:	#
dense_14_476259:
ศ
dense_14_476261:	ศ,
batch_normalization_11_476266:	ศ,
batch_normalization_11_476268:	ศ,
batch_normalization_11_476270:	ศ,
batch_normalization_11_476272:	ศ"
dense_15_476276:	

dense_15_476278:

identityข.batch_normalization_10/StatefulPartitionedCallข.batch_normalization_11/StatefulPartitionedCallข!conv2d_18/StatefulPartitionedCallข!conv2d_19/StatefulPartitionedCallข dense_14/StatefulPartitionedCallข dense_15/StatefulPartitionedCall
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_476236conv2d_18_476238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_475797
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_10_476241batch_normalization_10_476243batch_normalization_10_476245batch_normalization_10_476247*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475638
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_475689็
dropout_25/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_475818
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0conv2d_19_476252conv2d_19_476254*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_475830๕
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_475701่
dropout_26/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_475842
 dense_14/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0dense_14_476259dense_14_476261*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_475874๔
 max_pooling2d_19/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_475713่
dropout_27/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_475886
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0batch_normalization_11_476266batch_normalization_11_476268batch_normalization_11_476270batch_normalization_11_476272*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475738์
flatten_7/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_475903
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_476276dense_15_476278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_475916x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
ถ
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_18_input
?9
ๅ
H__inference_sequential_7_layer_call_and_return_conditional_losses_475923

inputs*
conv2d_18_475798: 
conv2d_18_475800: +
batch_normalization_10_475803: +
batch_normalization_10_475805: +
batch_normalization_10_475807: +
batch_normalization_10_475809: +
conv2d_19_475831: 
conv2d_19_475833:	#
dense_14_475875:
ศ
dense_14_475877:	ศ,
batch_normalization_11_475888:	ศ,
batch_normalization_11_475890:	ศ,
batch_normalization_11_475892:	ศ,
batch_normalization_11_475894:	ศ"
dense_15_475917:	

dense_15_475919:

identityข.batch_normalization_10/StatefulPartitionedCallข.batch_normalization_11/StatefulPartitionedCallข!conv2d_18/StatefulPartitionedCallข!conv2d_19/StatefulPartitionedCallข dense_14/StatefulPartitionedCallข dense_15/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_475798conv2d_18_475800*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_475797
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_10_475803batch_normalization_10_475805batch_normalization_10_475807batch_normalization_10_475809*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475638
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_475689็
dropout_25/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_475818
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0conv2d_19_475831conv2d_19_475833*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_475830๕
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_475701่
dropout_26/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_475842
 dense_14/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0dense_14_475875dense_14_475877*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_475874๔
 max_pooling2d_19/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_475713่
dropout_27/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_475886
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0batch_normalization_11_475888batch_normalization_11_475890batch_normalization_11_475892batch_normalization_11_475894*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475738์
flatten_7/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_475903
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_475917dense_15_475919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_475916x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
ถ
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
จ

?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_476660

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
ไ>
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_476331
conv2d_18_input*
conv2d_18_476285: 
conv2d_18_476287: +
batch_normalization_10_476290: +
batch_normalization_10_476292: +
batch_normalization_10_476294: +
batch_normalization_10_476296: +
conv2d_19_476301: 
conv2d_19_476303:	#
dense_14_476308:
ศ
dense_14_476310:	ศ,
batch_normalization_11_476315:	ศ,
batch_normalization_11_476317:	ศ,
batch_normalization_11_476319:	ศ,
batch_normalization_11_476321:	ศ"
dense_15_476325:	

dense_15_476327:

identityข.batch_normalization_10/StatefulPartitionedCallข.batch_normalization_11/StatefulPartitionedCallข!conv2d_18/StatefulPartitionedCallข!conv2d_19/StatefulPartitionedCallข dense_14/StatefulPartitionedCallข dense_15/StatefulPartitionedCallข"dropout_25/StatefulPartitionedCallข"dropout_26/StatefulPartitionedCallข"dropout_27/StatefulPartitionedCall
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_476285conv2d_18_476287*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_475797
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_10_476290batch_normalization_10_476292batch_normalization_10_476294batch_normalization_10_476296*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475669
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_475689๗
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_476060ข
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0conv2d_19_476301conv2d_19_476303*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_475830๕
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_475701
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_476027
 dense_14/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0dense_14_476308dense_14_476310*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_475874๔
 max_pooling2d_19/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_475713
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_475994
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0batch_normalization_11_476315batch_normalization_11_476317batch_normalization_11_476319batch_normalization_11_476321*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475769์
flatten_7/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_475903
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_476325dense_15_476327*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_475916x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
ฅ
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_18_input
ถ
ำ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476641

inputsB
(conv2d_18_conv2d_readvariableop_resource: 7
)conv2d_18_biasadd_readvariableop_resource: <
.batch_normalization_10_readvariableop_resource: >
0batch_normalization_10_readvariableop_1_resource: M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource: C
(conv2d_19_conv2d_readvariableop_resource: 8
)conv2d_19_biasadd_readvariableop_resource:	>
*dense_14_tensordot_readvariableop_resource:
ศ7
(dense_14_biasadd_readvariableop_resource:	ศ=
.batch_normalization_11_readvariableop_resource:	ศ?
0batch_normalization_11_readvariableop_1_resource:	ศN
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:	ศP
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:	ศ:
'dense_15_matmul_readvariableop_resource:	
6
(dense_15_biasadd_readvariableop_resource:

identityข%batch_normalization_10/AssignNewValueข'batch_normalization_10/AssignNewValue_1ข6batch_normalization_10/FusedBatchNormV3/ReadVariableOpข8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ข%batch_normalization_10/ReadVariableOpข'batch_normalization_10/ReadVariableOp_1ข%batch_normalization_11/AssignNewValueข'batch_normalization_11/AssignNewValue_1ข6batch_normalization_11/FusedBatchNormV3/ReadVariableOpข8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ข%batch_normalization_11/ReadVariableOpข'batch_normalization_11/ReadVariableOp_1ข conv2d_18/BiasAdd/ReadVariableOpขconv2d_18/Conv2D/ReadVariableOpข conv2d_19/BiasAdd/ReadVariableOpขconv2d_19/Conv2D/ReadVariableOpขdense_14/BiasAdd/ReadVariableOpข!dense_14/Tensordot/ReadVariableOpขdense_15/BiasAdd/ReadVariableOpขdense_15/MatMul/ReadVariableOp
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ญ
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype0ฒ
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ถ
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ห
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3conv2d_18/BiasAdd:output:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o:*
exponential_avg_factor%
ื#<ข
%batch_normalization_10/AssignNewValueAssignVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource4batch_normalization_10/FusedBatchNormV3:batch_mean:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ฌ
'batch_normalization_10/AssignNewValue_1AssignVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_10/FusedBatchNormV3:batch_variance:09^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(ผ
max_pooling2d_17/MaxPoolMaxPool+batch_normalization_10/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
]
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
dropout_25/dropout/MulMul!max_pooling2d_17/MaxPool:output:0!dropout_25/dropout/Const:output:0*
T0*/
_output_shapes
:????????? i
dropout_25/dropout/ShapeShape!max_pooling2d_17/MaxPool:output:0*
T0*
_output_shapes
:ช
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0f
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ฯ
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*'
_output_shapes
: *
dtype0ฤ
conv2d_19/Conv2DConv2Ddropout_25/dropout/Mul_1:z:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ญ
max_pooling2d_18/MaxPoolMaxPoolconv2d_19/BiasAdd:output:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
]
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
dropout_26/dropout/MulMul!max_pooling2d_18/MaxPool:output:0!dropout_26/dropout/Const:output:0*
T0*0
_output_shapes
:?????????i
dropout_26/dropout/ShapeShape!max_pooling2d_18/MaxPool:output:0*
T0*
_output_shapes
:ซ
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0f
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ะ
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????
!dense_14/Tensordot/ReadVariableOpReadVariableOp*dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
ศ*
dtype0a
dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          d
dense_14/Tensordot/ShapeShapedropout_26/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ฿
dense_14/Tensordot/GatherV2GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/free:output:0)dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ใ
dense_14/Tensordot/GatherV2_1GatherV2!dense_14/Tensordot/Shape:output:0 dense_14/Tensordot/axes:output:0+dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_14/Tensordot/ProdProd$dense_14/Tensordot/GatherV2:output:0!dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_14/Tensordot/Prod_1Prod&dense_14/Tensordot/GatherV2_1:output:0#dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ภ
dense_14/Tensordot/concatConcatV2 dense_14/Tensordot/free:output:0 dense_14/Tensordot/axes:output:0'dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_14/Tensordot/stackPack dense_14/Tensordot/Prod:output:0"dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ฆ
dense_14/Tensordot/transpose	Transposedropout_26/dropout/Mul_1:z:0"dense_14/Tensordot/concat:output:0*
T0*0
_output_shapes
:?????????ฅ
dense_14/Tensordot/ReshapeReshape dense_14/Tensordot/transpose:y:0!dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????ฆ
dense_14/Tensordot/MatMulMatMul#dense_14/Tensordot/Reshape:output:0)dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????ศe
dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:ศb
 dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ห
dense_14/Tensordot/concat_1ConcatV2$dense_14/Tensordot/GatherV2:output:0#dense_14/Tensordot/Const_2:output:0)dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ฃ
dense_14/TensordotReshape#dense_14/Tensordot/MatMul:product:0$dense_14/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:?????????ศ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
dense_14/BiasAddBiasAdddense_14/Tensordot:output:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ศฌ
max_pooling2d_19/MaxPoolMaxPooldense_14/BiasAdd:output:0*0
_output_shapes
:?????????ศ*
ksize
*
paddingVALID*
strides
]
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
dropout_27/dropout/MulMul!max_pooling2d_19/MaxPool:output:0!dropout_27/dropout/Const:output:0*
T0*0
_output_shapes
:?????????ศi
dropout_27/dropout/ShapeShape!max_pooling2d_19/MaxPool:output:0*
T0*
_output_shapes
:ซ
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????ศ*
dtype0f
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ะ
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????ศ
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????ศ
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????ศ
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0ณ
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ศ*
dtype0ท
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0า
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3dropout_27/dropout/Mul_1:z:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????ศ:ศ:ศ:ศ:ศ:*
epsilon%o:*
exponential_avg_factor%
ื#<ข
%batch_normalization_11/AssignNewValueAssignVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource4batch_normalization_11/FusedBatchNormV3:batch_mean:07^batch_normalization_11/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ฌ
'batch_normalization_11/AssignNewValue_1AssignVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_11/FusedBatchNormV3:batch_variance:09^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  
flatten_7/ReshapeReshape+batch_normalization_11/FusedBatchNormV3:y:0flatten_7/Const:output:0*
T0*(
_output_shapes
:?????????
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_15/MatMulMatMulflatten_7/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????

dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
h
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
i
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????

NoOpNoOp&^batch_normalization_10/AssignNewValue(^batch_normalization_10/AssignNewValue_17^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_1&^batch_normalization_11/AssignNewValue(^batch_normalization_11/AssignNewValue_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_1!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp"^dense_14/Tensordot/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 2N
%batch_normalization_10/AssignNewValue%batch_normalization_10/AssignNewValue2R
'batch_normalization_10/AssignNewValue_1'batch_normalization_10/AssignNewValue_12p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12N
%batch_normalization_11/AssignNewValue%batch_normalization_11/AssignNewValue2R
'batch_normalization_11/AssignNewValue_1'batch_normalization_11/AssignNewValue_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2F
!dense_14/Tensordot/ReadVariableOp!dense_14/Tensordot/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_475886

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????ศd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????ศ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs

d
+__inference_dropout_26_layer_call_fn_476798

inputs
identityขStatefulPartitionedCallส
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_476027x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ด

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_476060

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ฎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_475713

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
๙
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_475818

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ค

๖
D__inference_dense_15_layer_call_and_return_conditional_losses_475916

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identityขBiasAdd/ReadVariableOpขMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ถ
ฃ
-__inference_sequential_7_layer_call_fn_476450

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: 
	unknown_6:	
	unknown_7:
ศ
	unknown_8:	ศ
	unknown_9:	ศ

unknown_10:	ศ

unknown_11:	ศ

unknown_12:	ศ

unknown_13:	


unknown_14:

identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476161o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
ฏ


E__inference_conv2d_19_layer_call_and_return_conditional_losses_476778

inputs9
conv2d_readvariableop_resource: .
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
์

*__inference_conv2d_18_layer_call_fn_476650

inputs!
unknown: 
	unknown_0: 
identityขStatefulPartitionedCallโ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_475797w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
จ

?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_475797

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
ี
ฌ
-__inference_sequential_7_layer_call_fn_475958
conv2d_18_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: 
	unknown_6:	
	unknown_7:
ศ
	unknown_8:	ศ
	unknown_9:	ศ

unknown_10:	ศ

unknown_11:	ศ

unknown_12:	ศ

unknown_13:	


unknown_14:

identityขStatefulPartitionedCallก
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_475923o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_18_input
นฦ
า
"__inference__traced_restore_477311
file_prefix;
!assignvariableop_conv2d_18_kernel: /
!assignvariableop_1_conv2d_18_bias: =
/assignvariableop_2_batch_normalization_10_gamma: <
.assignvariableop_3_batch_normalization_10_beta: C
5assignvariableop_4_batch_normalization_10_moving_mean: G
9assignvariableop_5_batch_normalization_10_moving_variance: >
#assignvariableop_6_conv2d_19_kernel: 0
!assignvariableop_7_conv2d_19_bias:	6
"assignvariableop_8_dense_14_kernel:
ศ/
 assignvariableop_9_dense_14_bias:	ศ?
0assignvariableop_10_batch_normalization_11_gamma:	ศ>
/assignvariableop_11_batch_normalization_11_beta:	ศE
6assignvariableop_12_batch_normalization_11_moving_mean:	ศI
:assignvariableop_13_batch_normalization_11_moving_variance:	ศ6
#assignvariableop_14_dense_15_kernel:	
/
!assignvariableop_15_dense_15_bias:
'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: E
+assignvariableop_25_adam_conv2d_18_kernel_m: 7
)assignvariableop_26_adam_conv2d_18_bias_m: E
7assignvariableop_27_adam_batch_normalization_10_gamma_m: D
6assignvariableop_28_adam_batch_normalization_10_beta_m: F
+assignvariableop_29_adam_conv2d_19_kernel_m: 8
)assignvariableop_30_adam_conv2d_19_bias_m:	>
*assignvariableop_31_adam_dense_14_kernel_m:
ศ7
(assignvariableop_32_adam_dense_14_bias_m:	ศF
7assignvariableop_33_adam_batch_normalization_11_gamma_m:	ศE
6assignvariableop_34_adam_batch_normalization_11_beta_m:	ศ=
*assignvariableop_35_adam_dense_15_kernel_m:	
6
(assignvariableop_36_adam_dense_15_bias_m:
E
+assignvariableop_37_adam_conv2d_18_kernel_v: 7
)assignvariableop_38_adam_conv2d_18_bias_v: E
7assignvariableop_39_adam_batch_normalization_10_gamma_v: D
6assignvariableop_40_adam_batch_normalization_10_beta_v: F
+assignvariableop_41_adam_conv2d_19_kernel_v: 8
)assignvariableop_42_adam_conv2d_19_bias_v:	>
*assignvariableop_43_adam_dense_14_kernel_v:
ศ7
(assignvariableop_44_adam_dense_14_bias_v:	ศF
7assignvariableop_45_adam_batch_normalization_11_gamma_v:	ศE
6assignvariableop_46_adam_batch_normalization_11_beta_v:	ศ=
*assignvariableop_47_adam_dense_15_kernel_v:	
6
(assignvariableop_48_adam_dense_15_bias_v:

identity_50ขAssignVariableOpขAssignVariableOp_1ขAssignVariableOp_10ขAssignVariableOp_11ขAssignVariableOp_12ขAssignVariableOp_13ขAssignVariableOp_14ขAssignVariableOp_15ขAssignVariableOp_16ขAssignVariableOp_17ขAssignVariableOp_18ขAssignVariableOp_19ขAssignVariableOp_2ขAssignVariableOp_20ขAssignVariableOp_21ขAssignVariableOp_22ขAssignVariableOp_23ขAssignVariableOp_24ขAssignVariableOp_25ขAssignVariableOp_26ขAssignVariableOp_27ขAssignVariableOp_28ขAssignVariableOp_29ขAssignVariableOp_3ขAssignVariableOp_30ขAssignVariableOp_31ขAssignVariableOp_32ขAssignVariableOp_33ขAssignVariableOp_34ขAssignVariableOp_35ขAssignVariableOp_36ขAssignVariableOp_37ขAssignVariableOp_38ขAssignVariableOp_39ขAssignVariableOp_4ขAssignVariableOp_40ขAssignVariableOp_41ขAssignVariableOp_42ขAssignVariableOp_43ขAssignVariableOp_44ขAssignVariableOp_45ขAssignVariableOp_46ขAssignVariableOp_47ขAssignVariableOp_48ขAssignVariableOp_5ขAssignVariableOp_6ขAssignVariableOp_7ขAssignVariableOp_8ขAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*ย
valueธBต2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHิ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesห
ศ::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_10_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_10_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ค
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_10_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:จ
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_10_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_19_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_19_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ก
AssignVariableOp_10AssignVariableOp0assignvariableop_10_batch_normalization_11_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_11_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ง
AssignVariableOp_12AssignVariableOp6assignvariableop_12_batch_normalization_11_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ซ
AssignVariableOp_13AssignVariableOp:assignvariableop_13_batch_normalization_11_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_15_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_15_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_18_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_18_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:จ
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adam_batch_normalization_10_gamma_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ง
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_batch_normalization_10_beta_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_19_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_19_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_14_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_14_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:จ
AssignVariableOp_33AssignVariableOp7assignvariableop_33_adam_batch_normalization_11_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ง
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_batch_normalization_11_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_15_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_15_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_18_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_18_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:จ
AssignVariableOp_39AssignVariableOp7assignvariableop_39_adam_batch_normalization_10_gamma_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:ง
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_batch_normalization_10_beta_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_19_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_19_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_14_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_14_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:จ
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_batch_normalization_11_gamma_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:ง
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_11_beta_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_15_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_15_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: ๒
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
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
้

)__inference_dense_14_layer_call_fn_476824

inputs
unknown:
ศ
	unknown_0:	ศ
identityขStatefulPartitionedCallโ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_475874x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????ศ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ฅ
ฃ
$__inference_signature_wrapper_476376
conv2d_18_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: 
	unknown_6:	
	unknown_7:
ศ
	unknown_8:	ศ
	unknown_9:	ศ

unknown_10:	ศ

unknown_11:	ศ

unknown_12:	ศ

unknown_13:	


unknown_14:

identityขStatefulPartitionedCall๚
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_475616o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_18_input
ษ>
ิ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476161

inputs*
conv2d_18_476115: 
conv2d_18_476117: +
batch_normalization_10_476120: +
batch_normalization_10_476122: +
batch_normalization_10_476124: +
batch_normalization_10_476126: +
conv2d_19_476131: 
conv2d_19_476133:	#
dense_14_476138:
ศ
dense_14_476140:	ศ,
batch_normalization_11_476145:	ศ,
batch_normalization_11_476147:	ศ,
batch_normalization_11_476149:	ศ,
batch_normalization_11_476151:	ศ"
dense_15_476155:	

dense_15_476157:

identityข.batch_normalization_10/StatefulPartitionedCallข.batch_normalization_11/StatefulPartitionedCallข!conv2d_18/StatefulPartitionedCallข!conv2d_19/StatefulPartitionedCallข dense_14/StatefulPartitionedCallข dense_15/StatefulPartitionedCallข"dropout_25/StatefulPartitionedCallข"dropout_26/StatefulPartitionedCallข"dropout_27/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_476115conv2d_18_476117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_475797
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_10_476120batch_normalization_10_476122batch_normalization_10_476124batch_normalization_10_476126*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475669
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_475689๗
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_476060ข
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0conv2d_19_476131conv2d_19_476133*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_475830๕
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_475701
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_476027
 dense_14/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0dense_14_476138dense_14_476140*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_475874๔
 max_pooling2d_19/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_475713
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_475994
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0batch_normalization_11_476145batch_normalization_11_476147batch_normalization_11_476149batch_normalization_11_476151*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475769์
flatten_7/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_7_layer_call_and_return_conditional_losses_475903
 dense_15/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_15_476155dense_15_476157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_475916x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
ฅ
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_476879

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????ศd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????ศ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs
ั
ฌ
-__inference_sequential_7_layer_call_fn_476233
conv2d_18_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: $
	unknown_5: 
	unknown_6:	
	unknown_7:
ศ
	unknown_8:	ศ
	unknown_9:	ศ

unknown_10:	ศ

unknown_11:	ศ

unknown_12:	ศ

unknown_13:	


unknown_14:

identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476161o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????  
)
_user_specified_nameconv2d_18_input

h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_476732

inputs
identityก
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

ล
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_475769

inputs&
readvariableop_resource:	ศ(
readvariableop_1_resource:	ศ7
(fusedbatchnormv3_readvariableop_resource:	ศ9
*fusedbatchnormv3_readvariableop_1_resource:	ศ
identityขAssignNewValueขAssignNewValue_1ขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ศ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ศ*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????ศ:ศ:ศ:ศ:ศ:*
epsilon%o:*
exponential_avg_factor%
ื#<ฦ
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ะ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ศิ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????ศ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????ศ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_476788

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ด

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_476759

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ฎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs

d
+__inference_dropout_27_layer_call_fn_476874

inputs
identityขStatefulPartitionedCallส
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????ศ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_475994x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????ศ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????ศ22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????ศ
 
_user_specified_nameinputs
	
า
7__inference_batch_normalization_10_layer_call_fn_476686

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475669
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
ก
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476935

inputs&
readvariableop_resource:	ศ(
readvariableop_1_resource:	ศ7
(fusedbatchnormv3_readvariableop_resource:	ศ9
*fusedbatchnormv3_readvariableop_1_resource:	ศ
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ศ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ศ*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ศ*
dtype0อ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????ศ:ศ:ศ:ศ:ศ:*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????ศฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????ศ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????ศ
 
_user_specified_nameinputs
ล

)__inference_dense_15_layer_call_fn_476973

inputs
unknown:	

	unknown_0:

identityขStatefulPartitionedCallู
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_475916o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
บ
M
1__inference_max_pooling2d_18_layer_call_fn_476783

inputs
identityฺ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_475701
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
	
า
7__inference_batch_normalization_10_layer_call_fn_476673

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475638
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
อ

R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_475638

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityขFusedBatchNormV3/ReadVariableOpข!FusedBatchNormV3/ReadVariableOp_1ขReadVariableOpขReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ศ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ฐ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
๖
?
D__inference_dense_14_layer_call_and_return_conditional_losses_476854

inputs5
!tensordot_readvariableop_resource:
ศ.
biasadd_readvariableop_resource:	ศ
identityขBiasAdd/ReadVariableOpขTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
ศ*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ป
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ฟ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:?????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????ศ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:ศY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ง
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*0
_output_shapes
:?????????ศs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ศ*
dtype0
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????ศh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????ศz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ผ

e
F__inference_dropout_26_layer_call_and_return_conditional_losses_476815

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬL>ฏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs"ต	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ร
serving_defaultฏ
S
conv2d_18_input@
!serving_default_conv2d_18_input:0?????????  <
dense_150
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:๘ู
ฎ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
๊
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&axis
	'gamma
(beta
)moving_mean
*moving_variance"
_tf_keras_layer
ฅ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
ผ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator"
_tf_keras_layer
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
ฅ
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
ผ
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M_random_generator"
_tf_keras_layer
ป
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias"
_tf_keras_layer
ฅ
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
ผ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b_random_generator"
_tf_keras_layer
๊
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance"
_tf_keras_layer
ฅ
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
ป
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias"
_tf_keras_layer

0
1
'2
(3
)4
*5
>6
?7
T8
U9
j10
k11
l12
m13
z14
{15"
trackable_list_wrapper
v
0
1
'2
(3
>4
?5
T6
U7
j8
k9
z10
{11"
trackable_list_wrapper
 "
trackable_list_wrapper
ห
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
๑
trace_0
trace_1
trace_2
trace_32?
-__inference_sequential_7_layer_call_fn_475958
-__inference_sequential_7_layer_call_fn_476413
-__inference_sequential_7_layer_call_fn_476450
-__inference_sequential_7_layer_call_fn_476233ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0ztrace_1ztrace_2ztrace_3
?
trace_0
trace_1
trace_2
trace_32๊
H__inference_sequential_7_layer_call_and_return_conditional_losses_476535
H__inference_sequential_7_layer_call_and_return_conditional_losses_476641
H__inference_sequential_7_layer_call_and_return_conditional_losses_476282
H__inference_sequential_7_layer_call_and_return_conditional_losses_476331ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0ztrace_1ztrace_2ztrace_3
ิBั
!__inference__wrapped_model_475616conv2d_18_input"
ฒ
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
ศ
	iter
beta_1
beta_2

decay
learning_ratem?m'm(m>m?mTmUmjmkmzm{mvv'v(v>v?vTvUvjvkvzv{v"
	optimizer
-
serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
๐
trace_02ั
*__inference_conv2d_18_layer_call_fn_476650ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0

trace_02์
E__inference_conv2d_18_layer_call_and_return_conditional_losses_476660ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0
*:( 2conv2d_18/kernel
: 2conv2d_18/bias
ด2ฑฎ
ฃฒ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 0
<
'0
(1
)2
*3"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
ใ
trace_0
trace_12จ
7__inference_batch_normalization_10_layer_call_fn_476673
7__inference_batch_normalization_10_layer_call_fn_476686ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0ztrace_1

trace_0
trace_12?
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476704
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476722ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_10/gamma
):' 2batch_normalization_10/beta
2:0  (2"batch_normalization_10/moving_mean
6:4  (2&batch_normalization_10/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
?layers
กmetrics
 ขlayer_regularization_losses
ฃlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
๗
คtrace_02ุ
1__inference_max_pooling2d_17_layer_call_fn_476727ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zคtrace_0

ฅtrace_02๓
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_476732ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zฅtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ฆnon_trainable_variables
งlayers
จmetrics
 ฉlayer_regularization_losses
ชlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
ห
ซtrace_0
ฌtrace_12
+__inference_dropout_25_layer_call_fn_476737
+__inference_dropout_25_layer_call_fn_476742ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zซtrace_0zฌtrace_1

ญtrace_0
ฎtrace_12ฦ
F__inference_dropout_25_layer_call_and_return_conditional_losses_476747
F__inference_dropout_25_layer_call_and_return_conditional_losses_476759ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zญtrace_0zฎtrace_1
"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ฏnon_trainable_variables
ฐlayers
ฑmetrics
 ฒlayer_regularization_losses
ณlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
๐
ดtrace_02ั
*__inference_conv2d_19_layer_call_fn_476768ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zดtrace_0

ตtrace_02์
E__inference_conv2d_19_layer_call_and_return_conditional_losses_476778ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zตtrace_0
+:) 2conv2d_19/kernel
:2conv2d_19/bias
ด2ฑฎ
ฃฒ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ถnon_trainable_variables
ทlayers
ธmetrics
 นlayer_regularization_losses
บlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
๗
ปtrace_02ุ
1__inference_max_pooling2d_18_layer_call_fn_476783ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zปtrace_0

ผtrace_02๓
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_476788ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zผtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ฝnon_trainable_variables
พlayers
ฟmetrics
 ภlayer_regularization_losses
มlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ห
ยtrace_0
รtrace_12
+__inference_dropout_26_layer_call_fn_476793
+__inference_dropout_26_layer_call_fn_476798ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zยtrace_0zรtrace_1

ฤtrace_0
ลtrace_12ฦ
F__inference_dropout_26_layer_call_and_return_conditional_losses_476803
F__inference_dropout_26_layer_call_and_return_conditional_losses_476815ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zฤtrace_0zลtrace_1
"
_generic_user_object
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ฦnon_trainable_variables
วlayers
ศmetrics
 ษlayer_regularization_losses
สlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
๏
หtrace_02ะ
)__inference_dense_14_layer_call_fn_476824ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zหtrace_0

ฬtrace_02๋
D__inference_dense_14_layer_call_and_return_conditional_losses_476854ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zฬtrace_0
#:!
ศ2dense_14/kernel
:ศ2dense_14/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
อnon_trainable_variables
ฮlayers
ฯmetrics
 ะlayer_regularization_losses
ัlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
๗
าtrace_02ุ
1__inference_max_pooling2d_19_layer_call_fn_476859ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zาtrace_0

ำtrace_02๓
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_476864ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zำtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ิnon_trainable_variables
ีlayers
ึmetrics
 ืlayer_regularization_losses
ุlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
ห
ูtrace_0
ฺtrace_12
+__inference_dropout_27_layer_call_fn_476869
+__inference_dropout_27_layer_call_fn_476874ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zูtrace_0zฺtrace_1

?trace_0
?trace_12ฦ
F__inference_dropout_27_layer_call_and_return_conditional_losses_476879
F__inference_dropout_27_layer_call_and_return_conditional_losses_476891ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z?trace_0z?trace_1
"
_generic_user_object
<
j0
k1
l2
m3"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
?non_trainable_variables
?layers
฿metrics
 เlayer_regularization_losses
แlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ใ
โtrace_0
ใtrace_12จ
7__inference_batch_normalization_11_layer_call_fn_476904
7__inference_batch_normalization_11_layer_call_fn_476917ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zโtrace_0zใtrace_1

ไtrace_0
ๅtrace_12?
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476935
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476953ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 zไtrace_0zๅtrace_1
 "
trackable_list_wrapper
+:)ศ2batch_normalization_11/gamma
*:(ศ2batch_normalization_11/beta
3:1ศ (2"batch_normalization_11/moving_mean
7:5ศ (2&batch_normalization_11/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ๆnon_trainable_variables
็layers
่metrics
 ้layer_regularization_losses
๊layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
๐
๋trace_02ั
*__inference_flatten_7_layer_call_fn_476958ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z๋trace_0

์trace_02์
E__inference_flatten_7_layer_call_and_return_conditional_losses_476964ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z์trace_0
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
ํnon_trainable_variables
๎layers
๏metrics
 ๐layer_regularization_losses
๑layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
๏
๒trace_02ะ
)__inference_dense_15_layer_call_fn_476973ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z๒trace_0

๓trace_02๋
D__inference_dense_15_layer_call_and_return_conditional_losses_476984ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 z๓trace_0
": 	
2dense_15/kernel
:
2dense_15/bias
<
)0
*1
l2
m3"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
๔0
๕1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_7_layer_call_fn_475958conv2d_18_input"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
?B๛
-__inference_sequential_7_layer_call_fn_476413inputs"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
?B๛
-__inference_sequential_7_layer_call_fn_476450inputs"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
-__inference_sequential_7_layer_call_fn_476233conv2d_18_input"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
H__inference_sequential_7_layer_call_and_return_conditional_losses_476535inputs"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
H__inference_sequential_7_layer_call_and_return_conditional_losses_476641inputs"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
ขB
H__inference_sequential_7_layer_call_and_return_conditional_losses_476282conv2d_18_input"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
ขB
H__inference_sequential_7_layer_call_and_return_conditional_losses_476331conv2d_18_input"ฟ
ถฒฒ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ำBะ
$__inference_signature_wrapper_476376conv2d_18_input"
ฒ
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
?B?
*__inference_conv2d_18_layer_call_fn_476650inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๙B๖
E__inference_conv2d_18_layer_call_and_return_conditional_losses_476660inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B๙
7__inference_batch_normalization_10_layer_call_fn_476673inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
?B๙
7__inference_batch_normalization_10_layer_call_fn_476686inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476704inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476722inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
ๅBโ
1__inference_max_pooling2d_17_layer_call_fn_476727inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B?
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_476732inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
๐Bํ
+__inference_dropout_25_layer_call_fn_476737inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๐Bํ
+__inference_dropout_25_layer_call_fn_476742inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
F__inference_dropout_25_layer_call_and_return_conditional_losses_476747inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
F__inference_dropout_25_layer_call_and_return_conditional_losses_476759inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
?B?
*__inference_conv2d_19_layer_call_fn_476768inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๙B๖
E__inference_conv2d_19_layer_call_and_return_conditional_losses_476778inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
ๅBโ
1__inference_max_pooling2d_18_layer_call_fn_476783inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B?
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_476788inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
๐Bํ
+__inference_dropout_26_layer_call_fn_476793inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๐Bํ
+__inference_dropout_26_layer_call_fn_476798inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
F__inference_dropout_26_layer_call_and_return_conditional_losses_476803inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
F__inference_dropout_26_layer_call_and_return_conditional_losses_476815inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
?Bฺ
)__inference_dense_14_layer_call_fn_476824inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๘B๕
D__inference_dense_14_layer_call_and_return_conditional_losses_476854inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
ๅBโ
1__inference_max_pooling2d_19_layer_call_fn_476859inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B?
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_476864inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
๐Bํ
+__inference_dropout_27_layer_call_fn_476869inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๐Bํ
+__inference_dropout_27_layer_call_fn_476874inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
F__inference_dropout_27_layer_call_and_return_conditional_losses_476879inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
F__inference_dropout_27_layer_call_and_return_conditional_losses_476891inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B๙
7__inference_batch_normalization_11_layer_call_fn_476904inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
?B๙
7__inference_batch_normalization_11_layer_call_fn_476917inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476935inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
B
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476953inputs"ณ
ชฒฆ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
?B?
*__inference_flatten_7_layer_call_fn_476958inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๙B๖
E__inference_flatten_7_layer_call_and_return_conditional_losses_476964inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
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
?Bฺ
)__inference_dense_15_layer_call_fn_476973inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
๘B๕
D__inference_dense_15_layer_call_and_return_conditional_losses_476984inputs"ข
ฒ
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
R
๖	variables
๗	keras_api

๘total

๙count"
_tf_keras_metric
c
๚	variables
๛	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
0
๘0
๙1"
trackable_list_wrapper
.
๖	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
๚	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:- 2Adam/conv2d_18/kernel/m
!: 2Adam/conv2d_18/bias/m
/:- 2#Adam/batch_normalization_10/gamma/m
.:, 2"Adam/batch_normalization_10/beta/m
0:. 2Adam/conv2d_19/kernel/m
": 2Adam/conv2d_19/bias/m
(:&
ศ2Adam/dense_14/kernel/m
!:ศ2Adam/dense_14/bias/m
0:.ศ2#Adam/batch_normalization_11/gamma/m
/:-ศ2"Adam/batch_normalization_11/beta/m
':%	
2Adam/dense_15/kernel/m
 :
2Adam/dense_15/bias/m
/:- 2Adam/conv2d_18/kernel/v
!: 2Adam/conv2d_18/bias/v
/:- 2#Adam/batch_normalization_10/gamma/v
.:, 2"Adam/batch_normalization_10/beta/v
0:. 2Adam/conv2d_19/kernel/v
": 2Adam/conv2d_19/bias/v
(:&
ศ2Adam/dense_14/kernel/v
!:ศ2Adam/dense_14/bias/v
0:.ศ2#Adam/batch_normalization_11/gamma/v
/:-ศ2"Adam/batch_normalization_11/beta/v
':%	
2Adam/dense_15/kernel/v
 :
2Adam/dense_15/bias/vฏ
!__inference__wrapped_model_475616'()*>?TUjklmz{@ข=
6ข3
1.
conv2d_18_input?????????  
ช "3ช0
.
dense_15"
dense_15?????????
ํ
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476704'()*MขJ
Cข@
:7
inputs+??????????????????????????? 
p 
ช "?ข<
52
0+??????????????????????????? 
 ํ
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_476722'()*MขJ
Cข@
:7
inputs+??????????????????????????? 
p
ช "?ข<
52
0+??????????????????????????? 
 ล
7__inference_batch_normalization_10_layer_call_fn_476673'()*MขJ
Cข@
:7
inputs+??????????????????????????? 
p 
ช "2/+??????????????????????????? ล
7__inference_batch_normalization_10_layer_call_fn_476686'()*MขJ
Cข@
:7
inputs+??????????????????????????? 
p
ช "2/+??????????????????????????? ๏
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476935jklmNขK
DขA
;8
inputs,???????????????????????????ศ
p 
ช "@ข=
63
0,???????????????????????????ศ
 ๏
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_476953jklmNขK
DขA
;8
inputs,???????????????????????????ศ
p
ช "@ข=
63
0,???????????????????????????ศ
 ว
7__inference_batch_normalization_11_layer_call_fn_476904jklmNขK
DขA
;8
inputs,???????????????????????????ศ
p 
ช "30,???????????????????????????ศว
7__inference_batch_normalization_11_layer_call_fn_476917jklmNขK
DขA
;8
inputs,???????????????????????????ศ
p
ช "30,???????????????????????????ศต
E__inference_conv2d_18_layer_call_and_return_conditional_losses_476660l7ข4
-ข*
(%
inputs?????????  
ช "-ข*
# 
0?????????   
 
*__inference_conv2d_18_layer_call_fn_476650_7ข4
-ข*
(%
inputs?????????  
ช " ?????????   ถ
E__inference_conv2d_19_layer_call_and_return_conditional_losses_476778m>?7ข4
-ข*
(%
inputs????????? 
ช ".ข+
$!
0?????????
 
*__inference_conv2d_19_layer_call_fn_476768`>?7ข4
-ข*
(%
inputs????????? 
ช "!?????????ถ
D__inference_dense_14_layer_call_and_return_conditional_losses_476854nTU8ข5
.ข+
)&
inputs?????????
ช ".ข+
$!
0?????????ศ
 
)__inference_dense_14_layer_call_fn_476824aTU8ข5
.ข+
)&
inputs?????????
ช "!?????????ศฅ
D__inference_dense_15_layer_call_and_return_conditional_losses_476984]z{0ข-
&ข#
!
inputs?????????
ช "%ข"

0?????????

 }
)__inference_dense_15_layer_call_fn_476973Pz{0ข-
&ข#
!
inputs?????????
ช "?????????
ถ
F__inference_dropout_25_layer_call_and_return_conditional_losses_476747l;ข8
1ข.
(%
inputs????????? 
p 
ช "-ข*
# 
0????????? 
 ถ
F__inference_dropout_25_layer_call_and_return_conditional_losses_476759l;ข8
1ข.
(%
inputs????????? 
p
ช "-ข*
# 
0????????? 
 
+__inference_dropout_25_layer_call_fn_476737_;ข8
1ข.
(%
inputs????????? 
p 
ช " ????????? 
+__inference_dropout_25_layer_call_fn_476742_;ข8
1ข.
(%
inputs????????? 
p
ช " ????????? ธ
F__inference_dropout_26_layer_call_and_return_conditional_losses_476803n<ข9
2ข/
)&
inputs?????????
p 
ช ".ข+
$!
0?????????
 ธ
F__inference_dropout_26_layer_call_and_return_conditional_losses_476815n<ข9
2ข/
)&
inputs?????????
p
ช ".ข+
$!
0?????????
 
+__inference_dropout_26_layer_call_fn_476793a<ข9
2ข/
)&
inputs?????????
p 
ช "!?????????
+__inference_dropout_26_layer_call_fn_476798a<ข9
2ข/
)&
inputs?????????
p
ช "!?????????ธ
F__inference_dropout_27_layer_call_and_return_conditional_losses_476879n<ข9
2ข/
)&
inputs?????????ศ
p 
ช ".ข+
$!
0?????????ศ
 ธ
F__inference_dropout_27_layer_call_and_return_conditional_losses_476891n<ข9
2ข/
)&
inputs?????????ศ
p
ช ".ข+
$!
0?????????ศ
 
+__inference_dropout_27_layer_call_fn_476869a<ข9
2ข/
)&
inputs?????????ศ
p 
ช "!?????????ศ
+__inference_dropout_27_layer_call_fn_476874a<ข9
2ข/
)&
inputs?????????ศ
p
ช "!?????????ศซ
E__inference_flatten_7_layer_call_and_return_conditional_losses_476964b8ข5
.ข+
)&
inputs?????????ศ
ช "&ข#

0?????????
 
*__inference_flatten_7_layer_call_fn_476958U8ข5
.ข+
)&
inputs?????????ศ
ช "?????????๏
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_476732RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ว
1__inference_max_pooling2d_17_layer_call_fn_476727RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????๏
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_476788RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ว
1__inference_max_pooling2d_18_layer_call_fn_476783RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????๏
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_476864RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ว
1__inference_max_pooling2d_19_layer_call_fn_476859RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????ะ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476282'()*>?TUjklmz{HขE
>ข;
1.
conv2d_18_input?????????  
p 

 
ช "%ข"

0?????????

 ะ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476331'()*>?TUjklmz{HขE
>ข;
1.
conv2d_18_input?????????  
p

 
ช "%ข"

0?????????

 ฦ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476535z'()*>?TUjklmz{?ข<
5ข2
(%
inputs?????????  
p 

 
ช "%ข"

0?????????

 ฦ
H__inference_sequential_7_layer_call_and_return_conditional_losses_476641z'()*>?TUjklmz{?ข<
5ข2
(%
inputs?????????  
p

 
ช "%ข"

0?????????

 ง
-__inference_sequential_7_layer_call_fn_475958v'()*>?TUjklmz{HขE
>ข;
1.
conv2d_18_input?????????  
p 

 
ช "?????????
ง
-__inference_sequential_7_layer_call_fn_476233v'()*>?TUjklmz{HขE
>ข;
1.
conv2d_18_input?????????  
p

 
ช "?????????

-__inference_sequential_7_layer_call_fn_476413m'()*>?TUjklmz{?ข<
5ข2
(%
inputs?????????  
p 

 
ช "?????????

-__inference_sequential_7_layer_call_fn_476450m'()*>?TUjklmz{?ข<
5ข2
(%
inputs?????????  
p

 
ช "?????????
ล
$__inference_signature_wrapper_476376'()*>?TUjklmz{SขP
ข 
IชF
D
conv2d_18_input1.
conv2d_18_input?????????  "3ช0
.
dense_15"
dense_15?????????

��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
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
-
Sqrt
x"T
y"T"
Ttype:

2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.16.12v2.16.0-rc0-18-g5bc9d26649c8��
j
ConstConst*&
_output_shapes
:b2*
dtype0*%
valueBb2*���
l
Const_1Const*&
_output_shapes
:b2*
dtype0*%
valueBb2*  �?
�
batchnorm_4_/moving_meanVarHandleOp*
_output_shapes
: *)

debug_namebatchnorm_4_/moving_mean/*
dtype0*
shape:0*)
shared_namebatchnorm_4_/moving_mean
�
,batchnorm_4_/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_4_/moving_mean*
_output_shapes
:0*
dtype0
�
batchnorm_1_/moving_varianceVarHandleOp*
_output_shapes
: *-

debug_namebatchnorm_1_/moving_variance/*
dtype0*
shape:*-
shared_namebatchnorm_1_/moving_variance
�
0batchnorm_1_/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_1_/moving_variance*
_output_shapes
:*
dtype0
�
batchnorm_1_/moving_meanVarHandleOp*
_output_shapes
: *)

debug_namebatchnorm_1_/moving_mean/*
dtype0*
shape:*)
shared_namebatchnorm_1_/moving_mean
�
,batchnorm_1_/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_1_/moving_mean*
_output_shapes
:*
dtype0
�
batchnorm_5_/moving_varianceVarHandleOp*
_output_shapes
: *-

debug_namebatchnorm_5_/moving_variance/*
dtype0*
shape:0*-
shared_namebatchnorm_5_/moving_variance
�
0batchnorm_5_/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_5_/moving_variance*
_output_shapes
:0*
dtype0
�
batchnorm_5_/moving_meanVarHandleOp*
_output_shapes
: *)

debug_namebatchnorm_5_/moving_mean/*
dtype0*
shape:0*)
shared_namebatchnorm_5_/moving_mean
�
,batchnorm_5_/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_5_/moving_mean*
_output_shapes
:0*
dtype0
�
batchnorm_3_/moving_varianceVarHandleOp*
_output_shapes
: *-

debug_namebatchnorm_3_/moving_variance/*
dtype0*
shape:0*-
shared_namebatchnorm_3_/moving_variance
�
0batchnorm_3_/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_3_/moving_variance*
_output_shapes
:0*
dtype0
�
batchnorm_2_/moving_meanVarHandleOp*
_output_shapes
: *)

debug_namebatchnorm_2_/moving_mean/*
dtype0*
shape:*)
shared_namebatchnorm_2_/moving_mean
�
,batchnorm_2_/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_2_/moving_mean*
_output_shapes
:*
dtype0
�
batchnorm_3_/moving_meanVarHandleOp*
_output_shapes
: *)

debug_namebatchnorm_3_/moving_mean/*
dtype0*
shape:0*)
shared_namebatchnorm_3_/moving_mean
�
,batchnorm_3_/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_3_/moving_mean*
_output_shapes
:0*
dtype0
�
batchnorm_4_/moving_varianceVarHandleOp*
_output_shapes
: *-

debug_namebatchnorm_4_/moving_variance/*
dtype0*
shape:0*-
shared_namebatchnorm_4_/moving_variance
�
0batchnorm_4_/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_4_/moving_variance*
_output_shapes
:0*
dtype0
�
batchnorm_2_/moving_varianceVarHandleOp*
_output_shapes
: *-

debug_namebatchnorm_2_/moving_variance/*
dtype0*
shape:*-
shared_namebatchnorm_2_/moving_variance
�
0batchnorm_2_/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_2_/moving_variance*
_output_shapes
:*
dtype0
�
conv_1_/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_1_/kernel/*
dtype0*
shape:*
shared_nameconv_1_/kernel
y
"conv_1_/kernel/Read/ReadVariableOpReadVariableOpconv_1_/kernel*&
_output_shapes
:*
dtype0
�
conv_5_/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_5_/kernel/*
dtype0*
shape:00*
shared_nameconv_5_/kernel
y
"conv_5_/kernel/Read/ReadVariableOpReadVariableOpconv_5_/kernel*&
_output_shapes
:00*
dtype0
�
batchnorm_4_/gammaVarHandleOp*
_output_shapes
: *#

debug_namebatchnorm_4_/gamma/*
dtype0*
shape:0*#
shared_namebatchnorm_4_/gamma
u
&batchnorm_4_/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_4_/gamma*
_output_shapes
:0*
dtype0
�
conv_2_/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_2_/kernel/*
dtype0*
shape:*
shared_nameconv_2_/kernel
y
"conv_2_/kernel/Read/ReadVariableOpReadVariableOpconv_2_/kernel*&
_output_shapes
:*
dtype0
�
batchnorm_1_/betaVarHandleOp*
_output_shapes
: *"

debug_namebatchnorm_1_/beta/*
dtype0*
shape:*"
shared_namebatchnorm_1_/beta
s
%batchnorm_1_/beta/Read/ReadVariableOpReadVariableOpbatchnorm_1_/beta*
_output_shapes
:*
dtype0
�
batchnorm_1_/gammaVarHandleOp*
_output_shapes
: *#

debug_namebatchnorm_1_/gamma/*
dtype0*
shape:*#
shared_namebatchnorm_1_/gamma
u
&batchnorm_1_/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_1_/gamma*
_output_shapes
:*
dtype0
�
conv_5_/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_5_/bias/*
dtype0*
shape:0*
shared_nameconv_5_/bias
i
 conv_5_/bias/Read/ReadVariableOpReadVariableOpconv_5_/bias*
_output_shapes
:0*
dtype0
�
conv_2_/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_2_/bias/*
dtype0*
shape:*
shared_nameconv_2_/bias
i
 conv_2_/bias/Read/ReadVariableOpReadVariableOpconv_2_/bias*
_output_shapes
:*
dtype0
�
batchnorm_5_/betaVarHandleOp*
_output_shapes
: *"

debug_namebatchnorm_5_/beta/*
dtype0*
shape:0*"
shared_namebatchnorm_5_/beta
s
%batchnorm_5_/beta/Read/ReadVariableOpReadVariableOpbatchnorm_5_/beta*
_output_shapes
:0*
dtype0
�
batchnorm_2_/betaVarHandleOp*
_output_shapes
: *"

debug_namebatchnorm_2_/beta/*
dtype0*
shape:*"
shared_namebatchnorm_2_/beta
s
%batchnorm_2_/beta/Read/ReadVariableOpReadVariableOpbatchnorm_2_/beta*
_output_shapes
:*
dtype0
�
conv_4_/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_4_/kernel/*
dtype0*
shape:00*
shared_nameconv_4_/kernel
y
"conv_4_/kernel/Read/ReadVariableOpReadVariableOpconv_4_/kernel*&
_output_shapes
:00*
dtype0
�
batchnorm_3_/betaVarHandleOp*
_output_shapes
: *"

debug_namebatchnorm_3_/beta/*
dtype0*
shape:0*"
shared_namebatchnorm_3_/beta
s
%batchnorm_3_/beta/Read/ReadVariableOpReadVariableOpbatchnorm_3_/beta*
_output_shapes
:0*
dtype0
�

fc_/kernelVarHandleOp*
_output_shapes
: *

debug_namefc_/kernel/*
dtype0*
shape:	�*
shared_name
fc_/kernel
j
fc_/kernel/Read/ReadVariableOpReadVariableOp
fc_/kernel*
_output_shapes
:	�*
dtype0
�
conv_4_/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_4_/bias/*
dtype0*
shape:0*
shared_nameconv_4_/bias
i
 conv_4_/bias/Read/ReadVariableOpReadVariableOpconv_4_/bias*
_output_shapes
:0*
dtype0
�
fc_/biasVarHandleOp*
_output_shapes
: *

debug_name	fc_/bias/*
dtype0*
shape:*
shared_name
fc_/bias
a
fc_/bias/Read/ReadVariableOpReadVariableOpfc_/bias*
_output_shapes
:*
dtype0
�
batchnorm_5_/gammaVarHandleOp*
_output_shapes
: *#

debug_namebatchnorm_5_/gamma/*
dtype0*
shape:0*#
shared_namebatchnorm_5_/gamma
u
&batchnorm_5_/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_5_/gamma*
_output_shapes
:0*
dtype0
�
batchnorm_4_/betaVarHandleOp*
_output_shapes
: *"

debug_namebatchnorm_4_/beta/*
dtype0*
shape:0*"
shared_namebatchnorm_4_/beta
s
%batchnorm_4_/beta/Read/ReadVariableOpReadVariableOpbatchnorm_4_/beta*
_output_shapes
:0*
dtype0
�
conv_3_/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_3_/kernel/*
dtype0*
shape:0*
shared_nameconv_3_/kernel
y
"conv_3_/kernel/Read/ReadVariableOpReadVariableOpconv_3_/kernel*&
_output_shapes
:0*
dtype0
�
batchnorm_2_/gammaVarHandleOp*
_output_shapes
: *#

debug_namebatchnorm_2_/gamma/*
dtype0*
shape:*#
shared_namebatchnorm_2_/gamma
u
&batchnorm_2_/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_2_/gamma*
_output_shapes
:*
dtype0
�
conv_1_/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_1_/bias/*
dtype0*
shape:*
shared_nameconv_1_/bias
i
 conv_1_/bias/Read/ReadVariableOpReadVariableOpconv_1_/bias*
_output_shapes
:*
dtype0
�
batchnorm_3_/gammaVarHandleOp*
_output_shapes
: *#

debug_namebatchnorm_3_/gamma/*
dtype0*
shape:0*#
shared_namebatchnorm_3_/gamma
u
&batchnorm_3_/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_3_/gamma*
_output_shapes
:0*
dtype0
�
conv_3_/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_3_/bias/*
dtype0*
shape:0*
shared_nameconv_3_/bias
i
 conv_3_/bias/Read/ReadVariableOpReadVariableOpconv_3_/bias*
_output_shapes
:0*
dtype0
�

fc_/bias_1VarHandleOp*
_output_shapes
: *

debug_namefc_/bias_1/*
dtype0*
shape:*
shared_name
fc_/bias_1
e
fc_/bias_1/Read/ReadVariableOpReadVariableOp
fc_/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOp
fc_/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
fc_/kernel_1VarHandleOp*
_output_shapes
: *

debug_namefc_/kernel_1/*
dtype0*
shape:	�*
shared_namefc_/kernel_1
n
 fc_/kernel_1/Read/ReadVariableOpReadVariableOpfc_/kernel_1*
_output_shapes
:	�*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpfc_/kernel_1*
_class
loc:@Variable_1*
_output_shapes
:	�*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
�
seed_generator_stateVarHandleOp*
_output_shapes
: *%

debug_nameseed_generator_state/*
dtype0*
shape:*%
shared_nameseed_generator_state
y
(seed_generator_state/Read/ReadVariableOpReadVariableOpseed_generator_state*
_output_shapes
:*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpseed_generator_state*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0
�
batchnorm_5_/moving_variance_1VarHandleOp*
_output_shapes
: */

debug_name!batchnorm_5_/moving_variance_1/*
dtype0*
shape:0*/
shared_name batchnorm_5_/moving_variance_1
�
2batchnorm_5_/moving_variance_1/Read/ReadVariableOpReadVariableOpbatchnorm_5_/moving_variance_1*
_output_shapes
:0*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpbatchnorm_5_/moving_variance_1*
_class
loc:@Variable_3*
_output_shapes
:0*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:0*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:0*
dtype0
�
batchnorm_5_/moving_mean_1VarHandleOp*
_output_shapes
: *+

debug_namebatchnorm_5_/moving_mean_1/*
dtype0*
shape:0*+
shared_namebatchnorm_5_/moving_mean_1
�
.batchnorm_5_/moving_mean_1/Read/ReadVariableOpReadVariableOpbatchnorm_5_/moving_mean_1*
_output_shapes
:0*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpbatchnorm_5_/moving_mean_1*
_class
loc:@Variable_4*
_output_shapes
:0*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:0*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:0*
dtype0
�
batchnorm_5_/beta_1VarHandleOp*
_output_shapes
: *$

debug_namebatchnorm_5_/beta_1/*
dtype0*
shape:0*$
shared_namebatchnorm_5_/beta_1
w
'batchnorm_5_/beta_1/Read/ReadVariableOpReadVariableOpbatchnorm_5_/beta_1*
_output_shapes
:0*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpbatchnorm_5_/beta_1*
_class
loc:@Variable_5*
_output_shapes
:0*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:0*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:0*
dtype0
�
batchnorm_5_/gamma_1VarHandleOp*
_output_shapes
: *%

debug_namebatchnorm_5_/gamma_1/*
dtype0*
shape:0*%
shared_namebatchnorm_5_/gamma_1
y
(batchnorm_5_/gamma_1/Read/ReadVariableOpReadVariableOpbatchnorm_5_/gamma_1*
_output_shapes
:0*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpbatchnorm_5_/gamma_1*
_class
loc:@Variable_6*
_output_shapes
:0*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:0*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:0*
dtype0
�
conv_5_/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_5_/bias_1/*
dtype0*
shape:0*
shared_nameconv_5_/bias_1
m
"conv_5_/bias_1/Read/ReadVariableOpReadVariableOpconv_5_/bias_1*
_output_shapes
:0*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpconv_5_/bias_1*
_class
loc:@Variable_7*
_output_shapes
:0*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:0*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:0*
dtype0
�
conv_5_/kernel_1VarHandleOp*
_output_shapes
: *!

debug_nameconv_5_/kernel_1/*
dtype0*
shape:00*!
shared_nameconv_5_/kernel_1
}
$conv_5_/kernel_1/Read/ReadVariableOpReadVariableOpconv_5_/kernel_1*&
_output_shapes
:00*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpconv_5_/kernel_1*
_class
loc:@Variable_8*&
_output_shapes
:00*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:00*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
q
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*&
_output_shapes
:00*
dtype0
�
batchnorm_4_/moving_variance_1VarHandleOp*
_output_shapes
: */

debug_name!batchnorm_4_/moving_variance_1/*
dtype0*
shape:0*/
shared_name batchnorm_4_/moving_variance_1
�
2batchnorm_4_/moving_variance_1/Read/ReadVariableOpReadVariableOpbatchnorm_4_/moving_variance_1*
_output_shapes
:0*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpbatchnorm_4_/moving_variance_1*
_class
loc:@Variable_9*
_output_shapes
:0*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:0*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:0*
dtype0
�
batchnorm_4_/moving_mean_1VarHandleOp*
_output_shapes
: *+

debug_namebatchnorm_4_/moving_mean_1/*
dtype0*
shape:0*+
shared_namebatchnorm_4_/moving_mean_1
�
.batchnorm_4_/moving_mean_1/Read/ReadVariableOpReadVariableOpbatchnorm_4_/moving_mean_1*
_output_shapes
:0*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpbatchnorm_4_/moving_mean_1*
_class
loc:@Variable_10*
_output_shapes
:0*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:0*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
:0*
dtype0
�
batchnorm_4_/beta_1VarHandleOp*
_output_shapes
: *$

debug_namebatchnorm_4_/beta_1/*
dtype0*
shape:0*$
shared_namebatchnorm_4_/beta_1
w
'batchnorm_4_/beta_1/Read/ReadVariableOpReadVariableOpbatchnorm_4_/beta_1*
_output_shapes
:0*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpbatchnorm_4_/beta_1*
_class
loc:@Variable_11*
_output_shapes
:0*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:0*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
g
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
:0*
dtype0
�
batchnorm_4_/gamma_1VarHandleOp*
_output_shapes
: *%

debug_namebatchnorm_4_/gamma_1/*
dtype0*
shape:0*%
shared_namebatchnorm_4_/gamma_1
y
(batchnorm_4_/gamma_1/Read/ReadVariableOpReadVariableOpbatchnorm_4_/gamma_1*
_output_shapes
:0*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOpbatchnorm_4_/gamma_1*
_class
loc:@Variable_12*
_output_shapes
:0*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:0*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:0*
dtype0
�
conv_4_/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_4_/bias_1/*
dtype0*
shape:0*
shared_nameconv_4_/bias_1
m
"conv_4_/bias_1/Read/ReadVariableOpReadVariableOpconv_4_/bias_1*
_output_shapes
:0*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOpconv_4_/bias_1*
_class
loc:@Variable_13*
_output_shapes
:0*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:0*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:0*
dtype0
�
conv_4_/kernel_1VarHandleOp*
_output_shapes
: *!

debug_nameconv_4_/kernel_1/*
dtype0*
shape:00*!
shared_nameconv_4_/kernel_1
}
$conv_4_/kernel_1/Read/ReadVariableOpReadVariableOpconv_4_/kernel_1*&
_output_shapes
:00*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpconv_4_/kernel_1*
_class
loc:@Variable_14*&
_output_shapes
:00*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:00*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
s
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*&
_output_shapes
:00*
dtype0
�
batchnorm_3_/moving_variance_1VarHandleOp*
_output_shapes
: */

debug_name!batchnorm_3_/moving_variance_1/*
dtype0*
shape:0*/
shared_name batchnorm_3_/moving_variance_1
�
2batchnorm_3_/moving_variance_1/Read/ReadVariableOpReadVariableOpbatchnorm_3_/moving_variance_1*
_output_shapes
:0*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpbatchnorm_3_/moving_variance_1*
_class
loc:@Variable_15*
_output_shapes
:0*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape:0*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
g
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
:0*
dtype0
�
batchnorm_3_/moving_mean_1VarHandleOp*
_output_shapes
: *+

debug_namebatchnorm_3_/moving_mean_1/*
dtype0*
shape:0*+
shared_namebatchnorm_3_/moving_mean_1
�
.batchnorm_3_/moving_mean_1/Read/ReadVariableOpReadVariableOpbatchnorm_3_/moving_mean_1*
_output_shapes
:0*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOpbatchnorm_3_/moving_mean_1*
_class
loc:@Variable_16*
_output_shapes
:0*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape:0*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
:0*
dtype0
�
batchnorm_3_/beta_1VarHandleOp*
_output_shapes
: *$

debug_namebatchnorm_3_/beta_1/*
dtype0*
shape:0*$
shared_namebatchnorm_3_/beta_1
w
'batchnorm_3_/beta_1/Read/ReadVariableOpReadVariableOpbatchnorm_3_/beta_1*
_output_shapes
:0*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOpbatchnorm_3_/beta_1*
_class
loc:@Variable_17*
_output_shapes
:0*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape:0*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
g
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
:0*
dtype0
�
batchnorm_3_/gamma_1VarHandleOp*
_output_shapes
: *%

debug_namebatchnorm_3_/gamma_1/*
dtype0*
shape:0*%
shared_namebatchnorm_3_/gamma_1
y
(batchnorm_3_/gamma_1/Read/ReadVariableOpReadVariableOpbatchnorm_3_/gamma_1*
_output_shapes
:0*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOpbatchnorm_3_/gamma_1*
_class
loc:@Variable_18*
_output_shapes
:0*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:0*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
g
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
:0*
dtype0
�
conv_3_/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_3_/bias_1/*
dtype0*
shape:0*
shared_nameconv_3_/bias_1
m
"conv_3_/bias_1/Read/ReadVariableOpReadVariableOpconv_3_/bias_1*
_output_shapes
:0*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOpconv_3_/bias_1*
_class
loc:@Variable_19*
_output_shapes
:0*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:0*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
g
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes
:0*
dtype0
�
conv_3_/kernel_1VarHandleOp*
_output_shapes
: *!

debug_nameconv_3_/kernel_1/*
dtype0*
shape:0*!
shared_nameconv_3_/kernel_1
}
$conv_3_/kernel_1/Read/ReadVariableOpReadVariableOpconv_3_/kernel_1*&
_output_shapes
:0*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOpconv_3_/kernel_1*
_class
loc:@Variable_20*&
_output_shapes
:0*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:0*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
s
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*&
_output_shapes
:0*
dtype0
�
batchnorm_2_/moving_variance_1VarHandleOp*
_output_shapes
: */

debug_name!batchnorm_2_/moving_variance_1/*
dtype0*
shape:*/
shared_name batchnorm_2_/moving_variance_1
�
2batchnorm_2_/moving_variance_1/Read/ReadVariableOpReadVariableOpbatchnorm_2_/moving_variance_1*
_output_shapes
:*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOpbatchnorm_2_/moving_variance_1*
_class
loc:@Variable_21*
_output_shapes
:*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
g
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*
_output_shapes
:*
dtype0
�
batchnorm_2_/moving_mean_1VarHandleOp*
_output_shapes
: *+

debug_namebatchnorm_2_/moving_mean_1/*
dtype0*
shape:*+
shared_namebatchnorm_2_/moving_mean_1
�
.batchnorm_2_/moving_mean_1/Read/ReadVariableOpReadVariableOpbatchnorm_2_/moving_mean_1*
_output_shapes
:*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpbatchnorm_2_/moving_mean_1*
_class
loc:@Variable_22*
_output_shapes
:*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
g
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes
:*
dtype0
�
batchnorm_2_/beta_1VarHandleOp*
_output_shapes
: *$

debug_namebatchnorm_2_/beta_1/*
dtype0*
shape:*$
shared_namebatchnorm_2_/beta_1
w
'batchnorm_2_/beta_1/Read/ReadVariableOpReadVariableOpbatchnorm_2_/beta_1*
_output_shapes
:*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOpbatchnorm_2_/beta_1*
_class
loc:@Variable_23*
_output_shapes
:*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
g
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*
_output_shapes
:*
dtype0
�
batchnorm_2_/gamma_1VarHandleOp*
_output_shapes
: *%

debug_namebatchnorm_2_/gamma_1/*
dtype0*
shape:*%
shared_namebatchnorm_2_/gamma_1
y
(batchnorm_2_/gamma_1/Read/ReadVariableOpReadVariableOpbatchnorm_2_/gamma_1*
_output_shapes
:*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOpbatchnorm_2_/gamma_1*
_class
loc:@Variable_24*
_output_shapes
:*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
g
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes
:*
dtype0
�
conv_2_/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_2_/bias_1/*
dtype0*
shape:*
shared_nameconv_2_/bias_1
m
"conv_2_/bias_1/Read/ReadVariableOpReadVariableOpconv_2_/bias_1*
_output_shapes
:*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOpconv_2_/bias_1*
_class
loc:@Variable_25*
_output_shapes
:*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
g
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes
:*
dtype0
�
conv_2_/kernel_1VarHandleOp*
_output_shapes
: *!

debug_nameconv_2_/kernel_1/*
dtype0*
shape:*!
shared_nameconv_2_/kernel_1
}
$conv_2_/kernel_1/Read/ReadVariableOpReadVariableOpconv_2_/kernel_1*&
_output_shapes
:*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOpconv_2_/kernel_1*
_class
loc:@Variable_26*&
_output_shapes
:*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
s
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*&
_output_shapes
:*
dtype0
�
batchnorm_1_/moving_variance_1VarHandleOp*
_output_shapes
: */

debug_name!batchnorm_1_/moving_variance_1/*
dtype0*
shape:*/
shared_name batchnorm_1_/moving_variance_1
�
2batchnorm_1_/moving_variance_1/Read/ReadVariableOpReadVariableOpbatchnorm_1_/moving_variance_1*
_output_shapes
:*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOpbatchnorm_1_/moving_variance_1*
_class
loc:@Variable_27*
_output_shapes
:*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape:*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
g
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*
_output_shapes
:*
dtype0
�
batchnorm_1_/moving_mean_1VarHandleOp*
_output_shapes
: *+

debug_namebatchnorm_1_/moving_mean_1/*
dtype0*
shape:*+
shared_namebatchnorm_1_/moving_mean_1
�
.batchnorm_1_/moving_mean_1/Read/ReadVariableOpReadVariableOpbatchnorm_1_/moving_mean_1*
_output_shapes
:*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOpbatchnorm_1_/moving_mean_1*
_class
loc:@Variable_28*
_output_shapes
:*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
g
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes
:*
dtype0
�
batchnorm_1_/beta_1VarHandleOp*
_output_shapes
: *$

debug_namebatchnorm_1_/beta_1/*
dtype0*
shape:*$
shared_namebatchnorm_1_/beta_1
w
'batchnorm_1_/beta_1/Read/ReadVariableOpReadVariableOpbatchnorm_1_/beta_1*
_output_shapes
:*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOpbatchnorm_1_/beta_1*
_class
loc:@Variable_29*
_output_shapes
:*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
g
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes
:*
dtype0
�
batchnorm_1_/gamma_1VarHandleOp*
_output_shapes
: *%

debug_namebatchnorm_1_/gamma_1/*
dtype0*
shape:*%
shared_namebatchnorm_1_/gamma_1
y
(batchnorm_1_/gamma_1/Read/ReadVariableOpReadVariableOpbatchnorm_1_/gamma_1*
_output_shapes
:*
dtype0
�
&Variable_30/Initializer/ReadVariableOpReadVariableOpbatchnorm_1_/gamma_1*
_class
loc:@Variable_30*
_output_shapes
:*
dtype0
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0*
shape:*
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0
g
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30*
_output_shapes
:*
dtype0
�
conv_1_/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_1_/bias_1/*
dtype0*
shape:*
shared_nameconv_1_/bias_1
m
"conv_1_/bias_1/Read/ReadVariableOpReadVariableOpconv_1_/bias_1*
_output_shapes
:*
dtype0
�
&Variable_31/Initializer/ReadVariableOpReadVariableOpconv_1_/bias_1*
_class
loc:@Variable_31*
_output_shapes
:*
dtype0
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0*
shape:*
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0
g
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*
_output_shapes
:*
dtype0
�
conv_1_/kernel_1VarHandleOp*
_output_shapes
: *!

debug_nameconv_1_/kernel_1/*
dtype0*
shape:*!
shared_nameconv_1_/kernel_1
}
$conv_1_/kernel_1/Read/ReadVariableOpReadVariableOpconv_1_/kernel_1*&
_output_shapes
:*
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOpconv_1_/kernel_1*
_class
loc:@Variable_32*&
_output_shapes
:*
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape:*
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
s
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*&
_output_shapes
:*
dtype0
�
imageinput_/countVarHandleOp*
_output_shapes
: *"

debug_nameimageinput_/count/*
dtype0	*
shape: *"
shared_nameimageinput_/count
o
%imageinput_/count/Read/ReadVariableOpReadVariableOpimageinput_/count*
_output_shapes
: *
dtype0	
�
&Variable_33/Initializer/ReadVariableOpReadVariableOpimageinput_/count*
_class
loc:@Variable_33*
_output_shapes
: *
dtype0	
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0	*
shape: *
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0	
c
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes
: *
dtype0	
�
imageinput_/varianceVarHandleOp*
_output_shapes
: *%

debug_nameimageinput_/variance/*
dtype0*
shape:b2*%
shared_nameimageinput_/variance
�
(imageinput_/variance/Read/ReadVariableOpReadVariableOpimageinput_/variance*"
_output_shapes
:b2*
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOpimageinput_/variance*
_class
loc:@Variable_34*"
_output_shapes
:b2*
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape:b2*
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
o
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34*"
_output_shapes
:b2*
dtype0
�
imageinput_/meanVarHandleOp*
_output_shapes
: *!

debug_nameimageinput_/mean/*
dtype0*
shape:b2*!
shared_nameimageinput_/mean
y
$imageinput_/mean/Read/ReadVariableOpReadVariableOpimageinput_/mean*"
_output_shapes
:b2*
dtype0
�
&Variable_35/Initializer/ReadVariableOpReadVariableOpimageinput_/mean*
_class
loc:@Variable_35*"
_output_shapes
:b2*
dtype0
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0*
shape:b2*
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0
o
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35*"
_output_shapes
:b2*
dtype0
�
serve_imageinput_unnormalizedPlaceholder*/
_output_shapes
:���������b2*
dtype0*$
shape:���������b2
�
StatefulPartitionedCallStatefulPartitionedCallserve_imageinput_unnormalizedConstConst_1conv_1_/kernel_1conv_1_/bias_1batchnorm_1_/moving_mean_1batchnorm_1_/moving_variance_1batchnorm_1_/gamma_1batchnorm_1_/beta_1conv_2_/kernel_1conv_2_/bias_1batchnorm_2_/moving_mean_1batchnorm_2_/moving_variance_1batchnorm_2_/gamma_1batchnorm_2_/beta_1conv_3_/kernel_1conv_3_/bias_1batchnorm_3_/moving_mean_1batchnorm_3_/moving_variance_1batchnorm_3_/gamma_1batchnorm_3_/beta_1conv_4_/kernel_1conv_4_/bias_1batchnorm_4_/moving_mean_1batchnorm_4_/moving_variance_1batchnorm_4_/gamma_1batchnorm_4_/beta_1conv_5_/kernel_1conv_5_/bias_1batchnorm_5_/moving_mean_1batchnorm_5_/moving_variance_1batchnorm_5_/gamma_1batchnorm_5_/beta_1fc_/kernel_1
fc_/bias_1*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 !"*-
config_proto

CPU

GPU 2J 8� *3
f.R,
*__inference_signature_wrapper___call___678
�
'serving_default_imageinput_unnormalizedPlaceholder*/
_output_shapes
:���������b2*
dtype0*$
shape:���������b2
�
StatefulPartitionedCall_1StatefulPartitionedCall'serving_default_imageinput_unnormalizedConstConst_1conv_1_/kernel_1conv_1_/bias_1batchnorm_1_/moving_mean_1batchnorm_1_/moving_variance_1batchnorm_1_/gamma_1batchnorm_1_/beta_1conv_2_/kernel_1conv_2_/bias_1batchnorm_2_/moving_mean_1batchnorm_2_/moving_variance_1batchnorm_2_/gamma_1batchnorm_2_/beta_1conv_3_/kernel_1conv_3_/bias_1batchnorm_3_/moving_mean_1batchnorm_3_/moving_variance_1batchnorm_3_/gamma_1batchnorm_3_/beta_1conv_4_/kernel_1conv_4_/bias_1batchnorm_4_/moving_mean_1batchnorm_4_/moving_variance_1batchnorm_4_/gamma_1batchnorm_4_/beta_1conv_5_/kernel_1conv_5_/bias_1batchnorm_5_/moving_mean_1batchnorm_5_/moving_variance_1batchnorm_5_/gamma_1batchnorm_5_/beta_1fc_/kernel_1
fc_/bias_1*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 !"*-
config_proto

CPU

GPU 2J 8� *3
f.R,
*__inference_signature_wrapper___call___751

NoOpNoOp
�6
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*�5
value�5B�5 B�5
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29
&30
'31
(32
)33
*34
+35*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
#16
$17
%18
&19
*20
+21*
j
0
	1

2
3
4
5
6
7
8
!9
"10
'11
(12
)13*
�
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31*
* 

Ltrace_0* 
"
	Mserve
Nserving_default* 
KE
VARIABLE_VALUEVariable_35&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_34&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_33&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_32&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_31&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_30&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_29&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_28&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_27&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_26&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_25'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_24'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_23'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_22'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_21'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_20'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_19'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_18'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_17'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_16'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_15'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_14'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_13'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_12'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_11'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_10'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_9'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_8'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_7'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_6'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_5'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_4'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEconv_3_/bias_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatchnorm_3_/gamma_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEconv_1_/bias_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatchnorm_2_/gamma_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEconv_3_/kernel_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEbatchnorm_4_/beta_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatchnorm_5_/gamma_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUE
fc_/bias_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEconv_4_/bias_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEfc_/kernel_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatchnorm_3_/beta_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv_4_/kernel_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatchnorm_2_/beta_1,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatchnorm_5_/beta_1,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv_2_/bias_1,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEconv_5_/bias_1,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEbatchnorm_1_/gamma_1,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatchnorm_1_/beta_1,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv_2_/kernel_1,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEbatchnorm_4_/gamma_1,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv_5_/kernel_1,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv_1_/kernel_1,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbatchnorm_2_/moving_variance_1,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbatchnorm_4_/moving_variance_1,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEbatchnorm_3_/moving_mean_1,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEbatchnorm_2_/moving_mean_1,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbatchnorm_3_/moving_variance_1,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEbatchnorm_5_/moving_mean_1,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbatchnorm_5_/moving_variance_1,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEbatchnorm_1_/moving_mean_1,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbatchnorm_1_/moving_variance_1,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEbatchnorm_4_/moving_mean_1,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
 
O	capture_0
P	capture_1* 
 
O	capture_0
P	capture_1* 
 
O	capture_0
P	capture_1* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableconv_3_/bias_1batchnorm_3_/gamma_1conv_1_/bias_1batchnorm_2_/gamma_1conv_3_/kernel_1batchnorm_4_/beta_1batchnorm_5_/gamma_1
fc_/bias_1conv_4_/bias_1fc_/kernel_1batchnorm_3_/beta_1conv_4_/kernel_1batchnorm_2_/beta_1batchnorm_5_/beta_1conv_2_/bias_1conv_5_/bias_1batchnorm_1_/gamma_1batchnorm_1_/beta_1conv_2_/kernel_1batchnorm_4_/gamma_1conv_5_/kernel_1conv_1_/kernel_1batchnorm_2_/moving_variance_1batchnorm_4_/moving_variance_1batchnorm_3_/moving_mean_1batchnorm_2_/moving_mean_1batchnorm_3_/moving_variance_1batchnorm_5_/moving_mean_1batchnorm_5_/moving_variance_1batchnorm_1_/moving_mean_1batchnorm_1_/moving_variance_1batchnorm_4_/moving_mean_1Const_2*Q
TinJ
H2F*
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
GPU 2J 8� *&
f!R
__inference__traced_save_1329
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableconv_3_/bias_1batchnorm_3_/gamma_1conv_1_/bias_1batchnorm_2_/gamma_1conv_3_/kernel_1batchnorm_4_/beta_1batchnorm_5_/gamma_1
fc_/bias_1conv_4_/bias_1fc_/kernel_1batchnorm_3_/beta_1conv_4_/kernel_1batchnorm_2_/beta_1batchnorm_5_/beta_1conv_2_/bias_1conv_5_/bias_1batchnorm_1_/gamma_1batchnorm_1_/beta_1conv_2_/kernel_1batchnorm_4_/gamma_1conv_5_/kernel_1conv_1_/kernel_1batchnorm_2_/moving_variance_1batchnorm_4_/moving_variance_1batchnorm_3_/moving_mean_1batchnorm_2_/moving_mean_1batchnorm_3_/moving_variance_1batchnorm_5_/moving_mean_1batchnorm_5_/moving_variance_1batchnorm_1_/moving_mean_1batchnorm_1_/moving_variance_1batchnorm_4_/moving_mean_1*P
TinI
G2E*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_1542��
�
�
*__inference_signature_wrapper___call___678
imageinput_unnormalized
unknown
	unknown_0#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0

unknown_18:0$

unknown_19:00

unknown_20:0

unknown_21:0

unknown_22:0

unknown_23:0

unknown_24:0$

unknown_25:00

unknown_26:0

unknown_27:0

unknown_28:0

unknown_29:0

unknown_30:0

unknown_31:	�

unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallimageinput_unnormalizedunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 !"*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___604o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
:���������b2:b2:b2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#"

_user_specified_name674:#!

_user_specified_name672:# 

_user_specified_name670:#

_user_specified_name668:#

_user_specified_name666:#

_user_specified_name664:#

_user_specified_name662:#

_user_specified_name660:#

_user_specified_name658:#

_user_specified_name656:#

_user_specified_name654:#

_user_specified_name652:#

_user_specified_name650:#

_user_specified_name648:#

_user_specified_name646:#

_user_specified_name644:#

_user_specified_name642:#

_user_specified_name640:#

_user_specified_name638:#

_user_specified_name636:#

_user_specified_name634:#

_user_specified_name632:#

_user_specified_name630:#

_user_specified_name628:#


_user_specified_name626:#	

_user_specified_name624:#

_user_specified_name622:#

_user_specified_name620:#

_user_specified_name618:#

_user_specified_name616:#

_user_specified_name614:#

_user_specified_name612:KG
&
_output_shapes
:b2

_user_specified_name610:KG
&
_output_shapes
:b2

_user_specified_name608:h d
/
_output_shapes
:���������b2
1
_user_specified_nameimageinput_unnormalized
��
�!
__inference___call___604
imageinput_unnormalized&
"functional_1_1_imageinput__1_sub_y'
#functional_1_1_imageinput__1_sqrt_xV
<functional_1_1_conv_1__1_convolution_readvariableop_resource:F
8functional_1_1_conv_1__1_reshape_readvariableop_resource:H
:functional_1_1_batchnorm_1__1_cast_readvariableop_resource:J
<functional_1_1_batchnorm_1__1_cast_1_readvariableop_resource:J
<functional_1_1_batchnorm_1__1_cast_2_readvariableop_resource:J
<functional_1_1_batchnorm_1__1_cast_3_readvariableop_resource:V
<functional_1_1_conv_2__1_convolution_readvariableop_resource:F
8functional_1_1_conv_2__1_reshape_readvariableop_resource:H
:functional_1_1_batchnorm_2__1_cast_readvariableop_resource:J
<functional_1_1_batchnorm_2__1_cast_1_readvariableop_resource:J
<functional_1_1_batchnorm_2__1_cast_2_readvariableop_resource:J
<functional_1_1_batchnorm_2__1_cast_3_readvariableop_resource:V
<functional_1_1_conv_3__1_convolution_readvariableop_resource:0F
8functional_1_1_conv_3__1_reshape_readvariableop_resource:0H
:functional_1_1_batchnorm_3__1_cast_readvariableop_resource:0J
<functional_1_1_batchnorm_3__1_cast_1_readvariableop_resource:0J
<functional_1_1_batchnorm_3__1_cast_2_readvariableop_resource:0J
<functional_1_1_batchnorm_3__1_cast_3_readvariableop_resource:0V
<functional_1_1_conv_4__1_convolution_readvariableop_resource:00F
8functional_1_1_conv_4__1_reshape_readvariableop_resource:0H
:functional_1_1_batchnorm_4__1_cast_readvariableop_resource:0J
<functional_1_1_batchnorm_4__1_cast_1_readvariableop_resource:0J
<functional_1_1_batchnorm_4__1_cast_2_readvariableop_resource:0J
<functional_1_1_batchnorm_4__1_cast_3_readvariableop_resource:0V
<functional_1_1_conv_5__1_convolution_readvariableop_resource:00F
8functional_1_1_conv_5__1_reshape_readvariableop_resource:0H
:functional_1_1_batchnorm_5__1_cast_readvariableop_resource:0J
<functional_1_1_batchnorm_5__1_cast_1_readvariableop_resource:0J
<functional_1_1_batchnorm_5__1_cast_2_readvariableop_resource:0J
<functional_1_1_batchnorm_5__1_cast_3_readvariableop_resource:0D
1functional_1_1_fc__1_cast_readvariableop_resource:	�>
0functional_1_1_fc__1_add_readvariableop_resource:
identity��1functional_1_1/batchnorm_1__1/Cast/ReadVariableOp�3functional_1_1/batchnorm_1__1/Cast_1/ReadVariableOp�3functional_1_1/batchnorm_1__1/Cast_2/ReadVariableOp�3functional_1_1/batchnorm_1__1/Cast_3/ReadVariableOp�1functional_1_1/batchnorm_2__1/Cast/ReadVariableOp�3functional_1_1/batchnorm_2__1/Cast_1/ReadVariableOp�3functional_1_1/batchnorm_2__1/Cast_2/ReadVariableOp�3functional_1_1/batchnorm_2__1/Cast_3/ReadVariableOp�1functional_1_1/batchnorm_3__1/Cast/ReadVariableOp�3functional_1_1/batchnorm_3__1/Cast_1/ReadVariableOp�3functional_1_1/batchnorm_3__1/Cast_2/ReadVariableOp�3functional_1_1/batchnorm_3__1/Cast_3/ReadVariableOp�1functional_1_1/batchnorm_4__1/Cast/ReadVariableOp�3functional_1_1/batchnorm_4__1/Cast_1/ReadVariableOp�3functional_1_1/batchnorm_4__1/Cast_2/ReadVariableOp�3functional_1_1/batchnorm_4__1/Cast_3/ReadVariableOp�1functional_1_1/batchnorm_5__1/Cast/ReadVariableOp�3functional_1_1/batchnorm_5__1/Cast_1/ReadVariableOp�3functional_1_1/batchnorm_5__1/Cast_2/ReadVariableOp�3functional_1_1/batchnorm_5__1/Cast_3/ReadVariableOp�/functional_1_1/conv_1__1/Reshape/ReadVariableOp�3functional_1_1/conv_1__1/convolution/ReadVariableOp�/functional_1_1/conv_2__1/Reshape/ReadVariableOp�3functional_1_1/conv_2__1/convolution/ReadVariableOp�/functional_1_1/conv_3__1/Reshape/ReadVariableOp�3functional_1_1/conv_3__1/convolution/ReadVariableOp�/functional_1_1/conv_4__1/Reshape/ReadVariableOp�3functional_1_1/conv_4__1/convolution/ReadVariableOp�/functional_1_1/conv_5__1/Reshape/ReadVariableOp�3functional_1_1/conv_5__1/convolution/ReadVariableOp�'functional_1_1/fc__1/Add/ReadVariableOp�(functional_1_1/fc__1/Cast/ReadVariableOp�
 functional_1_1/imageinput__1/SubSubimageinput_unnormalized"functional_1_1_imageinput__1_sub_y*
T0*/
_output_shapes
:���������b2
!functional_1_1/imageinput__1/SqrtSqrt#functional_1_1_imageinput__1_sqrt_x*
T0*&
_output_shapes
:b2g
"functional_1_1/imageinput__1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
$functional_1_1/imageinput__1/MaximumMaximum%functional_1_1/imageinput__1/Sqrt:y:0+functional_1_1/imageinput__1/Const:output:0*
T0*&
_output_shapes
:b2�
$functional_1_1/imageinput__1/truedivRealDiv$functional_1_1/imageinput__1/Sub:z:0(functional_1_1/imageinput__1/Maximum:z:0*
T0*/
_output_shapes
:���������b2�
3functional_1_1/conv_1__1/convolution/ReadVariableOpReadVariableOp<functional_1_1_conv_1__1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
$functional_1_1/conv_1__1/convolutionConv2D(functional_1_1/imageinput__1/truediv:z:0;functional_1_1/conv_1__1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������b2*
paddingSAME*
strides
�
/functional_1_1/conv_1__1/Reshape/ReadVariableOpReadVariableOp8functional_1_1_conv_1__1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0
&functional_1_1/conv_1__1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
 functional_1_1/conv_1__1/ReshapeReshape7functional_1_1/conv_1__1/Reshape/ReadVariableOp:value:0/functional_1_1/conv_1__1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
functional_1_1/conv_1__1/addAddV2-functional_1_1/conv_1__1/convolution:output:0)functional_1_1/conv_1__1/Reshape:output:0*
T0*/
_output_shapes
:���������b2�
1functional_1_1/batchnorm_1__1/Cast/ReadVariableOpReadVariableOp:functional_1_1_batchnorm_1__1_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
3functional_1_1/batchnorm_1__1/Cast_1/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_1__1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
3functional_1_1/batchnorm_1__1/Cast_2/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_1__1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
3functional_1_1/batchnorm_1__1/Cast_3/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_1__1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0r
-functional_1_1/batchnorm_1__1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
+functional_1_1/batchnorm_1__1/batchnorm/addAddV2;functional_1_1/batchnorm_1__1/Cast_1/ReadVariableOp:value:06functional_1_1/batchnorm_1__1/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
-functional_1_1/batchnorm_1__1/batchnorm/RsqrtRsqrt/functional_1_1/batchnorm_1__1/batchnorm/add:z:0*
T0*
_output_shapes
:�
+functional_1_1/batchnorm_1__1/batchnorm/mulMul1functional_1_1/batchnorm_1__1/batchnorm/Rsqrt:y:0;functional_1_1/batchnorm_1__1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:�
-functional_1_1/batchnorm_1__1/batchnorm/mul_1Mul functional_1_1/conv_1__1/add:z:0/functional_1_1/batchnorm_1__1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������b2�
-functional_1_1/batchnorm_1__1/batchnorm/mul_2Mul9functional_1_1/batchnorm_1__1/Cast/ReadVariableOp:value:0/functional_1_1/batchnorm_1__1/batchnorm/mul:z:0*
T0*
_output_shapes
:�
+functional_1_1/batchnorm_1__1/batchnorm/subSub;functional_1_1/batchnorm_1__1/Cast_3/ReadVariableOp:value:01functional_1_1/batchnorm_1__1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
-functional_1_1/batchnorm_1__1/batchnorm/add_1AddV21functional_1_1/batchnorm_1__1/batchnorm/mul_1:z:0/functional_1_1/batchnorm_1__1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������b2�
functional_1_1/re_lu_1/ReluRelu1functional_1_1/batchnorm_1__1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������b2�
(functional_1_1/max_pooling2d_1/MaxPool2dMaxPool)functional_1_1/re_lu_1/Relu:activations:0*/
_output_shapes
:���������1*
ksize
*
paddingSAME*
strides
�
3functional_1_1/conv_2__1/convolution/ReadVariableOpReadVariableOp<functional_1_1_conv_2__1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
$functional_1_1/conv_2__1/convolutionConv2D1functional_1_1/max_pooling2d_1/MaxPool2d:output:0;functional_1_1/conv_2__1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������1*
paddingSAME*
strides
�
/functional_1_1/conv_2__1/Reshape/ReadVariableOpReadVariableOp8functional_1_1_conv_2__1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0
&functional_1_1/conv_2__1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
 functional_1_1/conv_2__1/ReshapeReshape7functional_1_1/conv_2__1/Reshape/ReadVariableOp:value:0/functional_1_1/conv_2__1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
functional_1_1/conv_2__1/addAddV2-functional_1_1/conv_2__1/convolution:output:0)functional_1_1/conv_2__1/Reshape:output:0*
T0*/
_output_shapes
:���������1�
1functional_1_1/batchnorm_2__1/Cast/ReadVariableOpReadVariableOp:functional_1_1_batchnorm_2__1_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
3functional_1_1/batchnorm_2__1/Cast_1/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_2__1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
3functional_1_1/batchnorm_2__1/Cast_2/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_2__1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
3functional_1_1/batchnorm_2__1/Cast_3/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_2__1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0r
-functional_1_1/batchnorm_2__1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
+functional_1_1/batchnorm_2__1/batchnorm/addAddV2;functional_1_1/batchnorm_2__1/Cast_1/ReadVariableOp:value:06functional_1_1/batchnorm_2__1/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
-functional_1_1/batchnorm_2__1/batchnorm/RsqrtRsqrt/functional_1_1/batchnorm_2__1/batchnorm/add:z:0*
T0*
_output_shapes
:�
+functional_1_1/batchnorm_2__1/batchnorm/mulMul1functional_1_1/batchnorm_2__1/batchnorm/Rsqrt:y:0;functional_1_1/batchnorm_2__1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:�
-functional_1_1/batchnorm_2__1/batchnorm/mul_1Mul functional_1_1/conv_2__1/add:z:0/functional_1_1/batchnorm_2__1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������1�
-functional_1_1/batchnorm_2__1/batchnorm/mul_2Mul9functional_1_1/batchnorm_2__1/Cast/ReadVariableOp:value:0/functional_1_1/batchnorm_2__1/batchnorm/mul:z:0*
T0*
_output_shapes
:�
+functional_1_1/batchnorm_2__1/batchnorm/subSub;functional_1_1/batchnorm_2__1/Cast_3/ReadVariableOp:value:01functional_1_1/batchnorm_2__1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
-functional_1_1/batchnorm_2__1/batchnorm/add_1AddV21functional_1_1/batchnorm_2__1/batchnorm/mul_1:z:0/functional_1_1/batchnorm_2__1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������1�
functional_1_1/re_lu_1_2/ReluRelu1functional_1_1/batchnorm_2__1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������1�
*functional_1_1/max_pooling2d_1_2/MaxPool2dMaxPool+functional_1_1/re_lu_1_2/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingSAME*
strides
�
3functional_1_1/conv_3__1/convolution/ReadVariableOpReadVariableOp<functional_1_1_conv_3__1_convolution_readvariableop_resource*&
_output_shapes
:0*
dtype0�
$functional_1_1/conv_3__1/convolutionConv2D3functional_1_1/max_pooling2d_1_2/MaxPool2d:output:0;functional_1_1/conv_3__1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
/functional_1_1/conv_3__1/Reshape/ReadVariableOpReadVariableOp8functional_1_1_conv_3__1_reshape_readvariableop_resource*
_output_shapes
:0*
dtype0
&functional_1_1/conv_3__1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         0   �
 functional_1_1/conv_3__1/ReshapeReshape7functional_1_1/conv_3__1/Reshape/ReadVariableOp:value:0/functional_1_1/conv_3__1/Reshape/shape:output:0*
T0*&
_output_shapes
:0�
functional_1_1/conv_3__1/addAddV2-functional_1_1/conv_3__1/convolution:output:0)functional_1_1/conv_3__1/Reshape:output:0*
T0*/
_output_shapes
:���������0�
1functional_1_1/batchnorm_3__1/Cast/ReadVariableOpReadVariableOp:functional_1_1_batchnorm_3__1_cast_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_3__1/Cast_1/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_3__1_cast_1_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_3__1/Cast_2/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_3__1_cast_2_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_3__1/Cast_3/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_3__1_cast_3_readvariableop_resource*
_output_shapes
:0*
dtype0r
-functional_1_1/batchnorm_3__1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
+functional_1_1/batchnorm_3__1/batchnorm/addAddV2;functional_1_1/batchnorm_3__1/Cast_1/ReadVariableOp:value:06functional_1_1/batchnorm_3__1/batchnorm/add/y:output:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_3__1/batchnorm/RsqrtRsqrt/functional_1_1/batchnorm_3__1/batchnorm/add:z:0*
T0*
_output_shapes
:0�
+functional_1_1/batchnorm_3__1/batchnorm/mulMul1functional_1_1/batchnorm_3__1/batchnorm/Rsqrt:y:0;functional_1_1/batchnorm_3__1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_3__1/batchnorm/mul_1Mul functional_1_1/conv_3__1/add:z:0/functional_1_1/batchnorm_3__1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������0�
-functional_1_1/batchnorm_3__1/batchnorm/mul_2Mul9functional_1_1/batchnorm_3__1/Cast/ReadVariableOp:value:0/functional_1_1/batchnorm_3__1/batchnorm/mul:z:0*
T0*
_output_shapes
:0�
+functional_1_1/batchnorm_3__1/batchnorm/subSub;functional_1_1/batchnorm_3__1/Cast_3/ReadVariableOp:value:01functional_1_1/batchnorm_3__1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_3__1/batchnorm/add_1AddV21functional_1_1/batchnorm_3__1/batchnorm/mul_1:z:0/functional_1_1/batchnorm_3__1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������0�
functional_1_1/re_lu_2_1/ReluRelu1functional_1_1/batchnorm_3__1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������0�
*functional_1_1/max_pooling2d_2_1/MaxPool2dMaxPool+functional_1_1/re_lu_2_1/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingSAME*
strides
�
3functional_1_1/conv_4__1/convolution/ReadVariableOpReadVariableOp<functional_1_1_conv_4__1_convolution_readvariableop_resource*&
_output_shapes
:00*
dtype0�
$functional_1_1/conv_4__1/convolutionConv2D3functional_1_1/max_pooling2d_2_1/MaxPool2d:output:0;functional_1_1/conv_4__1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
/functional_1_1/conv_4__1/Reshape/ReadVariableOpReadVariableOp8functional_1_1_conv_4__1_reshape_readvariableop_resource*
_output_shapes
:0*
dtype0
&functional_1_1/conv_4__1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         0   �
 functional_1_1/conv_4__1/ReshapeReshape7functional_1_1/conv_4__1/Reshape/ReadVariableOp:value:0/functional_1_1/conv_4__1/Reshape/shape:output:0*
T0*&
_output_shapes
:0�
functional_1_1/conv_4__1/addAddV2-functional_1_1/conv_4__1/convolution:output:0)functional_1_1/conv_4__1/Reshape:output:0*
T0*/
_output_shapes
:���������0�
1functional_1_1/batchnorm_4__1/Cast/ReadVariableOpReadVariableOp:functional_1_1_batchnorm_4__1_cast_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_4__1/Cast_1/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_4__1_cast_1_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_4__1/Cast_2/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_4__1_cast_2_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_4__1/Cast_3/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_4__1_cast_3_readvariableop_resource*
_output_shapes
:0*
dtype0r
-functional_1_1/batchnorm_4__1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
+functional_1_1/batchnorm_4__1/batchnorm/addAddV2;functional_1_1/batchnorm_4__1/Cast_1/ReadVariableOp:value:06functional_1_1/batchnorm_4__1/batchnorm/add/y:output:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_4__1/batchnorm/RsqrtRsqrt/functional_1_1/batchnorm_4__1/batchnorm/add:z:0*
T0*
_output_shapes
:0�
+functional_1_1/batchnorm_4__1/batchnorm/mulMul1functional_1_1/batchnorm_4__1/batchnorm/Rsqrt:y:0;functional_1_1/batchnorm_4__1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_4__1/batchnorm/mul_1Mul functional_1_1/conv_4__1/add:z:0/functional_1_1/batchnorm_4__1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������0�
-functional_1_1/batchnorm_4__1/batchnorm/mul_2Mul9functional_1_1/batchnorm_4__1/Cast/ReadVariableOp:value:0/functional_1_1/batchnorm_4__1/batchnorm/mul:z:0*
T0*
_output_shapes
:0�
+functional_1_1/batchnorm_4__1/batchnorm/subSub;functional_1_1/batchnorm_4__1/Cast_3/ReadVariableOp:value:01functional_1_1/batchnorm_4__1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_4__1/batchnorm/add_1AddV21functional_1_1/batchnorm_4__1/batchnorm/mul_1:z:0/functional_1_1/batchnorm_4__1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������0�
functional_1_1/re_lu_3_1/ReluRelu1functional_1_1/batchnorm_4__1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������0�
3functional_1_1/conv_5__1/convolution/ReadVariableOpReadVariableOp<functional_1_1_conv_5__1_convolution_readvariableop_resource*&
_output_shapes
:00*
dtype0�
$functional_1_1/conv_5__1/convolutionConv2D+functional_1_1/re_lu_3_1/Relu:activations:0;functional_1_1/conv_5__1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
/functional_1_1/conv_5__1/Reshape/ReadVariableOpReadVariableOp8functional_1_1_conv_5__1_reshape_readvariableop_resource*
_output_shapes
:0*
dtype0
&functional_1_1/conv_5__1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         0   �
 functional_1_1/conv_5__1/ReshapeReshape7functional_1_1/conv_5__1/Reshape/ReadVariableOp:value:0/functional_1_1/conv_5__1/Reshape/shape:output:0*
T0*&
_output_shapes
:0�
functional_1_1/conv_5__1/addAddV2-functional_1_1/conv_5__1/convolution:output:0)functional_1_1/conv_5__1/Reshape:output:0*
T0*/
_output_shapes
:���������0�
1functional_1_1/batchnorm_5__1/Cast/ReadVariableOpReadVariableOp:functional_1_1_batchnorm_5__1_cast_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_5__1/Cast_1/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_5__1_cast_1_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_5__1/Cast_2/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_5__1_cast_2_readvariableop_resource*
_output_shapes
:0*
dtype0�
3functional_1_1/batchnorm_5__1/Cast_3/ReadVariableOpReadVariableOp<functional_1_1_batchnorm_5__1_cast_3_readvariableop_resource*
_output_shapes
:0*
dtype0r
-functional_1_1/batchnorm_5__1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
+functional_1_1/batchnorm_5__1/batchnorm/addAddV2;functional_1_1/batchnorm_5__1/Cast_1/ReadVariableOp:value:06functional_1_1/batchnorm_5__1/batchnorm/add/y:output:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_5__1/batchnorm/RsqrtRsqrt/functional_1_1/batchnorm_5__1/batchnorm/add:z:0*
T0*
_output_shapes
:0�
+functional_1_1/batchnorm_5__1/batchnorm/mulMul1functional_1_1/batchnorm_5__1/batchnorm/Rsqrt:y:0;functional_1_1/batchnorm_5__1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_5__1/batchnorm/mul_1Mul functional_1_1/conv_5__1/add:z:0/functional_1_1/batchnorm_5__1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������0�
-functional_1_1/batchnorm_5__1/batchnorm/mul_2Mul9functional_1_1/batchnorm_5__1/Cast/ReadVariableOp:value:0/functional_1_1/batchnorm_5__1/batchnorm/mul:z:0*
T0*
_output_shapes
:0�
+functional_1_1/batchnorm_5__1/batchnorm/subSub;functional_1_1/batchnorm_5__1/Cast_3/ReadVariableOp:value:01functional_1_1/batchnorm_5__1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:0�
-functional_1_1/batchnorm_5__1/batchnorm/add_1AddV21functional_1_1/batchnorm_5__1/batchnorm/mul_1:z:0/functional_1_1/batchnorm_5__1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������0�
functional_1_1/re_lu_4_1/ReluRelu1functional_1_1/batchnorm_5__1/batchnorm/add_1:z:0*
T0*/
_output_shapes
:���������0�
*functional_1_1/max_pooling2d_3_1/MaxPool2dMaxPool+functional_1_1/re_lu_4_1/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingVALID*
strides
�
%functional_1_1/fc_preFlatten1_1/ShapeShape3functional_1_1/max_pooling2d_3_1/MaxPool2d:output:0*
T0*
_output_shapes
::��}
3functional_1_1/fc_preFlatten1_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5functional_1_1/fc_preFlatten1_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5functional_1_1/fc_preFlatten1_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-functional_1_1/fc_preFlatten1_1/strided_sliceStridedSlice.functional_1_1/fc_preFlatten1_1/Shape:output:0<functional_1_1/fc_preFlatten1_1/strided_slice/stack:output:0>functional_1_1/fc_preFlatten1_1/strided_slice/stack_1:output:0>functional_1_1/fc_preFlatten1_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/functional_1_1/fc_preFlatten1_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :��
-functional_1_1/fc_preFlatten1_1/Reshape/shapePack6functional_1_1/fc_preFlatten1_1/strided_slice:output:08functional_1_1/fc_preFlatten1_1/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
'functional_1_1/fc_preFlatten1_1/ReshapeReshape3functional_1_1/max_pooling2d_3_1/MaxPool2d:output:06functional_1_1/fc_preFlatten1_1/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
(functional_1_1/fc__1/Cast/ReadVariableOpReadVariableOp1functional_1_1_fc__1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
functional_1_1/fc__1/MatMulMatMul0functional_1_1/fc_preFlatten1_1/Reshape:output:00functional_1_1/fc__1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'functional_1_1/fc__1/Add/ReadVariableOpReadVariableOp0functional_1_1_fc__1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_1_1/fc__1/AddAddV2%functional_1_1/fc__1/MatMul:product:0/functional_1_1/fc__1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������{
 functional_1_1/softmax_1/SoftmaxSoftmaxfunctional_1_1/fc__1/Add:z:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*functional_1_1/softmax_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^functional_1_1/batchnorm_1__1/Cast/ReadVariableOp4^functional_1_1/batchnorm_1__1/Cast_1/ReadVariableOp4^functional_1_1/batchnorm_1__1/Cast_2/ReadVariableOp4^functional_1_1/batchnorm_1__1/Cast_3/ReadVariableOp2^functional_1_1/batchnorm_2__1/Cast/ReadVariableOp4^functional_1_1/batchnorm_2__1/Cast_1/ReadVariableOp4^functional_1_1/batchnorm_2__1/Cast_2/ReadVariableOp4^functional_1_1/batchnorm_2__1/Cast_3/ReadVariableOp2^functional_1_1/batchnorm_3__1/Cast/ReadVariableOp4^functional_1_1/batchnorm_3__1/Cast_1/ReadVariableOp4^functional_1_1/batchnorm_3__1/Cast_2/ReadVariableOp4^functional_1_1/batchnorm_3__1/Cast_3/ReadVariableOp2^functional_1_1/batchnorm_4__1/Cast/ReadVariableOp4^functional_1_1/batchnorm_4__1/Cast_1/ReadVariableOp4^functional_1_1/batchnorm_4__1/Cast_2/ReadVariableOp4^functional_1_1/batchnorm_4__1/Cast_3/ReadVariableOp2^functional_1_1/batchnorm_5__1/Cast/ReadVariableOp4^functional_1_1/batchnorm_5__1/Cast_1/ReadVariableOp4^functional_1_1/batchnorm_5__1/Cast_2/ReadVariableOp4^functional_1_1/batchnorm_5__1/Cast_3/ReadVariableOp0^functional_1_1/conv_1__1/Reshape/ReadVariableOp4^functional_1_1/conv_1__1/convolution/ReadVariableOp0^functional_1_1/conv_2__1/Reshape/ReadVariableOp4^functional_1_1/conv_2__1/convolution/ReadVariableOp0^functional_1_1/conv_3__1/Reshape/ReadVariableOp4^functional_1_1/conv_3__1/convolution/ReadVariableOp0^functional_1_1/conv_4__1/Reshape/ReadVariableOp4^functional_1_1/conv_4__1/convolution/ReadVariableOp0^functional_1_1/conv_5__1/Reshape/ReadVariableOp4^functional_1_1/conv_5__1/convolution/ReadVariableOp(^functional_1_1/fc__1/Add/ReadVariableOp)^functional_1_1/fc__1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
:���������b2:b2:b2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1functional_1_1/batchnorm_1__1/Cast/ReadVariableOp1functional_1_1/batchnorm_1__1/Cast/ReadVariableOp2j
3functional_1_1/batchnorm_1__1/Cast_1/ReadVariableOp3functional_1_1/batchnorm_1__1/Cast_1/ReadVariableOp2j
3functional_1_1/batchnorm_1__1/Cast_2/ReadVariableOp3functional_1_1/batchnorm_1__1/Cast_2/ReadVariableOp2j
3functional_1_1/batchnorm_1__1/Cast_3/ReadVariableOp3functional_1_1/batchnorm_1__1/Cast_3/ReadVariableOp2f
1functional_1_1/batchnorm_2__1/Cast/ReadVariableOp1functional_1_1/batchnorm_2__1/Cast/ReadVariableOp2j
3functional_1_1/batchnorm_2__1/Cast_1/ReadVariableOp3functional_1_1/batchnorm_2__1/Cast_1/ReadVariableOp2j
3functional_1_1/batchnorm_2__1/Cast_2/ReadVariableOp3functional_1_1/batchnorm_2__1/Cast_2/ReadVariableOp2j
3functional_1_1/batchnorm_2__1/Cast_3/ReadVariableOp3functional_1_1/batchnorm_2__1/Cast_3/ReadVariableOp2f
1functional_1_1/batchnorm_3__1/Cast/ReadVariableOp1functional_1_1/batchnorm_3__1/Cast/ReadVariableOp2j
3functional_1_1/batchnorm_3__1/Cast_1/ReadVariableOp3functional_1_1/batchnorm_3__1/Cast_1/ReadVariableOp2j
3functional_1_1/batchnorm_3__1/Cast_2/ReadVariableOp3functional_1_1/batchnorm_3__1/Cast_2/ReadVariableOp2j
3functional_1_1/batchnorm_3__1/Cast_3/ReadVariableOp3functional_1_1/batchnorm_3__1/Cast_3/ReadVariableOp2f
1functional_1_1/batchnorm_4__1/Cast/ReadVariableOp1functional_1_1/batchnorm_4__1/Cast/ReadVariableOp2j
3functional_1_1/batchnorm_4__1/Cast_1/ReadVariableOp3functional_1_1/batchnorm_4__1/Cast_1/ReadVariableOp2j
3functional_1_1/batchnorm_4__1/Cast_2/ReadVariableOp3functional_1_1/batchnorm_4__1/Cast_2/ReadVariableOp2j
3functional_1_1/batchnorm_4__1/Cast_3/ReadVariableOp3functional_1_1/batchnorm_4__1/Cast_3/ReadVariableOp2f
1functional_1_1/batchnorm_5__1/Cast/ReadVariableOp1functional_1_1/batchnorm_5__1/Cast/ReadVariableOp2j
3functional_1_1/batchnorm_5__1/Cast_1/ReadVariableOp3functional_1_1/batchnorm_5__1/Cast_1/ReadVariableOp2j
3functional_1_1/batchnorm_5__1/Cast_2/ReadVariableOp3functional_1_1/batchnorm_5__1/Cast_2/ReadVariableOp2j
3functional_1_1/batchnorm_5__1/Cast_3/ReadVariableOp3functional_1_1/batchnorm_5__1/Cast_3/ReadVariableOp2b
/functional_1_1/conv_1__1/Reshape/ReadVariableOp/functional_1_1/conv_1__1/Reshape/ReadVariableOp2j
3functional_1_1/conv_1__1/convolution/ReadVariableOp3functional_1_1/conv_1__1/convolution/ReadVariableOp2b
/functional_1_1/conv_2__1/Reshape/ReadVariableOp/functional_1_1/conv_2__1/Reshape/ReadVariableOp2j
3functional_1_1/conv_2__1/convolution/ReadVariableOp3functional_1_1/conv_2__1/convolution/ReadVariableOp2b
/functional_1_1/conv_3__1/Reshape/ReadVariableOp/functional_1_1/conv_3__1/Reshape/ReadVariableOp2j
3functional_1_1/conv_3__1/convolution/ReadVariableOp3functional_1_1/conv_3__1/convolution/ReadVariableOp2b
/functional_1_1/conv_4__1/Reshape/ReadVariableOp/functional_1_1/conv_4__1/Reshape/ReadVariableOp2j
3functional_1_1/conv_4__1/convolution/ReadVariableOp3functional_1_1/conv_4__1/convolution/ReadVariableOp2b
/functional_1_1/conv_5__1/Reshape/ReadVariableOp/functional_1_1/conv_5__1/Reshape/ReadVariableOp2j
3functional_1_1/conv_5__1/convolution/ReadVariableOp3functional_1_1/conv_5__1/convolution/ReadVariableOp2R
'functional_1_1/fc__1/Add/ReadVariableOp'functional_1_1/fc__1/Add/ReadVariableOp2T
(functional_1_1/fc__1/Cast/ReadVariableOp(functional_1_1/fc__1/Cast/ReadVariableOp:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:IE
&
_output_shapes
:b2

_user_specified_namex:IE
&
_output_shapes
:b2

_user_specified_namey:h d
/
_output_shapes
:���������b2
1
_user_specified_nameimageinput_unnormalized
�
�
*__inference_signature_wrapper___call___751
imageinput_unnormalized
unknown
	unknown_0#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:0

unknown_14:0

unknown_15:0

unknown_16:0

unknown_17:0

unknown_18:0$

unknown_19:00

unknown_20:0

unknown_21:0

unknown_22:0

unknown_23:0

unknown_24:0$

unknown_25:00

unknown_26:0

unknown_27:0

unknown_28:0

unknown_29:0

unknown_30:0

unknown_31:	�

unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallimageinput_unnormalizedunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 !"*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___604o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
:���������b2:b2:b2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#"

_user_specified_name747:#!

_user_specified_name745:# 

_user_specified_name743:#

_user_specified_name741:#

_user_specified_name739:#

_user_specified_name737:#

_user_specified_name735:#

_user_specified_name733:#

_user_specified_name731:#

_user_specified_name729:#

_user_specified_name727:#

_user_specified_name725:#

_user_specified_name723:#

_user_specified_name721:#

_user_specified_name719:#

_user_specified_name717:#

_user_specified_name715:#

_user_specified_name713:#

_user_specified_name711:#

_user_specified_name709:#

_user_specified_name707:#

_user_specified_name705:#

_user_specified_name703:#

_user_specified_name701:#


_user_specified_name699:#	

_user_specified_name697:#

_user_specified_name695:#

_user_specified_name693:#

_user_specified_name691:#

_user_specified_name689:#

_user_specified_name687:#

_user_specified_name685:KG
&
_output_shapes
:b2

_user_specified_name683:KG
&
_output_shapes
:b2

_user_specified_name681:h d
/
_output_shapes
:���������b2
1
_user_specified_nameimageinput_unnormalized
��
�(
 __inference__traced_restore_1542
file_prefix2
assignvariableop_variable_35:b24
assignvariableop_1_variable_34:b2(
assignvariableop_2_variable_33:	 8
assignvariableop_3_variable_32:,
assignvariableop_4_variable_31:,
assignvariableop_5_variable_30:,
assignvariableop_6_variable_29:,
assignvariableop_7_variable_28:,
assignvariableop_8_variable_27:8
assignvariableop_9_variable_26:-
assignvariableop_10_variable_25:-
assignvariableop_11_variable_24:-
assignvariableop_12_variable_23:-
assignvariableop_13_variable_22:-
assignvariableop_14_variable_21:9
assignvariableop_15_variable_20:0-
assignvariableop_16_variable_19:0-
assignvariableop_17_variable_18:0-
assignvariableop_18_variable_17:0-
assignvariableop_19_variable_16:0-
assignvariableop_20_variable_15:09
assignvariableop_21_variable_14:00-
assignvariableop_22_variable_13:0-
assignvariableop_23_variable_12:0-
assignvariableop_24_variable_11:0-
assignvariableop_25_variable_10:0,
assignvariableop_26_variable_9:08
assignvariableop_27_variable_8:00,
assignvariableop_28_variable_7:0,
assignvariableop_29_variable_6:0,
assignvariableop_30_variable_5:0,
assignvariableop_31_variable_4:0,
assignvariableop_32_variable_3:0,
assignvariableop_33_variable_2:1
assignvariableop_34_variable_1:	�*
assignvariableop_35_variable:0
"assignvariableop_36_conv_3__bias_1:06
(assignvariableop_37_batchnorm_3__gamma_1:00
"assignvariableop_38_conv_1__bias_1:6
(assignvariableop_39_batchnorm_2__gamma_1:>
$assignvariableop_40_conv_3__kernel_1:05
'assignvariableop_41_batchnorm_4__beta_1:06
(assignvariableop_42_batchnorm_5__gamma_1:0,
assignvariableop_43_fc__bias_1:0
"assignvariableop_44_conv_4__bias_1:03
 assignvariableop_45_fc__kernel_1:	�5
'assignvariableop_46_batchnorm_3__beta_1:0>
$assignvariableop_47_conv_4__kernel_1:005
'assignvariableop_48_batchnorm_2__beta_1:5
'assignvariableop_49_batchnorm_5__beta_1:00
"assignvariableop_50_conv_2__bias_1:0
"assignvariableop_51_conv_5__bias_1:06
(assignvariableop_52_batchnorm_1__gamma_1:5
'assignvariableop_53_batchnorm_1__beta_1:>
$assignvariableop_54_conv_2__kernel_1:6
(assignvariableop_55_batchnorm_4__gamma_1:0>
$assignvariableop_56_conv_5__kernel_1:00>
$assignvariableop_57_conv_1__kernel_1:@
2assignvariableop_58_batchnorm_2__moving_variance_1:@
2assignvariableop_59_batchnorm_4__moving_variance_1:0<
.assignvariableop_60_batchnorm_3__moving_mean_1:0<
.assignvariableop_61_batchnorm_2__moving_mean_1:@
2assignvariableop_62_batchnorm_3__moving_variance_1:0<
.assignvariableop_63_batchnorm_5__moving_mean_1:0@
2assignvariableop_64_batchnorm_5__moving_variance_1:0<
.assignvariableop_65_batchnorm_1__moving_mean_1:@
2assignvariableop_66_batchnorm_1__moving_variance_1:<
.assignvariableop_67_batchnorm_4__moving_mean_1:0
identity_69��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_35Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_34Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_33Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_32Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_31Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_30Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_29Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_28Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_27Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_26Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_25Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_24Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_23Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_22Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_21Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_20Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_19Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_18Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_17Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_16Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_15Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_14Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_13Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_12Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_11Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_10Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_9Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_8Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_7Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_6Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_5Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_4Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_3Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_2Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_1Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variableIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp"assignvariableop_36_conv_3__bias_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_batchnorm_3__gamma_1Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp"assignvariableop_38_conv_1__bias_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_batchnorm_2__gamma_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp$assignvariableop_40_conv_3__kernel_1Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp'assignvariableop_41_batchnorm_4__beta_1Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_batchnorm_5__gamma_1Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_fc__bias_1Identity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp"assignvariableop_44_conv_4__bias_1Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp assignvariableop_45_fc__kernel_1Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp'assignvariableop_46_batchnorm_3__beta_1Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp$assignvariableop_47_conv_4__kernel_1Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp'assignvariableop_48_batchnorm_2__beta_1Identity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp'assignvariableop_49_batchnorm_5__beta_1Identity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp"assignvariableop_50_conv_2__bias_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp"assignvariableop_51_conv_5__bias_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp(assignvariableop_52_batchnorm_1__gamma_1Identity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp'assignvariableop_53_batchnorm_1__beta_1Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp$assignvariableop_54_conv_2__kernel_1Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp(assignvariableop_55_batchnorm_4__gamma_1Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp$assignvariableop_56_conv_5__kernel_1Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp$assignvariableop_57_conv_1__kernel_1Identity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp2assignvariableop_58_batchnorm_2__moving_variance_1Identity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp2assignvariableop_59_batchnorm_4__moving_variance_1Identity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp.assignvariableop_60_batchnorm_3__moving_mean_1Identity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp.assignvariableop_61_batchnorm_2__moving_mean_1Identity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp2assignvariableop_62_batchnorm_3__moving_variance_1Identity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp.assignvariableop_63_batchnorm_5__moving_mean_1Identity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp2assignvariableop_64_batchnorm_5__moving_variance_1Identity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp.assignvariableop_65_batchnorm_1__moving_mean_1Identity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp2assignvariableop_66_batchnorm_1__moving_variance_1Identity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp.assignvariableop_67_batchnorm_4__moving_mean_1Identity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_69IdentityIdentity_68:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_69Identity_69:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp::D6
4
_user_specified_namebatchnorm_4_/moving_mean_1:>C:
8
_user_specified_name batchnorm_1_/moving_variance_1::B6
4
_user_specified_namebatchnorm_1_/moving_mean_1:>A:
8
_user_specified_name batchnorm_5_/moving_variance_1::@6
4
_user_specified_namebatchnorm_5_/moving_mean_1:>?:
8
_user_specified_name batchnorm_3_/moving_variance_1::>6
4
_user_specified_namebatchnorm_2_/moving_mean_1::=6
4
_user_specified_namebatchnorm_3_/moving_mean_1:><:
8
_user_specified_name batchnorm_4_/moving_variance_1:>;:
8
_user_specified_name batchnorm_2_/moving_variance_1:0:,
*
_user_specified_nameconv_1_/kernel_1:09,
*
_user_specified_nameconv_5_/kernel_1:480
.
_user_specified_namebatchnorm_4_/gamma_1:07,
*
_user_specified_nameconv_2_/kernel_1:36/
-
_user_specified_namebatchnorm_1_/beta_1:450
.
_user_specified_namebatchnorm_1_/gamma_1:.4*
(
_user_specified_nameconv_5_/bias_1:.3*
(
_user_specified_nameconv_2_/bias_1:32/
-
_user_specified_namebatchnorm_5_/beta_1:31/
-
_user_specified_namebatchnorm_2_/beta_1:00,
*
_user_specified_nameconv_4_/kernel_1:3//
-
_user_specified_namebatchnorm_3_/beta_1:,.(
&
_user_specified_namefc_/kernel_1:.-*
(
_user_specified_nameconv_4_/bias_1:*,&
$
_user_specified_name
fc_/bias_1:4+0
.
_user_specified_namebatchnorm_5_/gamma_1:3*/
-
_user_specified_namebatchnorm_4_/beta_1:0),
*
_user_specified_nameconv_3_/kernel_1:4(0
.
_user_specified_namebatchnorm_2_/gamma_1:.'*
(
_user_specified_nameconv_1_/bias_1:4&0
.
_user_specified_namebatchnorm_3_/gamma_1:.%*
(
_user_specified_nameconv_3_/bias_1:($$
"
_user_specified_name
Variable:*#&
$
_user_specified_name
Variable_1:*"&
$
_user_specified_name
Variable_2:*!&
$
_user_specified_name
Variable_3:* &
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+
'
%
_user_specified_nameVariable_26:+	'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�<
__inference__traced_save_1329
file_prefix8
"read_disablecopyonread_variable_35:b2:
$read_1_disablecopyonread_variable_34:b2.
$read_2_disablecopyonread_variable_33:	 >
$read_3_disablecopyonread_variable_32:2
$read_4_disablecopyonread_variable_31:2
$read_5_disablecopyonread_variable_30:2
$read_6_disablecopyonread_variable_29:2
$read_7_disablecopyonread_variable_28:2
$read_8_disablecopyonread_variable_27:>
$read_9_disablecopyonread_variable_26:3
%read_10_disablecopyonread_variable_25:3
%read_11_disablecopyonread_variable_24:3
%read_12_disablecopyonread_variable_23:3
%read_13_disablecopyonread_variable_22:3
%read_14_disablecopyonread_variable_21:?
%read_15_disablecopyonread_variable_20:03
%read_16_disablecopyonread_variable_19:03
%read_17_disablecopyonread_variable_18:03
%read_18_disablecopyonread_variable_17:03
%read_19_disablecopyonread_variable_16:03
%read_20_disablecopyonread_variable_15:0?
%read_21_disablecopyonread_variable_14:003
%read_22_disablecopyonread_variable_13:03
%read_23_disablecopyonread_variable_12:03
%read_24_disablecopyonread_variable_11:03
%read_25_disablecopyonread_variable_10:02
$read_26_disablecopyonread_variable_9:0>
$read_27_disablecopyonread_variable_8:002
$read_28_disablecopyonread_variable_7:02
$read_29_disablecopyonread_variable_6:02
$read_30_disablecopyonread_variable_5:02
$read_31_disablecopyonread_variable_4:02
$read_32_disablecopyonread_variable_3:02
$read_33_disablecopyonread_variable_2:7
$read_34_disablecopyonread_variable_1:	�0
"read_35_disablecopyonread_variable:6
(read_36_disablecopyonread_conv_3__bias_1:0<
.read_37_disablecopyonread_batchnorm_3__gamma_1:06
(read_38_disablecopyonread_conv_1__bias_1:<
.read_39_disablecopyonread_batchnorm_2__gamma_1:D
*read_40_disablecopyonread_conv_3__kernel_1:0;
-read_41_disablecopyonread_batchnorm_4__beta_1:0<
.read_42_disablecopyonread_batchnorm_5__gamma_1:02
$read_43_disablecopyonread_fc__bias_1:6
(read_44_disablecopyonread_conv_4__bias_1:09
&read_45_disablecopyonread_fc__kernel_1:	�;
-read_46_disablecopyonread_batchnorm_3__beta_1:0D
*read_47_disablecopyonread_conv_4__kernel_1:00;
-read_48_disablecopyonread_batchnorm_2__beta_1:;
-read_49_disablecopyonread_batchnorm_5__beta_1:06
(read_50_disablecopyonread_conv_2__bias_1:6
(read_51_disablecopyonread_conv_5__bias_1:0<
.read_52_disablecopyonread_batchnorm_1__gamma_1:;
-read_53_disablecopyonread_batchnorm_1__beta_1:D
*read_54_disablecopyonread_conv_2__kernel_1:<
.read_55_disablecopyonread_batchnorm_4__gamma_1:0D
*read_56_disablecopyonread_conv_5__kernel_1:00D
*read_57_disablecopyonread_conv_1__kernel_1:F
8read_58_disablecopyonread_batchnorm_2__moving_variance_1:F
8read_59_disablecopyonread_batchnorm_4__moving_variance_1:0B
4read_60_disablecopyonread_batchnorm_3__moving_mean_1:0B
4read_61_disablecopyonread_batchnorm_2__moving_mean_1:F
8read_62_disablecopyonread_batchnorm_3__moving_variance_1:0B
4read_63_disablecopyonread_batchnorm_5__moving_mean_1:0F
8read_64_disablecopyonread_batchnorm_5__moving_variance_1:0B
4read_65_disablecopyonread_batchnorm_1__moving_mean_1:F
8read_66_disablecopyonread_batchnorm_1__moving_variance_1:B
4read_67_disablecopyonread_batchnorm_4__moving_mean_1:0
savev2_const_2
identity_137��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_35*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_35^Read/DisableCopyOnRead*"
_output_shapes
:b2*
dtype0^
IdentityIdentityRead/ReadVariableOp:value:0*
T0*"
_output_shapes
:b2e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:b2i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_34*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_34^Read_1/DisableCopyOnRead*"
_output_shapes
:b2*
dtype0b

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:b2g

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*"
_output_shapes
:b2i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_33*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_33^Read_2/DisableCopyOnRead*
_output_shapes
: *
dtype0	V

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0	*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_32*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_32^Read_3/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*&
_output_shapes
:i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_31*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_31^Read_4/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_30*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_30^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_29*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_29^Read_6/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_28*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_28^Read_7/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_27*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_27^Read_8/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_26*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_26^Read_9/DisableCopyOnRead*&
_output_shapes
:*
dtype0g
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*&
_output_shapes
:m
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*&
_output_shapes
:k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_25*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_25^Read_10/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_24*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_24^Read_11/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_23*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_23^Read_12/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_22*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_22^Read_13/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_21*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_21^Read_14/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_20*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_20^Read_15/DisableCopyOnRead*&
_output_shapes
:0*
dtype0h
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*&
_output_shapes
:0m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:0k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_19*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_19^Read_16/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_18*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_18^Read_17/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_17*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_17^Read_18/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_16*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_16^Read_19/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_15*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_15^Read_20/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_14*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_14^Read_21/DisableCopyOnRead*&
_output_shapes
:00*
dtype0h
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*&
_output_shapes
:00m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
:00k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_13*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_13^Read_22/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_12*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_12^Read_23/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_11*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_11^Read_24/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:0k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_10*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_10^Read_25/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_26/DisableCopyOnReadDisableCopyOnRead$read_26_disablecopyonread_variable_9*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp$read_26_disablecopyonread_variable_9^Read_26/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_27/DisableCopyOnReadDisableCopyOnRead$read_27_disablecopyonread_variable_8*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp$read_27_disablecopyonread_variable_8^Read_27/DisableCopyOnRead*&
_output_shapes
:00*
dtype0h
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*&
_output_shapes
:00m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
:00j
Read_28/DisableCopyOnReadDisableCopyOnRead$read_28_disablecopyonread_variable_7*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp$read_28_disablecopyonread_variable_7^Read_28/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_29/DisableCopyOnReadDisableCopyOnRead$read_29_disablecopyonread_variable_6*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp$read_29_disablecopyonread_variable_6^Read_29/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_30/DisableCopyOnReadDisableCopyOnRead$read_30_disablecopyonread_variable_5*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp$read_30_disablecopyonread_variable_5^Read_30/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_31/DisableCopyOnReadDisableCopyOnRead$read_31_disablecopyonread_variable_4*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp$read_31_disablecopyonread_variable_4^Read_31/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_32/DisableCopyOnReadDisableCopyOnRead$read_32_disablecopyonread_variable_3*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp$read_32_disablecopyonread_variable_3^Read_32/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_33/DisableCopyOnReadDisableCopyOnRead$read_33_disablecopyonread_variable_2*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp$read_33_disablecopyonread_variable_2^Read_33/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_34/DisableCopyOnReadDisableCopyOnRead$read_34_disablecopyonread_variable_1*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp$read_34_disablecopyonread_variable_1^Read_34/DisableCopyOnRead*
_output_shapes
:	�*
dtype0a
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Read_35/DisableCopyOnReadDisableCopyOnRead"read_35_disablecopyonread_variable*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp"read_35_disablecopyonread_variable^Read_35/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:n
Read_36/DisableCopyOnReadDisableCopyOnRead(read_36_disablecopyonread_conv_3__bias_1*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp(read_36_disablecopyonread_conv_3__bias_1^Read_36/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_72IdentityRead_36/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:0t
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_batchnorm_3__gamma_1*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_batchnorm_3__gamma_1^Read_37/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_74IdentityRead_37/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:0n
Read_38/DisableCopyOnReadDisableCopyOnRead(read_38_disablecopyonread_conv_1__bias_1*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp(read_38_disablecopyonread_conv_1__bias_1^Read_38/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_76IdentityRead_38/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_39/DisableCopyOnReadDisableCopyOnRead.read_39_disablecopyonread_batchnorm_2__gamma_1*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp.read_39_disablecopyonread_batchnorm_2__gamma_1^Read_39/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_78IdentityRead_39/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:p
Read_40/DisableCopyOnReadDisableCopyOnRead*read_40_disablecopyonread_conv_3__kernel_1*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp*read_40_disablecopyonread_conv_3__kernel_1^Read_40/DisableCopyOnRead*&
_output_shapes
:0*
dtype0h
Identity_80IdentityRead_40/ReadVariableOp:value:0*
T0*&
_output_shapes
:0m
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*&
_output_shapes
:0s
Read_41/DisableCopyOnReadDisableCopyOnRead-read_41_disablecopyonread_batchnorm_4__beta_1*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp-read_41_disablecopyonread_batchnorm_4__beta_1^Read_41/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_82IdentityRead_41/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:0t
Read_42/DisableCopyOnReadDisableCopyOnRead.read_42_disablecopyonread_batchnorm_5__gamma_1*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp.read_42_disablecopyonread_batchnorm_5__gamma_1^Read_42/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_84IdentityRead_42/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:0j
Read_43/DisableCopyOnReadDisableCopyOnRead$read_43_disablecopyonread_fc__bias_1*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp$read_43_disablecopyonread_fc__bias_1^Read_43/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_86IdentityRead_43/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:n
Read_44/DisableCopyOnReadDisableCopyOnRead(read_44_disablecopyonread_conv_4__bias_1*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp(read_44_disablecopyonread_conv_4__bias_1^Read_44/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_88IdentityRead_44/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:0l
Read_45/DisableCopyOnReadDisableCopyOnRead&read_45_disablecopyonread_fc__kernel_1*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp&read_45_disablecopyonread_fc__kernel_1^Read_45/DisableCopyOnRead*
_output_shapes
:	�*
dtype0a
Identity_90IdentityRead_45/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:	�s
Read_46/DisableCopyOnReadDisableCopyOnRead-read_46_disablecopyonread_batchnorm_3__beta_1*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp-read_46_disablecopyonread_batchnorm_3__beta_1^Read_46/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_92IdentityRead_46/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:0p
Read_47/DisableCopyOnReadDisableCopyOnRead*read_47_disablecopyonread_conv_4__kernel_1*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp*read_47_disablecopyonread_conv_4__kernel_1^Read_47/DisableCopyOnRead*&
_output_shapes
:00*
dtype0h
Identity_94IdentityRead_47/ReadVariableOp:value:0*
T0*&
_output_shapes
:00m
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*&
_output_shapes
:00s
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_batchnorm_2__beta_1*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_batchnorm_2__beta_1^Read_48/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_96IdentityRead_48/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:s
Read_49/DisableCopyOnReadDisableCopyOnRead-read_49_disablecopyonread_batchnorm_5__beta_1*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp-read_49_disablecopyonread_batchnorm_5__beta_1^Read_49/DisableCopyOnRead*
_output_shapes
:0*
dtype0\
Identity_98IdentityRead_49/ReadVariableOp:value:0*
T0*
_output_shapes
:0a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:0n
Read_50/DisableCopyOnReadDisableCopyOnRead(read_50_disablecopyonread_conv_2__bias_1*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp(read_50_disablecopyonread_conv_2__bias_1^Read_50/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_100IdentityRead_50/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:n
Read_51/DisableCopyOnReadDisableCopyOnRead(read_51_disablecopyonread_conv_5__bias_1*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp(read_51_disablecopyonread_conv_5__bias_1^Read_51/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_102IdentityRead_51/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:0t
Read_52/DisableCopyOnReadDisableCopyOnRead.read_52_disablecopyonread_batchnorm_1__gamma_1*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp.read_52_disablecopyonread_batchnorm_1__gamma_1^Read_52/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_104IdentityRead_52/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:s
Read_53/DisableCopyOnReadDisableCopyOnRead-read_53_disablecopyonread_batchnorm_1__beta_1*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp-read_53_disablecopyonread_batchnorm_1__beta_1^Read_53/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_106IdentityRead_53/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:p
Read_54/DisableCopyOnReadDisableCopyOnRead*read_54_disablecopyonread_conv_2__kernel_1*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp*read_54_disablecopyonread_conv_2__kernel_1^Read_54/DisableCopyOnRead*&
_output_shapes
:*
dtype0i
Identity_108IdentityRead_54/ReadVariableOp:value:0*
T0*&
_output_shapes
:o
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*&
_output_shapes
:t
Read_55/DisableCopyOnReadDisableCopyOnRead.read_55_disablecopyonread_batchnorm_4__gamma_1*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp.read_55_disablecopyonread_batchnorm_4__gamma_1^Read_55/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_110IdentityRead_55/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:0p
Read_56/DisableCopyOnReadDisableCopyOnRead*read_56_disablecopyonread_conv_5__kernel_1*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp*read_56_disablecopyonread_conv_5__kernel_1^Read_56/DisableCopyOnRead*&
_output_shapes
:00*
dtype0i
Identity_112IdentityRead_56/ReadVariableOp:value:0*
T0*&
_output_shapes
:00o
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*&
_output_shapes
:00p
Read_57/DisableCopyOnReadDisableCopyOnRead*read_57_disablecopyonread_conv_1__kernel_1*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp*read_57_disablecopyonread_conv_1__kernel_1^Read_57/DisableCopyOnRead*&
_output_shapes
:*
dtype0i
Identity_114IdentityRead_57/ReadVariableOp:value:0*
T0*&
_output_shapes
:o
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*&
_output_shapes
:~
Read_58/DisableCopyOnReadDisableCopyOnRead8read_58_disablecopyonread_batchnorm_2__moving_variance_1*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp8read_58_disablecopyonread_batchnorm_2__moving_variance_1^Read_58/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_116IdentityRead_58/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_59/DisableCopyOnReadDisableCopyOnRead8read_59_disablecopyonread_batchnorm_4__moving_variance_1*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp8read_59_disablecopyonread_batchnorm_4__moving_variance_1^Read_59/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_118IdentityRead_59/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:0z
Read_60/DisableCopyOnReadDisableCopyOnRead4read_60_disablecopyonread_batchnorm_3__moving_mean_1*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp4read_60_disablecopyonread_batchnorm_3__moving_mean_1^Read_60/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_120IdentityRead_60/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:0z
Read_61/DisableCopyOnReadDisableCopyOnRead4read_61_disablecopyonread_batchnorm_2__moving_mean_1*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp4read_61_disablecopyonread_batchnorm_2__moving_mean_1^Read_61/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_122IdentityRead_61/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_62/DisableCopyOnReadDisableCopyOnRead8read_62_disablecopyonread_batchnorm_3__moving_variance_1*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp8read_62_disablecopyonread_batchnorm_3__moving_variance_1^Read_62/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_124IdentityRead_62/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:0z
Read_63/DisableCopyOnReadDisableCopyOnRead4read_63_disablecopyonread_batchnorm_5__moving_mean_1*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp4read_63_disablecopyonread_batchnorm_5__moving_mean_1^Read_63/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_126IdentityRead_63/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:0~
Read_64/DisableCopyOnReadDisableCopyOnRead8read_64_disablecopyonread_batchnorm_5__moving_variance_1*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp8read_64_disablecopyonread_batchnorm_5__moving_variance_1^Read_64/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_128IdentityRead_64/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:0z
Read_65/DisableCopyOnReadDisableCopyOnRead4read_65_disablecopyonread_batchnorm_1__moving_mean_1*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp4read_65_disablecopyonread_batchnorm_1__moving_mean_1^Read_65/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_130IdentityRead_65/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_66/DisableCopyOnReadDisableCopyOnRead8read_66_disablecopyonread_batchnorm_1__moving_variance_1*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp8read_66_disablecopyonread_batchnorm_1__moving_variance_1^Read_66/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_132IdentityRead_66/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_67/DisableCopyOnReadDisableCopyOnRead4read_67_disablecopyonread_batchnorm_4__moving_mean_1*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp4read_67_disablecopyonread_batchnorm_4__moving_mean_1^Read_67/DisableCopyOnRead*
_output_shapes
:0*
dtype0]
Identity_134IdentityRead_67/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:0L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0savev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *S
dtypesI
G2E	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_136Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_137IdentityIdentity_136:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_137Identity_137:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:?E;

_output_shapes
: 
!
_user_specified_name	Const_2::D6
4
_user_specified_namebatchnorm_4_/moving_mean_1:>C:
8
_user_specified_name batchnorm_1_/moving_variance_1::B6
4
_user_specified_namebatchnorm_1_/moving_mean_1:>A:
8
_user_specified_name batchnorm_5_/moving_variance_1::@6
4
_user_specified_namebatchnorm_5_/moving_mean_1:>?:
8
_user_specified_name batchnorm_3_/moving_variance_1::>6
4
_user_specified_namebatchnorm_2_/moving_mean_1::=6
4
_user_specified_namebatchnorm_3_/moving_mean_1:><:
8
_user_specified_name batchnorm_4_/moving_variance_1:>;:
8
_user_specified_name batchnorm_2_/moving_variance_1:0:,
*
_user_specified_nameconv_1_/kernel_1:09,
*
_user_specified_nameconv_5_/kernel_1:480
.
_user_specified_namebatchnorm_4_/gamma_1:07,
*
_user_specified_nameconv_2_/kernel_1:36/
-
_user_specified_namebatchnorm_1_/beta_1:450
.
_user_specified_namebatchnorm_1_/gamma_1:.4*
(
_user_specified_nameconv_5_/bias_1:.3*
(
_user_specified_nameconv_2_/bias_1:32/
-
_user_specified_namebatchnorm_5_/beta_1:31/
-
_user_specified_namebatchnorm_2_/beta_1:00,
*
_user_specified_nameconv_4_/kernel_1:3//
-
_user_specified_namebatchnorm_3_/beta_1:,.(
&
_user_specified_namefc_/kernel_1:.-*
(
_user_specified_nameconv_4_/bias_1:*,&
$
_user_specified_name
fc_/bias_1:4+0
.
_user_specified_namebatchnorm_5_/gamma_1:3*/
-
_user_specified_namebatchnorm_4_/beta_1:0),
*
_user_specified_nameconv_3_/kernel_1:4(0
.
_user_specified_namebatchnorm_2_/gamma_1:.'*
(
_user_specified_nameconv_1_/bias_1:4&0
.
_user_specified_namebatchnorm_3_/gamma_1:.%*
(
_user_specified_nameconv_3_/bias_1:($$
"
_user_specified_name
Variable:*#&
$
_user_specified_name
Variable_1:*"&
$
_user_specified_name
Variable_2:*!&
$
_user_specified_name
Variable_3:* &
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+
'
%
_user_specified_nameVariable_26:+	'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
Y
imageinput_unnormalized>
serve_imageinput_unnormalized:0���������b2<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
c
imageinput_unnormalizedH
)serving_default_imageinput_unnormalized:0���������b2>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�*
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29
&30
'31
(32
)33
*34
+35"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
#16
$17
%18
&19
*20
+21"
trackable_list_wrapper
�
0
	1

2
3
4
5
6
7
8
!9
"10
'11
(12
)13"
trackable_list_wrapper
�
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ltrace_02�
__inference___call___604�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *>�;
9�6
imageinput_unnormalized���������b2zLtrace_0
7
	Mserve
Nserving_default"
signature_map
$:"b22imageinput_/mean
(:&b22imageinput_/variance
:	 2imageinput_/count
(:&2conv_1_/kernel
:2conv_1_/bias
 :2batchnorm_1_/gamma
:2batchnorm_1_/beta
$:"2batchnorm_1_/moving_mean
(:&2batchnorm_1_/moving_variance
(:&2conv_2_/kernel
:2conv_2_/bias
 :2batchnorm_2_/gamma
:2batchnorm_2_/beta
$:"2batchnorm_2_/moving_mean
(:&2batchnorm_2_/moving_variance
(:&02conv_3_/kernel
:02conv_3_/bias
 :02batchnorm_3_/gamma
:02batchnorm_3_/beta
$:"02batchnorm_3_/moving_mean
(:&02batchnorm_3_/moving_variance
(:&002conv_4_/kernel
:02conv_4_/bias
 :02batchnorm_4_/gamma
:02batchnorm_4_/beta
$:"02batchnorm_4_/moving_mean
(:&02batchnorm_4_/moving_variance
(:&002conv_5_/kernel
:02conv_5_/bias
 :02batchnorm_5_/gamma
:02batchnorm_5_/beta
$:"02batchnorm_5_/moving_mean
(:&02batchnorm_5_/moving_variance
 :2seed_generator_state
:	�2
fc_/kernel
:2fc_/bias
:02conv_3_/bias
 :02batchnorm_3_/gamma
:2conv_1_/bias
 :2batchnorm_2_/gamma
(:&02conv_3_/kernel
:02batchnorm_4_/beta
 :02batchnorm_5_/gamma
:2fc_/bias
:02conv_4_/bias
:	�2
fc_/kernel
:02batchnorm_3_/beta
(:&002conv_4_/kernel
:2batchnorm_2_/beta
:02batchnorm_5_/beta
:2conv_2_/bias
:02conv_5_/bias
 :2batchnorm_1_/gamma
:2batchnorm_1_/beta
(:&2conv_2_/kernel
 :02batchnorm_4_/gamma
(:&002conv_5_/kernel
(:&2conv_1_/kernel
(:&2batchnorm_2_/moving_variance
(:&02batchnorm_4_/moving_variance
$:"02batchnorm_3_/moving_mean
$:"2batchnorm_2_/moving_mean
(:&02batchnorm_3_/moving_variance
$:"02batchnorm_5_/moving_mean
(:&02batchnorm_5_/moving_variance
$:"2batchnorm_1_/moving_mean
(:&2batchnorm_1_/moving_variance
$:"02batchnorm_4_/moving_mean
�
O	capture_0
P	capture_1B�
__inference___call___604imageinput_unnormalized"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zO	capture_0zP	capture_1
�
O	capture_0
P	capture_1B�
*__inference_signature_wrapper___call___678imageinput_unnormalized"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 ,

kwonlyargs�
jimageinput_unnormalized
kwonlydefaults
 
annotations� *
 zO	capture_0zP	capture_1
�
O	capture_0
P	capture_1B�
*__inference_signature_wrapper___call___751imageinput_unnormalized"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 ,

kwonlyargs�
jimageinput_unnormalized
kwonlydefaults
 
annotations� *
 zO	capture_0zP	capture_1
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant�
__inference___call___604�"OP!" #$'(%&*+H�E
>�;
9�6
imageinput_unnormalized���������b2
� "!�
unknown����������
*__inference_signature_wrapper___call___678�"OP!" #$'(%&*+c�`
� 
Y�V
T
imageinput_unnormalized9�6
imageinput_unnormalized���������b2"3�0
.
output_0"�
output_0����������
*__inference_signature_wrapper___call___751�"OP!" #$'(%&*+c�`
� 
Y�V
T
imageinput_unnormalized9�6
imageinput_unnormalized���������b2"3�0
.
output_0"�
output_0���������
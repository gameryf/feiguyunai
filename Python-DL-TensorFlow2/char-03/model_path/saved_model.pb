�
�
�

B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8�y
n
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_name
Variable
g
Variable/Read/ReadVariableOpReadVariableOpVariable* 
_output_shapes
:
��*
dtype0
m

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
Variable_1
f
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes	
:�*
dtype0
r

Variable_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_name
Variable_2
k
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2* 
_output_shapes
:
��*
dtype0
m

Variable_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
Variable_3
f
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes	
:�*
dtype0
q

Variable_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_name
Variable_4
j
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:	�@*
dtype0
l

Variable_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Variable_5
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:@*
dtype0
p

Variable_6VarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*
shared_name
Variable_6
i
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes

:@
*
dtype0
l

Variable_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
Variable_7
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:
*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
T
w1
b1
w2
b2
w3
b3
wout
bout
	
signatures
;9
VARIABLE_VALUEVariablew1/.ATTRIBUTES/VARIABLE_VALUE
=;
VARIABLE_VALUE
Variable_1b1/.ATTRIBUTES/VARIABLE_VALUE
=;
VARIABLE_VALUE
Variable_2w2/.ATTRIBUTES/VARIABLE_VALUE
=;
VARIABLE_VALUE
Variable_3b2/.ATTRIBUTES/VARIABLE_VALUE
=;
VARIABLE_VALUE
Variable_4w3/.ATTRIBUTES/VARIABLE_VALUE
=;
VARIABLE_VALUE
Variable_5b3/.ATTRIBUTES/VARIABLE_VALUE
?=
VARIABLE_VALUE
Variable_6wout/.ATTRIBUTES/VARIABLE_VALUE
?=
VARIABLE_VALUE
Variable_7bout/.ATTRIBUTES/VARIABLE_VALUE
 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOpVariable_3/Read/ReadVariableOpVariable_4/Read/ReadVariableOpVariable_5/Read/ReadVariableOpVariable_6/Read/ReadVariableOpVariable_7/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_save_3563810
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable
Variable_1
Variable_2
Variable_3
Variable_4
Variable_5
Variable_6
Variable_7*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__traced_restore_3563844�^
�
�
 __inference__traced_save_3563810
file_prefix'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop)
%savev2_variable_2_read_readvariableop)
%savev2_variable_3_read_readvariableop)
%savev2_variable_4_read_readvariableop)
%savev2_variable_5_read_readvariableop)
%savev2_variable_6_read_readvariableop)
%savev2_variable_7_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	Bw1/.ATTRIBUTES/VARIABLE_VALUEBb1/.ATTRIBUTES/VARIABLE_VALUEBw2/.ATTRIBUTES/VARIABLE_VALUEBb2/.ATTRIBUTES/VARIABLE_VALUEBw3/.ATTRIBUTES/VARIABLE_VALUEBb3/.ATTRIBUTES/VARIABLE_VALUEBwout/.ATTRIBUTES/VARIABLE_VALUEBbout/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop%savev2_variable_3_read_readvariableop%savev2_variable_4_read_readvariableop%savev2_variable_5_read_readvariableop%savev2_variable_6_read_readvariableop%savev2_variable_7_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*^
_input_shapesM
K: :
��:�:
��:�:	�@:@:@
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:	

_output_shapes
: 
�
�
__inference___call___3563765
x"
matmul_readvariableop_resource
add_readvariableop_resource$
 matmul_1_readvariableop_resource!
add_1_readvariableop_resource$
 matmul_2_readvariableop_resource!
add_2_readvariableop_resource$
 matmul_3_readvariableop_resource!
add_3_readvariableop_resource
identity��add/ReadVariableOp�add_1/ReadVariableOp�add_2/ReadVariableOp�add_3/ReadVariableOp�matmul/ReadVariableOp�matmul_1/ReadVariableOp�matmul_2/ReadVariableOp�matmul_3/ReadVariableOp�
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
matmul/ReadVariableOpf
matmulMatMulxmatmul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�2
matmul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
add/ReadVariableOpk
addAddV2matmul:product:0add/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�2
addG
ReluReluadd:z:0*
T0*
_output_shapes
:	@�2
Relu�
matmul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
matmul_1/ReadVariableOp}
matmul_1MatMulRelu:activations:0matmul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�2

matmul_1�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_1/ReadVariableOps
add_1AddV2matmul_1:product:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�2
add_1M
Relu_1Relu	add_1:z:0*
T0*
_output_shapes
:	@�2
Relu_1�
matmul_2/ReadVariableOpReadVariableOp matmul_2_readvariableop_resource*
_output_shapes
:	�@*
dtype02
matmul_2/ReadVariableOp~
matmul_2MatMulRelu_1:activations:0matmul_2/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2

matmul_2�
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:@*
dtype02
add_2/ReadVariableOpr
add_2AddV2matmul_2:product:0add_2/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2
add_2L
Relu_2Relu	add_2:z:0*
T0*
_output_shapes

:@@2
Relu_2�
matmul_3/ReadVariableOpReadVariableOp matmul_3_readvariableop_resource*
_output_shapes

:@
*
dtype02
matmul_3/ReadVariableOp~
matmul_3MatMulRelu_2:activations:0matmul_3/ReadVariableOp:value:0*
T0*
_output_shapes

:@
2

matmul_3�
add_3/ReadVariableOpReadVariableOpadd_3_readvariableop_resource*
_output_shapes
:
*
dtype02
add_3/ReadVariableOpr
add_3AddV2matmul_3:product:0add_3/ReadVariableOp:value:0*
T0*
_output_shapes

:@
2
add_3Q
SoftmaxSoftmax	add_3:z:0*
T0*
_output_shapes

:@
2	
Softmax�
IdentityIdentitySoftmax:softmax:0^add/ReadVariableOp^add_1/ReadVariableOp^add_2/ReadVariableOp^add_3/ReadVariableOp^matmul/ReadVariableOp^matmul_1/ReadVariableOp^matmul_2/ReadVariableOp^matmul_3/ReadVariableOp*
T0*
_output_shapes

:@
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:	@�::::::::2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2,
add_3/ReadVariableOpadd_3/ReadVariableOp2.
matmul/ReadVariableOpmatmul/ReadVariableOp22
matmul_1/ReadVariableOpmatmul_1/ReadVariableOp22
matmul_2/ReadVariableOpmatmul_2/ReadVariableOp22
matmul_3/ReadVariableOpmatmul_3/ReadVariableOp:B >

_output_shapes
:	@�

_user_specified_namex
�#
�
#__inference__traced_restore_3563844
file_prefix
assignvariableop_variable!
assignvariableop_1_variable_1!
assignvariableop_2_variable_2!
assignvariableop_3_variable_3!
assignvariableop_4_variable_4!
assignvariableop_5_variable_5!
assignvariableop_6_variable_6!
assignvariableop_7_variable_7

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	Bw1/.ATTRIBUTES/VARIABLE_VALUEBb1/.ATTRIBUTES/VARIABLE_VALUEBw2/.ATTRIBUTES/VARIABLE_VALUEBb2/.ATTRIBUTES/VARIABLE_VALUEBw3/.ATTRIBUTES/VARIABLE_VALUEBb3/.ATTRIBUTES/VARIABLE_VALUEBwout/.ATTRIBUTES/VARIABLE_VALUEBbout/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_3Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_4Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_5Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_6Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_7Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8�

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*5
_input_shapes$
": ::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�
�
w1
b1
w2
b2
w3
b3
wout
bout
	
signatures

__call__"
_generic_user_object
:
��2Variable
:�2Variable
:
��2Variable
:�2Variable
:	�@2Variable
:@2Variable
:@
2Variable
:
2Variable
"
signature_map
�2�
__inference___call___3563765�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 _
__inference___call___3563765?"�
�
�
x	@�
� "�@

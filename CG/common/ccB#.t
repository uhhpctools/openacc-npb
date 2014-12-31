=======================================================================
WN_Lower: "Fast exponents lowering"
flags are:
LOWER_FAST_EXP 
 LOC 0 0 source files:	1	"../common/wtime.c"
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "After lowering"
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "RETURN_VAL lowering"
flags are:
LOWER_RETURN_VAL 
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "After lowering"
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "MLDID/MSTID lowering"
flags are:
LOWER_MLDID_MSTID 
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "After lowering"
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "W2C Lowering"
flags are:
LOWER_MP LOWER_ACC 
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "After lowering"
FUNC_ENTRY <1,50,wtime_> {line: 1/8}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 0/0}
 END_BLOCK
 BLOCK {line: 1/8}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11}
 IF {line: 1/12}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13}
 RETURN {line: 1/13}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "Pre_Opt"
flags are:
LOWER_COMPLEX LOWER_ARRAY LOWER_ENTRY_EXIT LOWER_IO_STATEMENT LOWER_INLINE_INTRINSIC LOWER_PREFETCH_MAPS LOWER_ALIAS_MAPS LOWER_DEPGRAPH_MAPS LOWER_PARITY_MAPS LOWER_BASE_INDEX LOWER_FREQUENCY_MAPS LOWER_UPLEVEL LOWER_SHORTCIRCUIT LOWER_BIT_FIELD_ID LOWER_TO_MEMLIB <unrecognized> 
FUNC_ENTRY <1,50,wtime_> {line: 1/8} {freq: 0, ln: 8, col: 0}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0} {freq: 0, ln: 0, col: 0}
 END_BLOCK
 BLOCK {line: 0/0} {freq: 0, ln: 0, col: 0}
 END_BLOCK
 BLOCK {line: 1/8} {freq: 0, ln: 8, col: 0}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8} {freq: 0, ln: 8, col: 0}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11} {freq: 0, ln: 11, col: 0}
 IF {line: 1/12} {freq: 0, ln: 12, col: 0}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12} {freq: 0, ln: 12, col: 0}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12} {freq: 0, ln: 12, col: 0}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12} {freq: 0, ln: 12, col: 0}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13} {freq: 0, ln: 13, col: 0}
 RETURN {line: 1/13} {freq: 0, ln: 13, col: 0}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "After lowering"
FUNC_ENTRY <1,50,wtime_> {line: 1/8} {freq: 0, ln: 8, col: 0}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0} {freq: 0, ln: 0, col: 0}
 END_BLOCK
 BLOCK {line: 0/0} {freq: 0, ln: 0, col: 0}
 END_BLOCK
 BLOCK {line: 1/8} {freq: 0, ln: 8, col: 0}
  U8U8LDID 5 <1,9,.preg_U8> T<9,.predef_U8,8> # $r5
 U8STID 0 <2,1,t> T<53,anon_ptr.,8> {line: 1/8} {freq: 0, ln: 8, col: 0}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8} {freq: 0, ln: 8, col: 0}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11} {freq: 0, ln: 11, col: 0}
 IF {line: 1/12} {freq: 0, ln: 12, col: 0}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12} {freq: 0, ln: 12, col: 0}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12} {freq: 0, ln: 12, col: 0}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12} {freq: 0, ln: 12, col: 0}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13} {freq: 0, ln: 13, col: 0}
 RETURN {line: 1/13} {freq: 0, ln: 13, col: 0}
 END_BLOCK
=======================================================================
=======================================================================
WN_Lower: "After wn_unroll"
FUNC_ENTRY <1,50,wtime_> {line: 1/8} {freq: 0, ln: 8, col: 0}
 IDNAME 0 <2,1,t>
BODY
 BLOCK {line: 0/0} {freq: 0, ln: 0, col: 0}
 END_BLOCK
 BLOCK {line: 0/0} {freq: 0, ln: 0, col: 0}
 END_BLOCK
 BLOCK {line: 1/8} {freq: 0, ln: 8, col: 0}
  U8U8LDID 5 <1,9,.preg_U8> T<9,.predef_U8,8> # $r5
 U8STID 0 <2,1,t> T<53,anon_ptr.,8> {line: 1/8} {freq: 0, ln: 8, col: 0}
 PRAGMA 0 119 <null-st> 0 (0x0) # PREAMBLE_END {line: 1/8} {freq: 0, ln: 8, col: 0}
   U8LDA 0 <2,3,tv> T<55,anon_ptr.,8>
  U8PARM 2 T<55,anon_ptr.,8> #  by_value 
   U8INTCONST 0 (0x0)
  U8PARM 2 T<57,anon_ptr.,8,R> #  by_value 
 VCALL 126 <1,51,gettimeofday> # flags 0x7e {line: 1/11} {freq: 0, ln: 11, col: 0}
 IF {line: 1/12} {freq: 0, ln: 12, col: 0}
   I4I4LDID 0 <2,2,sec.2123> T<4,.predef_I4,4>
   I4INTCONST 0 (0x0)
  I4I4LT
 THEN
  BLOCK {line: 1/12} {freq: 0, ln: 12, col: 0}
   I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
  I4STID 0 <2,2,sec.2123> T<4,.predef_I4,4> {line: 1/12} {freq: 0, ln: 12, col: 0}
  END_BLOCK
 ELSE
  BLOCK {line: 1/12} {freq: 0, ln: 12, col: 0}
  END_BLOCK
 END_IF
     I8I8LDID 0 <2,3,tv> T<54,timeval,8> <field_id:1>
     I8I4LDID 0 <2,2,sec.2123> T<5,.predef_I8,8>
    I8SUB
   F8I8CVT
     I8I8LDID 8 <2,3,tv> T<54,timeval,8> <field_id:2>
    F8I8CVT
    F8CONST <1,52,1.000000000000000d-06>
   F8MPY
  F8ADD
  U8U8LDID 0 <2,1,t> T<53,anon_ptr.,8>
 F8ISTORE 0 T<53,anon_ptr.,8> {line: 1/13} {freq: 0, ln: 13, col: 0}
 RETURN {line: 1/13} {freq: 0, ln: 13, col: 0}
 END_BLOCK
=======================================================================
!!! DevWarn during Global Optimization -- Create CFG: Should use ST_pu_type instead
!!! DevWarn during Global Optimization -- MainOpt emitter: PREG (.preg_I8) has mismatching MTYPE-size and TY-size; refer to bug #567932
!!! DevWarn during Global Optimization -- MainOpt emitter: PREG (.preg_I8) has mismatching MTYPE-size and TY-size; refer to bug #567932

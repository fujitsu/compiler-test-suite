 use,intrinsic :: iso_c_binding
 implicit none

 integer(C_INT)		  :: int4_1
 integer(C_SHORT)	  :: int2_1
 integer(C_LONG)	  :: int4_2
 integer(C_LONG_LONG)	  :: int8_1
 integer(C_SIGNED_CHAR)	  :: int1_1
 integer(C_SIZE_T)	  :: int4_3
 integer(C_INT8_T)	  :: int1_2
 integer(C_INT16_T)	  :: int2_2
 integer(C_INT32_T)	  :: int4_4
 integer(C_INT64_T)	  :: int8_2
 integer(C_INT_LEAST8_T)  :: int1_3
 integer(C_INT_LEAST16_T) :: int2_3
 integer(C_INT_LEAST32_T) :: int4_5
 integer(C_INT_LEAST64_T) :: int8_3
 integer(C_INT_FAST8_T)   :: int1_4
 integer(C_INT_FAST16_T)  :: int4_6
 integer(C_INT_FAST32_T)  :: int4_7
 integer(C_INT_FAST64_T)  :: int8_4
 integer(C_INTMAX_T)      :: int8_5
 integer(C_INTPTR_T)      :: int4_8

 real(C_FLOAT)		  :: real4_1
 real(C_DOUBLE)		  :: real8_1
 real(C_LONG_DOUBLE)	  :: real16_1

 complex(C_FLOAT_COMPLEX) :: comp4_1
 complex(C_DOUBLE_COMPLEX):: comp8_1
 complex(C_LONG_DOUBLE_COMPLEX):: comp16_1

 logical(C_BOOL)	  :: logical1_1

 character(C_CHAR)	  :: char1_1

print *,'pass'
end

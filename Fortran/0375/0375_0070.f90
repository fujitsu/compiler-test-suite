program main
use,intrinsic :: iso_c_binding
interface
subroutine sub()
import C_INT,&
C_SHORT,&
C_LONG,&
C_LONG_LONG,&
C_SIGNED_CHAR,&
C_SIZE_T,&
C_INT8_T,&
C_INT16_T,&
C_INT32_T,&
C_INT64_T,&
C_INT_LEAST8_T,&
C_INT_LEAST16_T,&
C_INT_LEAST32_T,&
C_INT_LEAST64_T,&
C_INT_FAST8_T,&
C_INT_FAST16_T,&
C_INT_FAST32_T,&
C_INT_FAST64_T,&
C_INTMAX_T,&
C_INTPTR_T,&
C_FLOAT,&
C_DOUBLE,&
C_LONG_DOUBLE,&
C_FLOAT_COMPLEX,&
C_DOUBLE_COMPLEX,&
C_LONG_DOUBLE_COMPLEX,&
C_BOOL,&
C_CHAR
end subroutine
end interface
print *,'pass'
end program

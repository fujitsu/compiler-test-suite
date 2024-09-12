PROGRAM main
USE, INTRINSIC :: ISO_C_BINDING

TYPE, BIND(C) :: t_bind
INTEGER(c_int) :: rb
END TYPE

CLASS (*),POINTER ::ptr

TYPE(t_bind), POINTER :: bptr

bptr => ptr
 print*,'pass'

END

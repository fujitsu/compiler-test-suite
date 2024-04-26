call int_sub()
call real_sub()
call complex_sub()
call logical_sub()
call character_sub()
call type_sub()
end

subroutine int_sub()
use iso_c_binding
integer(c_int)        :: i4=1
integer(c_short)      :: i2=2
integer(c_long)       :: i8=3
integer(c_long_long)  :: i8_1=4
integer(c_signed_char):: i1=5
integer(c_size_t)     :: i8_2=6
integer(c_int8_t)     :: i1_1= 7
integer(c_int16_t)    :: i2_1=8
integer(c_int32_t)    :: i4_1=9
integer(c_int64_t)    :: i8_3=10
integer(c_int_least8_t)  :: i1_2=11
integer(c_int_least16_t) :: i2_2=12
integer(c_int_least32_t) :: i4_2=13
integer(c_int_least64_t) :: i8_4=14
integer(c_int_fast16_t)  :: i8_5=15
integer(c_int_fast32_t)  :: i8_6=16
integer(c_int_fast64_t)  :: i8_7=17
integer(c_intmax_t)      :: i8_8=18
integer(c_int_fast64_t)  :: i8_9=19
integer(c_intptr_t)      :: i8_10 =20
print *,'** INTEGER **'
print *,'i1=',c_sizeof(i1)
print *,'i2=',c_sizeof(i2)
print *,'i4=',c_sizeof(i4)
print *,'i8=',c_sizeof(i8)
print *,'i1_1=',c_sizeof(i1_1)
print *,'i1_2=',c_sizeof(i1_2)
print *,'i2_1=',c_sizeof(i2_1)
print *,'i2_2=',c_sizeof(i2_2)
print *,'i4_1=',c_sizeof(i4_1)
print *,'i4_2=',c_sizeof(i4_2)
print *,'i8_1=',c_sizeof(i8_1)
print *,'i8_2=',c_sizeof(i8_2)
print *,'i8_3=',c_sizeof(i8_3)
print *,'i8_4=',c_sizeof(i8_4)
print *,'i8_5=',c_sizeof(i8_5)
print *,'i8_6=',c_sizeof(i8_6)
print *,'i8_7=',c_sizeof(i8_7)
print *,'i8_8=',c_sizeof(i8_8)
print *,'i8_9=',c_sizeof(i8_9)
print *,'i8_10=',c_sizeof(i8_10)
end

subroutine real_sub()
use iso_c_binding
real(c_float) :: r4
real(c_double):: r8

print *,'** REAL **'
print *,'r4=',c_sizeof(r4)
print *,'r8=',c_sizeof(r8)
end

subroutine complex_sub()
use iso_c_binding
complex(c_float_complex)       :: cmp4
complex(c_double_complex)      :: cmp8

print *,'** COMPLEX **'
print *,'cmp4=',c_sizeof(cmp4)
print *,'cmp8=',c_sizeof(cmp8)
end

subroutine logical_sub()
use iso_c_binding
logical(c_bool) :: l1
print *,'** LOGICAL **'
print *,c_sizeof(l1)
end

subroutine character_sub()
use iso_c_binding
character(c_char) :: c1
print *,'** CHARACTER **'
print *,c_sizeof(c1)
end

subroutine type_sub()
use iso_c_binding
type(c_ptr)    :: t1
type(c_funptr) :: t2
type,bind(c):: ty
real(c_float):: x
end type
type(ty):: tp
print *,'** TYPE **'
print *,'c_ptr=',c_sizeof(t1)
print *,'c_funptr=',c_sizeof(t2)
print *,'type(bind)=',c_sizeof(tp)
end

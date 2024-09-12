type type_int0
 integer :: ii
end type

type type_int1
 integer(kind=1) :: i1
end type

type type_int2
 integer(kind=2) :: i2
end type

type type_int4
 integer(kind=4) :: i4
end type

type type_int8
 integer(kind=8) :: i8
end type

type type_real0
 real :: rr
end type

type type_real4
 real(kind=4) :: r4
end type

type type_real8
 real(kind=8) :: r8
end type

type type_real16
 real(kind=16) :: r16
end type

type type_comp0
 complex :: cc
end type

type type_comp4
 complex(kind=4) :: r4
end type

type type_comp8
 complex(kind=8) :: r8
end type

type type_comp16
 complex(kind=16) :: r16
end type

type type_log0
 logical :: ll
end type

type type_log1
 logical(kind=1) :: i1
end type

type type_log2
 logical(kind=2) :: i2
end type

type type_log4
 logical(kind=4) :: i4
end type

type type_log8
 logical(kind=8) :: i8
end type

type type_int
 type(type_int0) :: ti0
 type(type_int1) :: ti1
 type(type_int2) :: ti2
 type(type_int4) :: ti4
 type(type_int8) :: ti8
end type

type type_real
 type(type_real0)  :: tr0
 type(type_real4)  :: tr4
 type(type_real8)  :: tr8
 type(type_real16) :: tr16
end type

type type_comp
 type(type_comp0)  :: tc0
 type(type_comp4)  :: tc4
 type(type_comp8)  :: tc8
 type(type_comp16) :: tc16
end type

type type_log
 type(type_log0) :: tl0
 type(type_log1) :: tl1
 type(type_log2) :: tl2
 type(type_log4) :: tl4
 type(type_log8) :: tl8
end type

type (type_int)  :: tii1(0)
type (type_real) :: trr1(0)
type (type_comp) :: tcc1(0)
type (type_log)  :: tll1(0)

if (size([type_log  ::]).ne.size([(type_int(type_int0(0), type_int1(1_1), type_int2(2_2), type_int4(4_4), type_int8(8_8)), i = 1, 0)])) print *,'error'

if (size([type_comp ::]).ne.size([(type_real(type_real0(0.0), type_real4(4.0), type_real8(8.0), type_real16(16.0)),        i = 1, 0)])) print *,'error'

tii1 = [type_int  ::]
trr1 = [type_real ::]
tcc1 = [type_comp ::]
tll1 = [type_log  ::]

if (size(tii1).ne.size(tll1)) print *,'error'
if (size(trr1).ne.size(tcc1)) print *,'error'

print *,'pass'

end

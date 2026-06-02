module m01
type a
 integer,allocatable::x(:)
end type
contains
subroutine alc1(x)
 type(a),allocatable::x(:)
 allocate(x(2))
end subroutine
subroutine alc2(x)
 type(a),pointer    ::x(:)
 allocate(x(2))
end subroutine
subroutine alc(x)
 integer,allocatable::x(:)
 allocate(x(2))
end subroutine
subroutine s01()
type(a)::v11(2),v12(2)
call alc(v11(2)%x)
v11(2)%x(2)=11
v12=v11
if (v12(2)%x(2)/=11)print *,'fail'
v12(2)%x(2)=31
if (v12(2)%x(2)/=31)print *,'fail'
end subroutine
subroutine s02
type(a),pointer::v21(:),v22(:)
call alc2(v21)
call alc2(v22)
call alc(v21(2)%x);v21(2)%x(2)=21
v22=v21
if (v22(2)%x(2)/=21)print *,'fail'
v22(2)%x(2)=41
if (v22(2)%x(2)/=41)print *,'fail'
end subroutine
subroutine s03
type(a),allocatable::v31(:),v32(:)
call alc1(v31)
call alc1(v32)
call alc(v31(2)%x);v31(2)%x(2)=31
v32=v31
if (v32(2)%x(2)/=31)print *,'fail'
v32(2)%x(2)=51
if (v32(2)%x(2)/=51)print *,'fail'
end subroutine
subroutine s04(v41,v42)
type(a)::v41(2),v42(2)
call alc(v41(2)%x);v41(2)%x(2)=41
v42=v41
if (v42(2)%x(2)/=41)print *,'fail'
v42(2)%x(2)=61
if (v42(2)%x(2)/=61)print *,'fail'
end subroutine
subroutine s05(v51,v52)
type(a),pointer::v51(:),v52(:)
call alc2(v51)
call alc2(v52)
call alc(v51(2)%x);v51(2)%x(2)=51
v52=v51
if (v52(2)%x(2)/=51)print *,'fail'
v52(2)%x(2)=71
if (v52(2)%x(2)/=71)print *,'fail'
end subroutine
subroutine s06(v61,v62)
type(a),allocatable::v61(:),v62(:)
call alc1(v61)
call alc1(v62)
call alc(v61(2)%x);v61(2)%x(2)=61
v62=v61
if (v62(2)%x(2)/=61)print *,'fail'
v62(2)%x(2)=81
if (v62(2)%x(2)/=81)print *,'fail'
end subroutine
end
use m01
type(a)::v41(2),v42(2)
type(a),pointer::v51(:),v52(:)
type(a),allocatable::v61(:),v62(:)
call s01
call s02
call s03
call s04(v41,v42)
call s05(v51,v52)
call s06(v61,v62)
print *,'pass'
end

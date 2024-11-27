module m01
type a
 integer,allocatable::x(:)
end type
contains
subroutine s01()
type(a)::v11(2),v12(2)
allocate(v11(2)%x(2))
v11(2)%x(2)=11
v12=v11
if (v11(2)%x(2)/=11)write(6,*) "NG"
if (v12(2)%x(2)/=11)write(6,*) "NG"
end subroutine
subroutine s02
type(a),pointer::v21(:),v22(:)
allocate(v21(2))
allocate(v22(2))
allocate(v21(2)%x(2))
v21(2)%x(2)=21
v22=v21
if (v21(2)%x(2)/=21)write(6,*) "NG"
if (v22(2)%x(2)/=21)write(6,*) "NG"
end subroutine
subroutine s03
type(a),allocatable::v31(:),v32(:)
allocate(v31(2))
allocate(v32(2))
allocate(v31(2)%x(2))
v31(2)%x(2)=31
v32=v31
if (v31(2)%x(2)/=31)write(6,*) "NG"
if (v32(2)%x(2)/=31)write(6,*) "NG"
end subroutine
subroutine s04(v41,v42)
type(a)::v41(2),v42(2)
allocate(v41(2)%x(2))
v41(2)%x(2)=41
v42=v41
if (v41(2)%x(2)/=41)write(6,*) "NG"
if (v42(2)%x(2)/=41)write(6,*) "NG"
end subroutine
subroutine s05(v51,v52)
type(a),pointer::v51(:),v52(:)
allocate(v51(2))
allocate(v52(2))
allocate(v51(2)%x(2))
v51(2)%x(2)=51
v52=v51
if (v51(2)%x(2)/=51)write(6,*) "NG"
if (v52(2)%x(2)/=51)write(6,*) "NG"
end subroutine
subroutine s06(v61,v62)
type(a),allocatable::v61(:),v62(:)
allocate(v61(2))
allocate(v62(2))
allocate(v61(2)%x(2))
v61(2)%x(2)=61
v62=v61
if (v61(2)%x(2)/=61)write(6,*) "NG"
if (v62(2)%x(2)/=61)write(6,*) "NG"
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

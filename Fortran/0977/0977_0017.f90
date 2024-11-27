module m01
type a
 integer,allocatable::x(:)
end type
contains
subroutine s(v41,v42,v51,v52,v61,v62)
type(a)::v11(2),v12(2)
type(a),pointer::v21(:),v22(:)
type(a),allocatable::v31(:),v32(:)
type(a)::v41(2),v42(2)
type(a),pointer::v51(:),v52(:)
type(a),allocatable::v61(:),v62(:)
allocate(v21(2),v31(2),v51(2),v61(2))
allocate(v22(2),v32(2),v52(2),v62(2))
allocate(v11(2)%x(2));v11(2)%x(2)=11
allocate(v21(2)%x(2));v21(2)%x(2)=21
allocate(v31(2)%x(2));v31(2)%x(2)=31
allocate(v41(2)%x(2));v41(2)%x(2)=41
allocate(v51(2)%x(2));v51(2)%x(2)=51
allocate(v61(2)%x(2));v61(2)%x(2)=61
v12=v11
v22=v21
v32=v31
v42=v41
v52=v51
v62=v61
if (v12(2)%x(2)/=11)write(6,*) "NG"
if (v22(2)%x(2)/=21)write(6,*) "NG"
if (v32(2)%x(2)/=31)write(6,*) "NG"
if (v42(2)%x(2)/=41)write(6,*) "NG"
if (v52(2)%x(2)/=51)write(6,*) "NG"
if (v62(2)%x(2)/=61)write(6,*) "NG"
end subroutine
end
use m01
type(a)::v41(2),v42(2)
type(a),pointer::v51(:),v52(:)
type(a),allocatable::v61(:),v62(:)
call s(v41,v42,v51,v52,v61,v62)
print *,'pass'
end

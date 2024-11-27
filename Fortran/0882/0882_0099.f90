type ty
integer(kind=8) :: xx
end type ty
 
type,extends(ty) :: ty1
integer(kind=8) :: yy
end type ty1

class(ty1),pointer :: cptr1(:)
type(ty1),pointer :: tptr2(:)
call sub(NULL(NULL(NULL(cptr1))),NULL(),tptr2,NULL())        
contains

subroutine sub(d_cptr,d_cptr1,d_tptr,d_cptr2)
class(ty1),pointer ::d_cptr(:)
type(ty1),pointer :: d_cptr2(:)
class(ty1),pointer :: d_cptr1(:)
type(ty1),pointer :: d_tptr(:)
type(ty1),target  :: trg(10)
integer :: err

allocate(d_cptr1(10), STAT=err)
if(err .EQ. 0) then
print *, "SUCCESS-1"
else
print *, "FAILURE-1"
endif

allocate(d_cptr2(10), STAT=err)
if(err .EQ. 0) then
print *, "SUCCESS -2"
else
print *, "FAILURE -2"
endif

allocate(d_tptr(10), STAT=err)
if(err .EQ. 0) then
print *, "SUCCESS  -3"
else
print *, "FAILURE -3"
endif

d_cptr=>trg
d_cptr(1)%xx = 10
print*, d_cptr(1)%xx 
end subroutine
end

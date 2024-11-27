Program main
type ty1
integer  :: ii=10
end type ty1

type ty
class(*),allocatable :: calc(:)
end type

type(ty1),target   :: obj_tar(10)
class(ty1),pointer :: obj_ptr(:)
type(ty) :: obj

obj_ptr=>obj_tar
obj_ptr(1)%ii =5
call sub(obj_ptr,obj)

contains 
subroutine sub(dum,dum2)
class(*) :: dum(:)
type(ty):: dum2
class(*),allocatable :: obj_loc(:)
dum2=ty(dum)
allocate(obj_loc,source=dum2%calc)
select type(obj_loc)
TYPE IS(ty1)
if(sizeof(obj_loc) /=40)then
print *,"FAIL"
else if(obj_loc(2)%ii /=10)then
print *,"FAIL"
elseif(obj_loc(1)%ii /=5)then
print *,"FAIL"
else
print*,"PASS"
endif
end select

end subroutine sub
end Program main

program test
implicit none 
type drv1
integer ii
integer jj
end type

type,extends(drv1) :: drv2
integer mm
integer nn
end type

class(drv2),allocatable :: ptr(:)

allocate(ptr(4))

if(allocated(ptr)) then
ptr(1)%ii = 10
ptr(1)%jj = 11
ptr(1)%mm = 12
ptr(2)%ii = 13
ptr(2)%jj = 14
ptr(2)%mm = 15
ptr(3)%ii = 16
ptr(3)%jj = 17
ptr(3)%mm = 18
ptr(4)%ii = 19
ptr(4)%jj = 20
ptr(4)%mm = 21
print *, 'Memory ALLOCATION SUCCESS'
else 
print *, 'Memory ALLOCATION FAILURE'
end if 

print*, ptr(1)%ii
call sub(ptr(1) )
print*, ptr(1)%jj

contains
subroutine sub(dum) 
class(drv2):: dum
dum%jj=40
print *, dum%jj
print *, dum%ii

end subroutine sub
end

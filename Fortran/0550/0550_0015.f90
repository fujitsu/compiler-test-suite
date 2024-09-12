program main
implicit none 

real, allocatable :: rr(:)
allocate(rr(1:5))

if(allocated(rr)) then
rr(1) = 10
rr(2) = 20
rr(3) = 30
rr(4) = 40
rr(5) = 50
print *, 'Memory ALLOCATION SUCCESS'
else
print *, 'Memory ALLOCATION FAILURE'
end if

print*, rr(1)

call sub(rr(1))

print*, rr(2)
contains

subroutine sub(dum) 
class(*):: dum
print*, "In Subroutine"
end subroutine
end

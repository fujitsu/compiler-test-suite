program test
integer ,pointer :: ptr
integer ,target  :: trgt
trgt = 10
ptr=>trgt
print*, ptr
call sub(ptr)
print*, ptr
contains
subroutine sub(dum) 
integer :: dum
integer :: int2
int2 = dum
dum=20
print *, int2
end subroutine sub
end

program test

integer ,pointer :: ptr
integer,target   :: trgt
trgt = 10
ptr=>trgt
print*, ptr
call sub(NULL(ptr))
print*, trgt
contains
subroutine sub(dum) 
integer, POINTER:: dum
dum=>trgt
dum=30
print *, dum
end subroutine sub
end

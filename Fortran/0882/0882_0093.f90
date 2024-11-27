program test
REAL ,pointer :: ptr
REAL ,target  :: trgt
trgt = 10.0000
ptr=>trgt
print*, ptr
call sub(NULL())
print*, ptr
contains
subroutine sub(dum) 
REAL, POINTER :: dum
REAL, target :: r2
integer :: err
r2 = 20.0000
allocate(dum, STAT=err)
if (err .EQ. 0) then
print *, "SUCCESS"
dum =40.0000
else
print *, "FAILURE"
end if 

print *, dum,  r2      
end subroutine sub
end

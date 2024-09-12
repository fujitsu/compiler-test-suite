PROGRAM MAIN
IMPLICIT NONE
integer,pointer :: ii1,ii2
integer :: kk=5

allocate(ii1,ii2,source=f(),stat=kk)

if(kk .ne. 0 )print*,101
if(ii1.ne. 1 )print*,102
if(ii2.ne. 1 )print*,103

print*,'pass'
contains 
function f()
   integer f
   f=1
end function
END PROGRAM

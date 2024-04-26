PROGRAM MAIN
IMPLICIT NONE
integer,pointer :: ii
integer :: kk
allocate(ii,mold=f(),stat=kk)
if(kk .eq. 0 )then
print*,'pass'
else
print*,101
end if
contains 
function f()
   integer f
   f=1
end function
END PROGRAM

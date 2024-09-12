PROGRAM MAIN
IMPLICIT NONE
interface
function f(x)
   integer ::f,x
end function

function fen()
   integer ::fen
end function
end interface

integer,allocatable :: ii1,ii2
integer :: kk
allocate(ii1,ii2,source=fen(),stat=kk)
if(kk .ne. 0 )print*,101
if(ii1.ne. 1 )print*,102
if(ii2.ne. 1 )print*,103
print*,'pass'
END PROGRAM

function f(x)
   integer ::f,fen,x
   f=x
entry fen()
   fen=1
end function

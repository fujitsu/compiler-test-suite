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

integer,allocatable :: ii
integer :: kk
allocate(ii,mold=fen(),stat=kk)
if(kk .eq. 0 )then
print*,'pass'
else
print*,101
ii=2
end if
END PROGRAM

function f(x)
   integer ::f,fen,x
   f=x
entry fen()
   fen=1
end function

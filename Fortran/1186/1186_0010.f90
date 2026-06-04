 module mod
  implicit none
  contains
    subroutine sub
  block
   integer::  g3,p1
   g3=1
   p1=1
   write(1,*)g3,p1
  end block
end
end
use mod
call sub
rewind 1
read(1,*) n1,n2
if (n1/=1) print *,2992
if (n2/=1) print *,2592
print *,'sngg333p : pass'
end

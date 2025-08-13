module m1
  implicit none
  integer ::k
end 

module m2
  implicit none
  integer,parameter :: d = 2
end module m2

module m3
  use m2 
  use m1
  implicit none
  integer :: e = d
end module m3

module m4
  use m3, ONLY :
  use m1 
  implicit none
contains
subroutine sub
k=1
  write(2,*)k
end subroutine
end

use m4,ONLY:
  use m1 
  implicit none
integer::k1
k=1
  write(2,*)k
call xx 
rewind 2
read(2,*) k1
if (k1/=1) print *,201
read(2,*) k1
if (k1/=1) print *,202

print *,'pass'

end
subroutine xx
use m4
call sub
end

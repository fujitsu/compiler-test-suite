module test
 implicit none
  procedure(),pointer:: p=> null()
  procedure(),pointer:: pp
integer::n
end
module m1
use test
end
subroutine sub
use m1
implicit none
if (.not.associated( p ) )print *,201
if (.not.associated( pp ) )print *,202
call p()
call pp()
end
use m1
interface 
  subroutine s()
  end subroutine
end interface
n=0
p=>s
pp=>s
call sub
if (n/=1) print *,501
n=0
call sub
if (n/=1) print *,502
print *,'pass'
end
  subroutine s()
use test
n=1
  end subroutine

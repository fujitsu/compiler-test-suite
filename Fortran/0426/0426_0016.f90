module mm
private
public xyz,gen
type xyz
 integer :: a
   contains
   procedure :: prc
  generic:: gen=>prc
end type xyz
contains
 subroutine prc( this )
  class(xyz),intent(out):: this
  this%a = 1
 end subroutine
end
module m001
use mm,only:xyz
private
public v3
  type (xyz)   :: v3
end
module m002
use mm,only:xyz
private
public v4,chk12
  type (xyz)   :: v4
contains
 subroutine chk12
  if (v4%a/=1)print *,304 
 end subroutine
end
module m003
use mm,only:xyz
private
public w1,chk11
  type (xyz)   :: w1
contains
 subroutine chk11
  if (w1%a/=1)print *,302 
 end subroutine
end
module m004
use mm,only:xyz
private
public chk
contains
 subroutine chk(d)
  class(xyz),intent(in):: d
  if (d%a/=1)print *,301 
 end subroutine
end
module m1
use mm
use m001
use m002
use m003
use m004
private
public:: chk,chk11,chk12,foo,w1,v4
contains
 function foo( v1 ) result(v2)
  type (xyz),intent(out):: v1
  type (xyz)            :: v2
  call v1% gen 
  call v2% gen
  call v3% gen
if (v3%a/=1) print *,103
 end function
end module
module m2
use m1
private
public:: s1
contains
subroutine s1
call chk(foo(w1)) 
  call v4% gen
call chk11
call chk12
end subroutine
end
use m2
call s1
print *,'pass'
end

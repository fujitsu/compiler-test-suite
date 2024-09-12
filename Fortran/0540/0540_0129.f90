module m0123456789012
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  private
  public::x1,sub   
contains
 subroutine   sub(x) 
  class(x1),allocatable,intent(in)::x
class(x1),allocatable:: v00
allocate(v00)
if (.not.same_type_as(x,v00)) print *,10010
if (.not.extends_type_of(x,v00)) print *,10011

 end subroutine 
end
module d
contains 
subroutine s1(d1)
use m0123456789012
class(x1),allocatable:: d1
end subroutine
end
use d
use m0123456789012
class(x1),allocatable:: v00
allocate(v00)
deallocate(v00)
call sub  (v00 )

print *,'pass'
end

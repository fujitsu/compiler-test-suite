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
   class(x0),intent(in)::x
   k=0
   select type(x)
    type is(x1)
   k=1
   end select
if (k/=1) print *,2002
 end subroutine 
end
module d
contains 
subroutine s1(d1)
use m0123456789012
class(x1),allocatable:: d1
end subroutine
end
module n2
contains
subroutine n2sub
use m0123456789012
class(x1),allocatable:: v00
allocate(v00)
call check(v00)
end subroutine
subroutine check(v)
use d
use m0123456789012
class(x1),allocatable:: v
call sub  (v )
end subroutine
end
use n2
call n2sub
print *,'pass'
end
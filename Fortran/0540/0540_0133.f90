module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  private
  public::x1,sub,v 
class(x1),allocatable:: v
contains
 subroutine   sub(x) 
   class(x0),intent(in)::x
   class(x1),allocatable:: var
   allocate(var)
   k=0
   select type(x)
    type is(x1)
   k=1
   end select
if (k/=1) print *,2002
if (.not.same_type_as(var,x)) print *,3001
if (.not.same_type_as(var,v)) print *,3002
 end subroutine 
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
use d
use m1
allocate(v)
call sub  (v )

print *,'pass'
end

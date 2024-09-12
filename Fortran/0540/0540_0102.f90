module m1
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
call sub1
contains
 subroutine   sub1 
  type y0
    integer::x01
  end type
  type,extends(y0)::y1
    integer::x11
  end type
class(y0),allocatable:: v
allocate(y1::v)
v%x01=1
   k=0
   select type(v)
    type is(y1)
   k=1
   end select
if (k/=1) print *,2012
   k=0
   select type(v)
    type is(y0)
   k=1
   end select
if (k/=0) print *,2022
 end subroutine 
 end subroutine 
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
use m1
use d
class(x1),allocatable:: v00
allocate(v00)
v00%x01=1
call sub  (v00 )

print *,'pass'
end

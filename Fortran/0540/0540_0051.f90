module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02z
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::x1
contains
 function   prc02z(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end function
end
module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::x1
contains
 function   prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
print *,99998
   select type(x)
    type is(x1)
print *,99999
      kk=x%x01 + y + 1 +10
   end select
   flag=2
 end function
end
module d
contains 
subroutine s1(d1,d2)
use m1
use m2,x11=>x1
class(x1),allocatable:: d1
class(x11),allocatable:: d2
end
end
use d
use m1
use m2,x11=>x1
class(x1),allocatable:: v00
class(x11),allocatable:: v11
allocate(v00)
v00%x01=1
if ((v00.add.2_1 )/= 4) print *,'error-003' 

print *,'pass'
end

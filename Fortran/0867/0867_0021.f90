module n12
  type x0
    integer::x01
    contains
      procedure:: t_prc00=>x2z
      generic:: operator(.add.) => t_prc00
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>x2y
      generic:: operator(.add.) => t_prc02
  end type
  integer::flag
  private
  public::flag
contains
 function   x2z(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
print *,'incorrect'
 end function
 function   x2y(x,y) result(kk)
   class(x1),intent(in)::x
   integer(2) ,intent(in)::y
print *,'incorrect'
 end function
end
module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc00=>prc00
      generic:: operator(.add.) => t_prc00
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc02
      generic:: operator(.add.) => t_prc02
  end type
  integer::flag
  private
  public::s1,x1,x0,v11
class(x0),allocatable:: v11
contains
 function   prc00(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x0)
      kk=x%x01 + y + 10000
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end function
 function   prc02(x,y) result(kk)
   class(x1),intent(in)::x
   integer(2) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 10
   end select
   flag=2
 end function
end
use n12
use m2
allocate(x1::v11)
v11%x01=1
if ((v11.add.3_1 )/= 5 ) print *,'error-313' 
select type(v11)
type is(x1)
if ((v11.add.3_1 )/= 5 ) print *,'error-413' 
if ((v11.add.2_2 )/= 13) print *,'error-513' 
end select
print *,'pass'
end

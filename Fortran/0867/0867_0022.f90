module n12
  type x0
    integer::x01
    contains
      procedure:: t_prc00=>x2z
      procedure:: t_prc10=>x3z
      generic:: operator(.add.) => t_prc00
      generic:: assignment(=) => t_prc10
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>x2y
      generic:: operator(.add.) => t_prc02
      procedure:: t_prc12=>x3y
      generic:: assignment(=)=> t_prc12
  end type
  integer::flag
  private
  public::flag
contains
 subroutine  x3z(x,y) 
   class(x0),intent(out)::x
   integer(1) ,intent(in)::y
print *,'incorrect'
 end subroutine
 subroutine  x3y(x,y) 
   class(x1),intent(out)::x
   integer(2) ,intent(in)::y
print *,'incorrect'
 end subroutine
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
      procedure:: t_prc10=>x3z
      generic:: assignment(=) => t_prc10
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc02
      generic:: operator(.add.) => t_prc02
      procedure:: t_prc12=>x3y
      generic:: assignment(=)=> t_prc12
  end type
  integer::flag
  private
  public::s1,x1,x0
contains
 subroutine  x3z(x,y) 
   class(x0),intent(out)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x0)
      x%x01=  y + 10000
    type is(x1)
      x%x01 = y + 1
   end select
 end subroutine
 subroutine  x3y(x,y) 
   class(x1),intent(out)::x
   integer(2) ,intent(in)::y
   select type(x)
    type is(x1)
      x%x01 = y + 1
   end select
 end subroutine
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
class(x1),allocatable:: v11
allocate(v11)
v11%x01=1
if ((v11.add.2_2 )/= 13) print *,'error-313' 
v11=2_2
if (v11%x01/=3) print *,809,v11%x01
print *,'pass'
end

module n12
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>x2z
      generic:: operator(.add.) => t_prc02
      procedure:: t_prc12=>x3z
      generic:: assignment(=)=> t_prc12
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::x1
contains
 function   x2z(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
print *,'incorrect'
 end function
 subroutine  x3z(x,y)
   class(x0),intent(out)::x
   integer(1) ,intent(in)::y
print *,'incorrect'
 end subroutine
end
module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02
      generic:: operator(.add.) => t_prc02
      procedure:: t_prc12=>x3z
      generic:: assignment(=)=> t_prc12
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
  private
  public::s1,x1
contains
 subroutine  x3z(x,y)
   class(x0),intent(out)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      x%x01 = y + 1
   end select
 end subroutine
 function   prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end function
end
use n12
use m2,x11=>x1
class(x11),allocatable:: v11
allocate(v11)
v11%x01=1
if ((v11.add.2_1 )/= 4) print *,'error-013' 
v11=    2_1 
if (v11%x01/= 3) print *,'error-113',v11%x01 
print *,'pass'
end

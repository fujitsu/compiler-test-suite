module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc03
      generic:: gen =>             t_prc02
  end type
  type,extends(x0)::x2
    integer::x12
    contains
      procedure:: t_prc02=>prc02
      generic:: gen =>             t_prc02
  end type
  integer::test
contains
 subroutine prc03(x,y) 
   class(x1),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
 subroutine prc02(x,y) 
   class(x2),intent(in)::x
   integer(1) ,intent(in)::y
      print *,'Incorrect'
   select type(x)
    type is(x2)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
end
module m2
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc03
      generic:: gen =>             t_prc02
  end type
  type,extends(x0)::x2
    integer::x12
    contains
      procedure:: t_prc02=>prc02
      generic:: gen =>             t_prc02
  end type
  integer::flag
  integer::kk
contains
 subroutine prc02(x,y) 
   class(x2),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x2)
      kk=x%x01 + y + 10
   end select
   flag=2
 end subroutine
 subroutine prc03(x,y) 
   class(x1),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
end
use m1,only:test
use m2
type (x2),target     :: v22t
type (x1),target     :: v11t
class(x0),pointer    :: v00p
v00p=>v11t
v00p%x01=1
call v11t%t_prc02(2_1) 
if (kk            /= 4) print *,'error-013',kk
v00p=>v22t
v00p%x01=1
call v22t%t_prc02(2_1) 
if (kk            /=13) print *,'error-012',kk
print *,'pass'
end

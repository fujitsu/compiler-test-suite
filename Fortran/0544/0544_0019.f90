module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc02
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc03
  end type
  integer::flag
  integer::kk
contains
 subroutine prc02(x,y) 
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x0)
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
use m2
type (x0),target     :: v00t
type (x1),target     :: v11t
class(x0),pointer    :: v11p
v11p=>v11t
v11p%x01=1
call v11p%t_prc02(2_1) 
if (kk            /= 4) print *,'error-013',kk
v11p=>v00t
v11p%x01=1
call v11p%t_prc02(2_1) 
if (kk            /=13) print *,'error-012',kk
print *,'pass'
end

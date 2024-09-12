module m2
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc03=>prc03
      generic:: gen =>             t_prc03
  end type
  type,extends(x0)::x2
    integer::x12
  end type
  integer::flag
  integer::kk
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
end
use m2
class(x1),pointer    :: v11p
allocate(v11p)
v11p%x01=1
call v11p%t_prc03(2_1) 
if (kk            /= 4) print *,'error-013',kk
print *,'pass'
end

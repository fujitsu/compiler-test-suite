module n12
  type x0
    integer::x01
    contains
      procedure:: t_prc00=>prc00
      generic:: gen =>             t_prc00
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc01=>prc01
      generic:: gen =>             t_prc01
  end type
  type,extends(x0)::x2
    integer::x12
    contains
      procedure:: t_prc02=>prc02
      generic:: gen =>             t_prc02
  end type
  integer::test
contains
 subroutine prc00(x,y) 
   class(x0),intent(in)::x
   integer(2) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
 subroutine prc01(x,y) 
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
    contains
      procedure:: t_prc00=>prc00
      generic:: gen =>             t_prc00
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc01=>prc01
      generic:: gen =>             t_prc01
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
 subroutine prc01(x,y) 
   class(x1),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
 subroutine prc00(x,y) 
   class(x0),intent(in)::x
   integer(2) ,intent(in)::y
   select type(x)
    type is(x0)
      kk=x%x01 + y + 1
   end select
   flag=2
 end subroutine
end
use n12,only:test
use m2
class(x1),allocatable    :: v11p
allocate(v11p)
v11p%x01=1
call v11p%t_prc01(2_1) 
if (kk            /= 4) print *,'error-013',kk
print *,'pass'
end

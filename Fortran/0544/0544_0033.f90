module m1
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
      procedure:: t_prc03=>prc03
      generic:: gen =>             t_prc03
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
type (x2),allocatable    :: v22p
type (x1),target     :: v11t
class(x1),allocatable    :: v11p
allocate(v11p)
v11p%x01=1
v11t%x01=1
call v11p%t_prc03(2_1) 
if (kk            /= 4) print *,'error-013',kk
call v11t%t_prc03(2_1) 
if (kk            /= 4) print *,'error-0131',kk
call v11t%gen    (2_1) 
if (kk            /= 4) print *,'error-0132',kk
call v11p%gen    (2_1) 
if (kk            /= 4) print *,'error-0133',kk
allocate(v22p)
v22p%x01=1
v22t%x01=1
call v22p%t_prc02(2_1) 
if (kk            /=13) print *,'error-0124',kk
call v22t%t_prc02(2_1) 
if (kk            /=13) print *,'error-0125',kk
call v22t%gen    (2_1) 
if (kk            /=13) print *,'error-0126',kk
call v22p%gen    (2_1) 
if (kk            /=13) print *,'error-0127',kk
print *,'pass'
end

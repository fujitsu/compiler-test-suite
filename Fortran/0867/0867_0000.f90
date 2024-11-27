module m1
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
use m1,only:test
use m2
type (x2),target     :: v22t
class(x2),allocatable    :: v22p
type (x1),target     :: v11t
class(x1),allocatable    :: v11p
type (x0),target     :: v00t
class(x0),allocatable    :: v00p
allocate(v00p)
v00p%x01=1
v00t%x01=1
call v00p%t_prc00(2_2) 
if (kk            /= 4) print *,'error-033',kk
call v00t%t_prc00(2_2) 
if (kk            /= 4) print *,'error-0331',kk
call v00t%gen    (2_2) 
if (kk            /= 4) print *,'error-0332',kk
call v00p%gen    (2_2) 
if (kk            /= 4) print *,'error-0333',kk
allocate(v11p)
v11p%x01=1
v11t%x01=1
call v11p%t_prc01(2_1) 
if (kk            /= 4) print *,'error-013',kk
call v11t%t_prc01(2_1) 
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

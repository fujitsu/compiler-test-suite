module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc00=>prc00
      generic:: gen =>             t_prc00
     procedure:: t_prc10=>x0y
      generic:: assignment(=)=> t_prc10
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc01=>prc01
      generic:: gen =>             t_prc01
     procedure:: t_prc11=>x1y
      generic:: assignment(=)=> t_prc11
  end type
  type,extends(x0)::x2
    integer::x12
    contains
      procedure:: t_prc02=>prc02
      generic:: gen =>             t_prc02
     procedure:: t_prc12=>x2y
      generic:: assignment(=)=> t_prc12

  end type
  integer::test
contains

 subroutine  x0y(x,y)
   class(x0),intent(out)::x
   integer(1) ,intent(in)::y
print *,'incorrect'
 end subroutine
 subroutine  x1y(x,y)
   class(x1),intent(out)::x
   integer(2) ,intent(in)::y
print *,'incorrect'
 end subroutine
 subroutine  x2y(x,y)
   class(x2),intent(out)::x
   integer(2) ,intent(in)::y
print *,'incorrect'
 end subroutine
 subroutine prc00(x,y)
   class(x0),intent(in)::x
   integer(2) ,intent(in)::y
print *,'prc00'
 end subroutine
 subroutine prc01(x,y)
   class(x1),intent(in)::x
   integer(1) ,intent(in)::y
print *,'prc01'
 end subroutine
 subroutine prc02(x,y)
   class(x2),intent(in)::x
   integer(1) ,intent(in)::y
print *,'prc02'
 end subroutine
end
module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc00=>prc00
      generic:: gen =>             t_prc00
     procedure:: t_prc10=>x0y
      generic:: assignment(=)=> t_prc10
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc01=>prc01
      generic:: gen =>             t_prc01
     procedure:: t_prc11=>x1y
      generic:: assignment(=)=> t_prc11
  end type
  type,extends(x0)::x2
    integer::x12
    contains
      procedure:: t_prc02=>prc02
      generic:: gen =>             t_prc02
     procedure:: t_prc12=>x2y
      generic:: assignment(=)=> t_prc12
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
    type is(x1)
      kk=x%x01 + y + 100
    type is(x2)
      kk=x%x01 + y + 200
    type is(x0)
      kk=0
   end select
   flag=2
 end subroutine
 subroutine  x0y(x,y)
   class(x0),intent(out)::x
   integer(2) ,intent(in)::y
   select type(x)
    type is(x1)
      x%x01 = y + 100
    type is(x2)
      x%x01 = y + 200
    type is(x0)
      x%x01=0
   end select
 end subroutine
 subroutine  x1y(x,y)
   class(x1),intent(out)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      x%x01 = y + 10
   end select
 end subroutine
 subroutine  x2y(x,y)
   class(x2),intent(out)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x2)
      x%x01 = y + 10
   end select
 end subroutine
end
use m1,only:test
use m2
type (x2),target     :: v22t
class(x2),allocatable    :: v22p
type (x1),target     :: v11t
class(x1),allocatable    :: v11p
allocate(v11p)
v11p%x01=1
v11t%x01=1
call v11p%t_prc01(2_1) 
if (kk            /= 4) print *,'error-013',kk
call v11p%gen    (2_1) 
if (kk            /= 4) print *,'error-0133',kk
call v11p%t_prc00(2_2) 
if (kk            /= 103) print *,'error-1130',kk
allocate(v22p)
v22p%x01=1
v22t%x01=1
call v22p%t_prc02(2_1) 
if (kk            /=13) print *,'error-0124',kk
call v22p%gen    (2_1) 
if (kk            /=13) print *,'error-0127',kk
call v22p%t_prc00(2_2) 
if (kk            /=203) print *,'error-11240',kk

v11p=       2_1 
if (v11p%x01/=12) print *,8099
v11p=2_2
if (v11p%x01/=102) print *,8059,v11p%x01
v22p=       (2_1) 
if (v22p%x01/=12) print *,8159,v22p%x01
v22p=(2_2) 
if (v22p%x01/=202) print *,8259,v22p%x01
print *,'pass'
end

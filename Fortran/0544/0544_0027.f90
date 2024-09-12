module m2
  type x0
    integer::x01
    contains
      procedure:: t_prc02=>prc00
      generic:: gen =>             t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc01
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
   integer(1) ,intent(in)::y
   select type(x)
    type is(x2)
      kk=x%x01 + y + 2000
      if (y/=5) print *,1011
    type is(x0)
      kk=x%x01 + y + 100
    type is(x1)
      kk=x%x01 + y + 1000
      if (y/=3) print *,1001
   end select
   flag=2
 end subroutine
end
use m2
type (x2),target     :: v22t
type (x2),pointer    :: v22p
type (x1),target     :: v11t
class(x1),pointer    :: v11p
type (x0),target     :: v00t
class(x0),pointer    :: v00p
v00p=>v22t
v00p%x01=1
v00t%x01=0
call v00p%t_prc02(5_1) 
if (kk            /= 16) print *,'error-067',kk
call v00t%t_prc02(5_1) 
if (kk            /= 105) print *,'error-0671',kk
call v00t%gen    (5_1) 
if (kk            /= 105) print *,'error-0672',kk
call v00p%gen    (5_1) 
if (kk            /= 16) print *,'error-0673',kk
v00p=>v11t
v00p%x01=1
call v00p%t_prc02(3_1) 
if (kk            /= 5   ) print *,'error-034',kk
call v00t%t_prc02(3_1) 
if (kk            /= 103) print *,'error-0341',kk
call v00t%gen    (3_1) 
if (kk            /= 103) print *,'error-0342',kk
call v00p%gen    (3_1) 
if (kk            /= 5   ) print *,'error-0343',kk
v00p=>v00t
v00p%x01=1
call v00p%t_prc02(2_1) 
if (kk            /= 103) print *,'error-033',kk
call v00t%t_prc02(2_1) 
if (kk            /= 103) print *,'error-0331',kk
call v00t%gen    (2_1) 
if (kk            /= 103) print *,'error-0332',kk
call v00p%gen    (2_1) 
if (kk            /= 103) print *,'error-0333',kk
v11p=>v11t
v11p%x01=1
call v11p%t_prc02(2_1) 
if (kk            /= 4) print *,'error-013',kk
call v11t%t_prc02(2_1) 
if (kk            /= 4) print *,'error-0131',kk
call v11t%gen    (2_1) 
if (kk            /= 4) print *,'error-0132',kk
call v11p%gen    (2_1) 
if (kk            /= 4) print *,'error-0133',kk
v22p=>v22t
v22p%x01=1
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

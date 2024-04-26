module m1
  type x0
    integer::x01
    contains
     private
      procedure:: t_prc02=>prc02z
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
contains
 function   prc02z(x,y) result(kk)
 entry      prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x0)
      kk=x%x01 + y + 1
   end select
   flag=2
 end function
subroutine s1(k1,k2,k3)
class(x0),allocatable:: v00
k3=1
do k=k1,k2
allocate(v00)
v00%x01=1
if ((v00.add.2_1 )/= 4) print *,'error-003' 
end do
end subroutine 
end
module m2
  type x0
    integer::x01
    contains
     private
      procedure:: t_prc02=>prc02
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  integer::flag
contains
 function   prc02z(x,y) result(kk)
 entry      prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x0)
      kk=x%x01 + y + 1
   end select
   flag=2
 end function
subroutine s1(k1,k2,k3)
class(x0),allocatable:: v00
k3=2
do k=k1,k2
allocate(v00)
v00%x01=1
if ((v00.add.2_1 )/= 4) print *,'error-013' 
end do
end subroutine 
end
use m1
use m2,s2=>s1
call s1(3,3,k3)
if (k3/=1) print *,9001
call s2(3,3,k3)
if (k3/=2) print *,9002
print *,'pass'
end

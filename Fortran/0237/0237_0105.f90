module m1
  type x0
    integer::x01
    contains
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
end 
subroutine s1
use m1
class(x0),allocatable:: v00
allocate(v00)
v00%x01=1
if ((v00.add.2_1 )/= 4) print *,'error-003' 
end
call s1
print *,'pass'
end

module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc01=>prc01
      procedure:: t_prc02=>prc02
      procedure:: prc03
  end type
  type,extends(x0)::x1
    integer::x11=3
  end type
  integer::flag
contains
 function   prc01(x,y) result(kk)
 entry      prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer ,intent(in)::y
 entry      prc03(x,y) result(kk)
   select type(x)
    type is(x0)
      kk=x%x01 + y + 1
    type is(x1)
      kk=x%x01 + x%x11 + y + 2
   end select
   flag=flag+1
 end function
end 
subroutine s1
use m1
class(x0),allocatable:: v00
flag=0
allocate(v00)
v00%x01=1
if (v00%prc03(2 )/= 4) print *,'error-003' 
if (flag/=1)print *,203
deallocate(v00)
allocate(x1::v00)
v00%x01=2
if (v00%prc03(2 )/= 9) print *,'error-013' 
if (flag/=2)print *,206
end
call s1
print *,'pass'
end

module m1
  type x0
    integer::x01
    contains
      procedure,pass(x):: t_prc01=>prc01
      procedure:: t_prc02=>prc02
      procedure,pass(x):: prc03
  end type
  type,extends(x0)::x1
    integer::x11=3
  end type
  integer::flag
contains
 function   prc01(y,x) result(kk)
 entry      prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer ,intent(in)::y
 entry      prc03(y,x) result(kk)
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
if (v00%t_prc01(2 )/= 4) print *,'error-001' 
if (flag/=1)print *,201
if (v00%t_prc02(2 )/= 4) print *,'error-002' 
if (flag/=2)print *,202
if (v00%prc03(2 )/= 4) print *,'error-003' 
if (flag/=3)print *,203
deallocate(v00)
allocate(x1::v00)
v00%x01=2
if (v00%t_prc01(2 )/= 9) print *,'error-011' 
if (flag/=4)print *,204
if (v00%t_prc02(2 )/= 9) print *,'error-012' 
if (flag/=5)print *,205
if (v00%prc03(2 )/= 9) print *,'error-013' 
if (flag/=6)print *,206
end
call s1
print *,'pass'
end

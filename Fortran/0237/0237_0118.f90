module m1
  type x0
    integer::x01
    contains
      private
      procedure,pass(x):: t_prc01=>prc01
      procedure,pass(x):: t_prc02=>prc02
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
do kkk=2,y
   select type(x)
    type is(x0)
      kk=x%x01 + y + 1
    type is(x1)
      kk=x%x01 + x%x11 + y + 2
   end select
   flag=flag+1
end do
 end function
subroutine s1(k1,k2)
class(x0),allocatable:: v00(:)
allocate(v00(1:3))
call       ss1(k1,k2,v00(1:3:2))
deallocate(v00)
allocate(x1::v00(1:3))
call       ss2(k1,k2,v00(1:3:2))
deallocate(v00)
end subroutine
subroutine ss1(k1,k2,v00)
class(x0):: v00(k2-1:)
do kk=k1,k2
flag=0
v00(3)%x01=1
if (v00(3)%t_prc01(2 )/= 4) print *,'error-001' 
if (flag/=1)print *,201
if (v00(3)%t_prc02(2 )/= 4) print *,'error-002' 
if (flag/=2)print *,202
if (v00(3)%prc03(2 )/= 4) print *,'error-003' 
if (flag/=3)print *,203
end do
end subroutine
subroutine ss2(k1,k2,v00)
class(x0):: v00(k2-1:)
do kk=k1,k2
flag=0
v00(3)%x01=2
if (v00(3)%t_prc01(2 )/= 9) print *,'error-011' 
if (flag/=1)print *,204
if (v00(3)%t_prc02(2 )/= 9) print *,'error-012' 
if (flag/=2)print *,205
if (v00(3)%prc03(2 )/= 9) print *,'error-013' 
if (flag/=3)print *,206
end do
end subroutine
end
use m1
call s1(1,3)
print *,'pass'
end

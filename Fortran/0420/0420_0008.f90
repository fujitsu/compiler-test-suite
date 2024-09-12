module m1
type x
  integer:: x1
  contains
   procedure :: x2=> xp
   generic :: assignment(=)=> x2
end type
 type y
   integer:: y1
   type(x):: y2
   integer:: y3
 end type
contains
 subroutine xp( a1 , a2)
 class(x),intent(Out):: a1
 type(x),intent(in):: a2
 a1%x1=a2%x1+10
 end subroutine
end

subroutine s1
use m1
type(y):: v1,v2
v1%y1=-1
v1%y3=-1
v2%y1=1
v2%y2%x1=2
v2%y3=3
v1%y2=v2%y2
if (v1%y2%x1/=12) print *,101
v2=v1
if (v2%y2%x1/=22) print *,102
end
call s1
print *,'pass'
end
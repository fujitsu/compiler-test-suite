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
   integer,allocatable:: y3(:)
   integer:: y4
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
v2%y1=1
v2%y2%x1=2
v2%y4=4
v1%y2=v2%y2
if (v1%y2%x1/=12) print *,101
v1%y1=11
allocate( v1%y3(2:3))
v1%y3=[31,32]
v1%y4=41
v2=v1
if (v2%y1   /=11) print *,301
if (v2%y2%x1/=22) print *,302
if (v2%y3(2) /=31) print *,303
if (v2%y3(3) /=32) print *,304
if (v2%y4   /=41) print *,305
end
call s1
print *,'pass'
end

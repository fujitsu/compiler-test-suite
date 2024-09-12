module m1
 type a
   integer a1
 end type
 interface assignment(=)
   module procedure ass
 end interface
 contains
   elemental subroutine ass(b,c)
   type(a),intent(out)::b
   type(a),intent(in)::c
   b%a1=c%a1 +1
   end subroutine
end module
   
use m1
type(a)::b(10),c(10),d1,d10,d2
integer e(10),f(10)
e=(/1,2,3,4,5,6,7,8,9,10/)
d1%a1=1; d10%a1=10
d2=d1
if(d2%a1.ne.2)print*,'ng1'
w1:where(e<=5)
   c=d1
   b=c
else where w1
   c=d10
   b=c
end where w1
f=(/2,2,2,2,2,11,11,11,11,11/)
do i=1,10
  if(f(i).ne.c(i)%a1)print*,'ng2'
end do
f=(/3,3,3,3,3,12,12,12,12,12/)
do i=1,10
  if(f(i).ne.b(i)%a1)print*,'ng3'
end do
print*,'pass'
end

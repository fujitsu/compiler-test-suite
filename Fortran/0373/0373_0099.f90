module m1
 type a
   integer a1
 end type
 interface assignment(=)
   module procedure ass
 end interface
 interface operator(*)
   module procedure ope
 end interface
 contains
   elemental subroutine ass(b,c)
   type(a),intent(out)::b
   type(a),intent(in)::c
   b%a1=c%a1 +1
   end subroutine
   elemental function ope(b,c)
   type(a),intent(in)::b,c
   type(a)::ope
   ope%a1=b%a1 + c%a1
   end function
end module
   
use m1
type(a)::x,b(10),c(10),d(10)
x%a1=1
b=x
c=b
d=b*b
do i=1,10
  if(b(i)%a1 .ne. 2)print*,'ng1'
  if(c(i)%a1 .ne. 3)print*,'ng2'
  if(d(i)%a1 .ne. 5)print*,'ng3'
end do
print*,'pass'
end

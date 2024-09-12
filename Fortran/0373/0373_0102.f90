module m1
 type a
   integer a1
 end type
 interface operator(+)
   module procedure plus
 end interface
 interface operator(*)
   module procedure mult
 end interface
 contains
   function plus(b,c)
   type(a),intent(in)::b,c
   type(a)::plus
   plus%a1=b%a1 + c%a1
   end function
   elemental function mult(b,c)
   type(a),intent(in)::b,c
   type(a)::mult
   mult%a1=b%a1 * c%a1
   end function
end module
   
use m1
type(a)::b1,c1,d(10),b2(10),c2(10)
integer e(10),f(10)
e=(/1,2,3,4,5,6,7,8,9,10/)
b1%a1=1; c1%a1=2
b2%a1=3; c2%a1=4
w1:where(e<=5)
   d=b1+c1
else where w1
   d=b2*c2
end where w1
f=(/3,3,3,3,3,12,12,12,12,12/)
do i=1,10
  if(f(i).ne.d(i)%a1)print*,'ng'
end do
print*,'pass'
end

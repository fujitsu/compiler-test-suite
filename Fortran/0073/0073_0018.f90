module m1
integer,parameter:: k1=3,k2=2,k3=5,k4=4
type x
integer:: a(k1,k2,k3,k4)
integer:: b(k1,k2,k3,k4)
contains
final:: final_sub
end type
type(x)::z(k1),w(k1)
integer::n1=2,n2=2
interface operator(+)
  module procedure plus
end interface
interface 
pure subroutine subcheck3
end subroutine
end interface
contains
 pure subroutine final_sub(d)
   type(x),intent(in)::d
call            subcheck3
 end subroutine
 pure function plus(x1,x2) result(r)
   type(x)::r
   type(x),intent(in)::x1
   integer,intent(in)::x2(k1,k2,k3,k4)
   r%a=x1%a+x2
   r%b=0 
 end function
pure function f(k1,k2,k3,k4,k) result(r)
integer,intent(in)::k1,k2,k3,k4,k
integer::r(k1,k2,k3,k4)
r=reshape( [( k,k=1,k1*k2*k3*k4*2 )],[k1,k2,k3,k4])
end function
subroutine s1(k1,k2,k3,k4)
forall (n2=1:k1)
  z(n2)=z(n2)+f(k1,k2,k3,k4,1)
end forall
end subroutine
subroutine s2(k1,k2,k3,k4)
type(x) :: d(k1)

do      n2=1,k1
  d(n2)=w(n2)+f(k1,k2,k3,k4,0)
end do
do      n2=1,k1
  w(n2)=d(n2)
end do
end subroutine
end
use m1
do n=1,k1
z(n)%a=reshape([(n,n=1,k1*k2*(k3)*k4)],[k1,k2,k3,k4])
w(n)%a=reshape([(n,n=1,k1*k2*(k3)*k4)],[k1,k2,k3,k4])
end do
call s1(k1,k2,k3,k4)
call s2(k1,k2,k3,k4)
do n=1,k1
if (any(z(n)%a/=w(n)%a)) then
print *,101,n
print *,z(n)%a
print *,w(n)%a
endif
end do
print *,'pass'
end
 subroutine subcheck(x,k)
 if(k==1) then
  write(1,'(z16.16)') loc(x)
 endif 
 end subroutine
subroutine subcheck2
character(16)::r1,r
rewind 1
read (1,'(a)') r1
do 
read (1,'(a)',end=10) r
if (r/=r1) then
  print *,201
  print *,r1 
  print *,r
  return
endif
end do
10 end
pure subroutine subcheck3
end subroutine subcheck3

module m1
integer,parameter:: k1=500,k2=3
type x
integer::dummy
real(8) :: b
end type
type(x):: a(k1,k2)
interface operator(+)
 procedure z
end interface
contains
subroutine s1()
forall (n=1:3)
  a(1:k1 , n )=a(1:k1, n )+x(1,dble(n))
end forall
end subroutine
elemental function z(x1,x2) result(r)
type(x),intent(in)::x1,x2
type(x)::r
r%dummy=x1%dummy+x2%dummy
r%b=x1%b+x2%b
end function
end

use m1
a=reshape([(x(1,n),n=1,k1*3)],[k1,3])
call s1()
if (any(a(1:500,1)%b/=[ (k,k=1,500)]+1 )) print *,101
if (any(a(1:500,2)%b/=[ (k,k=501,1000)]+2 )) print *,102
if (any(a(1:500,3)%b/=[ (k,k=1001,1500)]+3 )) print *,103
print *,'pass'
end

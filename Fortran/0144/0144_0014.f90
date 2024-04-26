module m1
integer,parameter:: k1=500,k2=3
type x
integer::dummy
real(8) :: b
end type
interface operator(+)
 procedure z
end interface
type(x):: a(k1,k2),c(k1,k2)
contains
subroutine s1()
forall (n=1:3)
  a(1:k1 , n )=a(1:k1, n )+x(1,dble(n))
end forall
end subroutine
subroutine s2()
type(x):: d(k1,k2)
do      n=1,3
  d(1:k1 , n )=c(1:k1, n )+x(1,dble(n))
end do
do      n=1,3
  c(1:k1 , n )=d(1:k1, n )
end do
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
c=reshape([(x(1,n),n=1,k1*3)],[k1,3])
call s1()
call s2()
if (any(a(1:500,1)%b/= c(1:500,1)%b ))print *,101
if (any(a(1:500,2)%b/= c(1:500,2)%b ))print *,102
if (any(a(1:500,3)%b/= c(1:500,3)%b ))print *,103
print *,'pass'
end

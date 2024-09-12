module m1
integer,parameter::n1=10,n2=n1,n3=n1,n4=n1
interface s
  procedure s1
end interface
integer::k(6)=0
contains
subroutine s1(a1)
real,dimension(n1,n2,n3,n4)::a1,a2,a3
k(1)=1
a2=1
do concurrent( k1=1:n1 , k2=1:n2)
do concurrent( k3=1:n3 , k4=1:n4)
  a3(k4,k3,k2,k1)= a2(k4,k3,k2,k1)+ff1()+1+sqrt(a1(k4,k3,k2,k1))
end do
end do
if (any(abs(a3-3.31622767)>0.00001)) print *,101
end subroutine
 pure function ff1()
  ff1=1
 end function
end
subroutine s0 
use m1
real,dimension(n1,n2,n3,n4)::a1
a1= .1
call s(a1)
end
call s0
print *,'pass'
end

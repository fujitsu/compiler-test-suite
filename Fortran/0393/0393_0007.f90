module m1
integer,parameter::n1=10,n2=n1,n3=n1,n4=n1
interface s
  procedure s1,s2,s3,s4,s5,s6
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
subroutine s2(a1)
real(8),dimension(n1,n2,n3,n4)::a1,a2,a3
k(2)=1
a2=1
do concurrent( k1=1:n1 , k2=1:n2)
do concurrent( k3=1:n3 , k4=1:n4)
  a3(k4,k3,k2,k1)= a2(k4,k3,k2,k1)+ff2()+1+sqrt(a1(k4,k3,k2,k1))
end do
end do
if (any(abs(a3-3.31622767)>0.00001)) print *,102
end subroutine
subroutine s3(a1)
real(16),dimension(n1,n2,n3,n4)::a1,a2,a3
k(3)=1
a2=1
do concurrent( k1=1:n1 , k2=1:n2)
do concurrent( k3=1:n3 , k4=1:n4)
  a3(k4,k3,k2,k1)= a2(k4,k3,k2,k1)+ff3()+1+sqrt(a1(k4,k3,k2,k1))
end do
end do
if (any(abs(a3-3.31622767)>0.00001)) print *,103
end subroutine
subroutine s4(a1)
complex,dimension(n1,n2,n3,n4)::a1,a2,a3
k(4)=1
a2=(1,2)
do concurrent( k1=1:n1 , k2=1:n2)
do concurrent( k3=1:n3 , k4=1:n4)
  a3(k4,k3,k2,k1)= a2(k4,k3,k2,k1)+ff4()+(1,2)+sqrt(a1(k4,k3,k2,k1))
end do
end do
if (any(abs(a3-(3.31622767,6.00000000))>0.00001)) print *,104,a3(1,1,1,1)
end subroutine
subroutine s5(a1)
complex(8),dimension(n1,n2,n3,n4)::a1,a2,a3
k(5)=1
a2=(1,2)
do concurrent( k1=1:n1 , k2=1:n2)
do concurrent( k3=1:n3 , k4=1:n4)
  a3(k4,k3,k2,k1)= a2(k4,k3,k2,k1)+ff5()+(1._8,2)+sqrt(a1(k4,k3,k2,k1))
end do
end do
if (any(abs(a3-(3.316227768372918,6.000000000000000_8))>0.00001)) print *,105,a3(1,1,1,1)
end subroutine
subroutine s6(a1)
complex(16),dimension(n1,n2,n3,n4)::a1,a2,a3
k(6)=1
a2=(1,2)
do concurrent( k1=1:n1 , k2=1:n2)
do concurrent( k3=1:n3 , k4=1:n4)
  a3(k4,k3,k2,k1)= a2(k4,k3,k2,k1)+ff6()+(1._16,2)+sqrt(a1(k4,k3,k2,k1))
end do
end do
if (any(abs(a3-(3.3162277683729183821164267669240020,6.0_16))>0.00001)) print *,106,a3(1,1,1,1)
end subroutine
 pure function ff1()
  ff1=1
 end function
 pure function ff2()
real(8)::ff2
  ff2=1
 end function
 pure function ff3()
real(16)::ff3
  ff3=1
 end function
 pure function ff4()
complex(4)::ff4
  ff4=(1,2)
 end function
 pure function ff5()
complex(8)::ff5
  ff5=(1_8,2)
 end function
 pure function ff6()
complex(16)::ff6
  ff6=(1_8,2)
 end function
end
subroutine s0 
use m1
real,dimension(n1,n2,n3,n4)::a1
a1= .1
call s(a1)
call s(real(a1,8))
call s(real(a1,16))
call s(cmplx(a1,kind=4))
call s(cmplx(a1,kind=8))
call s(cmplx(a1,kind=16))
if (any(k/=1))  print *,201,k
end
call s0
print *,'pass'
end

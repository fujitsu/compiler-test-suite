module m1
integer,parameter::k=2
end
subroutine s1(a)
use m1
implicit none
integer(1):: n1=3
integer(2):: n2=3
integer(4):: n4=3
integer(8):: n8=3
real(2)   :: r2=3
real(4)   :: r4=3
real(8)   :: r8=3
real(16)  :: r16=3
complex(2)   :: c2=(3,4)
complex(4)   :: c4=(3,4)
complex(8)   :: c8=(3,4)
complex(16)  :: c16=(3,4)
real(k)::a
real(8)::temp
temp= a**n1
temp= a**n2
temp= a**n4
temp= a**n8
temp= a**r2
temp= a**r4
temp= a**r8
temp= a**r16
temp= a**c2
temp= a**c4
temp= a**c8
temp= a**c16

temp= n1**a
temp= n2**a
temp= n4**a
temp= n8**a
temp= r2**a
temp= r4**a
temp= r8**a
temp= r16**a
temp= c2**a
temp= c4**a
temp= c8**a
temp= c16**a

temp= a**1
temp= a**2
temp= a**3
temp= a**4
temp= a**5
temp= a**6
temp= a**(-2)

temp= 2.0_k**r4
temp= 2.0_k**r8
temp= 2.0_k**r16
temp= 10.0_k**r4
temp= 10.0_k**r8
temp= 10.0_k**r16
 
end
use m1
real(k)::a=2
call s1(a)
print *,'pass'
end


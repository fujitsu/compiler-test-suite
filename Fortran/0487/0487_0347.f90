module m1
integer,parameter::k=4
end
subroutine s1(b)
use m1
implicit none
integer(1):: n1=3
integer(2):: n2=3
integer(4):: n4=3
integer(8):: n8=3
real(k)   :: r2=3
real(4)   :: r4=3
real(8)   :: r8=3
real(16)  :: r16=3
complex(k)   :: c2=(3,4)
complex(4)   :: c4=(3,4)
complex(8)   :: c8=(3,4)
complex(16)  :: c16=(3,4)
complex(k)::b
real(8)::temp
temp= b**n1
temp= b**n2
temp= b**n4
temp= b**n8
temp= b**r2
temp= b**r4
temp= b**r8
temp= b**r16
temp= b**c2
temp= b**c4
temp= b**c8
temp= b**c16
temp= n1**b
temp= n2**b
temp= n4**b
temp= n8**b
temp= r2**b
temp= r4**b
temp= r8**b
temp= r16**b
temp= c2**b
temp= c4**b
temp= c8**b
temp= c16**b
end
use m1
complex(k)::a=2
call s1(a)
print *,'pass'
end

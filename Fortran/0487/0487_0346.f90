module m1
integer,parameter::k=4
end
subroutine s1(a)
use m1
implicit none
integer(1):: n1=3
integer(2):: n2=3
integer(4):: n4=3
integer(8):: n8=3
real(4)   :: r4=3
real(8)   :: r8=3
real(16)  :: r16=3
complex(4)   :: c4=(3,4)
complex(8)   :: c8=(3,4)
complex(16)  :: c16=(3,4)
real(k)::a
write(1,*) a**n1
write(1,*) a**n2
write(1,*) a**n4
write(1,*) a**n8
write(1,*) a**r4
write(1,*) a**r8
write(1,*) a**r16
write(1,*) a**c4
write(1,*) a**c8
write(1,*) a**c16
write(1,*) n1**a
write(1,*) n2**a
write(1,*) n4**a
write(1,*) n8**a
write(1,*) r4**a
write(1,*) r8**a
write(1,*) r16**a
write(1,*) c4**a
write(1,*) c8**a
write(1,*) c16**a
write(1,*) a**1
write(1,*) a**2
write(1,*) a**3
write(1,*) a**4
write(1,*) a**5
write(1,*) a**6
write(1,*) a**(-2)
write(1,*) 2.0_k**r4
write(1,*) 2.0_k**r8
write(1,*) 2.0_k**r16
write(1,*) 10.0_k**r4
write(1,*) 10.0_k**r8
write(1,*) 10.0_k**r16

write(1,*) 2.0_8**r4
write(1,*) 2.0_8**r8
write(1,*) 10.0_8**r4
write(1,*) 10.0_8**r8

end
use m1
real(k)::a=2
call s1(a)
print *,'pass'
end

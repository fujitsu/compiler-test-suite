call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
complex :: xx
call sub01(1,2,xx)
if (xx.ne.(1.0_4,2.0_4)) print *,'err-1'
end
subroutine sub01(i1,i2,rr)
real*4 ::rr(2)
rr(1)=1.0
rr(2)=2.0
i=0
i=i+i1+i2
end

subroutine test02()
complex(kind=8) :: xx
call sub02(1,xx,2)
if (xx.ne.(1.0_8,2.0_8)) print *,'err-2'
end
subroutine sub02(i1,rr,i2)
real(kind=8) ::rr(2)
rr(1)=1.0_8
rr(2)=2.0_8
i=0
i=i+i1+i2
end

subroutine test03()
complex(kind=16) :: xx
call sub03(xx,1,2)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-3'
end
subroutine sub03(rr,i1,i2)
real(kind=16) ::rr(2)
rr(1)=1.0_16
rr(2)=2.0_16
i=0
i=i+i1+i2
end


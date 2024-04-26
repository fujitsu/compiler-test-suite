call test01()
call test02()
call test03()
call test11()
call test12()
call test13()
call test21()
call test22()
call test23()
print *,'pass'
end

subroutine test01()
complex :: xx
call sub01(xx)
if (xx.ne.(1.0_4,2.0_4)) print *,'err-1'
end
subroutine sub01(rr)
real*4 ::rr(3)
rr(1)=1.0
rr(2)=2.0
end

subroutine test02()
complex(kind=8) :: xx
call sub02(xx)
if (xx.ne.(1.0_8,2.0_8)) print *,'err-2'
end
subroutine sub02(rr)
real(kind=8) ::rr(3)
rr(1)=1.0_8
rr(2)=2.0_8
end

subroutine test03()
complex(kind=16) :: xx
call sub03(xx)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-3'
end
subroutine sub03(rr)
real(kind=16) ::rr(3)
rr(1)=1.0_16
rr(2)=2.0_16
end

subroutine test11()
complex :: xx
call sub11(xx)
if (xx.ne.(1.0_4,2.0_4)) print *,'err-1'
end
subroutine sub11(rr)
real*4 ::rr(2,1)
rr(1,1)=1.0
rr(2,1)=2.0
end

subroutine test12()
complex(kind=8) :: xx
call sub12(xx)
if (xx.ne.(1.0_8,2.0_8)) print *,'err-2'
end
subroutine sub12(rr)
real(kind=8) ::rr(2,1)
rr(1,1)=1.0_8
rr(2,1)=2.0_8
end

subroutine test13()
complex(kind=16) :: xx
call sub13(xx)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-3'
end
subroutine sub13(rr)
real(kind=16) ::rr(2,1)
rr(1,1)=1.0_16
rr(2,1)=2.0_16
end

subroutine test21()
complex :: xx
xx=1
call sub21(xx,xx)
if (xx.ne.(1.0_4,2.0_4)) print *,'err-1'
end
subroutine sub21(rr,rr2)
real*4 ::rr(2),rr2(3)
rr(1)=1.0
rr(2)=2.0
i=0
i=i+rr2(1)+rr2(2)
end

subroutine test22()
complex(kind=8) :: xx
xx=1
call sub22(xx,xx)
if (xx.ne.(1.0_8,2.0_8)) print *,'err-2'
end
subroutine sub22(rr,rr2)
real(kind=8) ::rr(2),rr2(1,2)
rr(1)=1.0_8
rr(2)=2.0_8
i=0
i=i+rr2(1,1)+rr2(1,2)
end

subroutine test23()
complex(kind=16) :: xx
xx=1
call sub23(xx,xx)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-3'
end
subroutine sub23(rr,rr2)
real(kind=16) ::rr(2),rr2
rr(1)=1.0_16
rr(2)=2.0_16
i=0
i=i+rr2+rr2
end


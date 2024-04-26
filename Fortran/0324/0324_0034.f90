call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
complex :: xx
call sub01(xx)
if (xx.ne.(1.0_4,2.0_4)) print *,'err-1'
end
subroutine sub01(rr)
real*4 ::rr(2:3)
rr(2)=1.0
rr(3)=2.0
end

subroutine test02()
complex(kind=8) :: xx
call sub02(xx)
if (xx.ne.(1.0_8,2.0_8)) print *,'err-2'
end
subroutine sub02(rr)
real(kind=8) ::rr(10:11)
rr(10)=1.0_8
rr(11)=2.0_8
end

subroutine test03()
complex(kind=16) :: xx
call sub03(xx)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-3'
end
subroutine sub03(rr)
real(kind=16) ::rr(-2:-1)
rr(-2)=1.0_16
rr(-1)=2.0_16
end


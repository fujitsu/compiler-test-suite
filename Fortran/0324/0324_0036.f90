call test01()
call test02()
call test03()
call test11()
call test12()
call test13()
call test21()
call test22()
call test23()
call test31()
call test32()
call test33()
print *,'pass'
end

subroutine test01()
complex :: xx
call sub01(xx)
end
subroutine sub01(rr)
real*4 ::rr
rr=1.0
rr=2.0
end

subroutine test02()
complex(kind=8) :: xx
call sub02(xx)
end
subroutine sub02(rr)
real(kind=8) ::rr
rr=1.0_8
rr=2.0_8
end

subroutine test03()
complex(kind=16) :: xx
call sub03(xx)
end
subroutine sub03(rr)
real(kind=16) ::rr
rr=1.0_16
rr=2.0_16
end

subroutine test11()
complex :: xx(1)
call sub11(xx)
end
subroutine sub11(rr)
real*4 ::rr(2)
rr(1)=1.0
rr(2)=2.0
end

subroutine test12()
complex(kind=8) :: xx(1)
call sub12(xx)
end
subroutine sub12(rr)
real(kind=8) ::rr(2)
rr(1)=1.0_8
rr(2)=2.0_8
end

subroutine test13()
complex(kind=16) :: xx(1)
call sub13(xx)
end
subroutine sub13(rr)
real(kind=16) ::rr(2)
rr(1)=1.0_16
rr(2)=2.0_16
end

subroutine test21()
complex :: xx(1)
call sub21(xx(1))
end
subroutine sub21(rr)
real*4 ::rr(2)
rr(1)=1.0
rr(2)=2.0
end

subroutine test22()
complex(kind=8) :: xx(1)
call sub22(xx(1))
end
subroutine sub22(rr)
real(kind=8) ::rr(2)
rr(1)=1.0_8
rr(2)=2.0_8
end

subroutine test23()
complex(kind=16) :: xx(1)
call sub23(xx(1))
end
subroutine sub23(rr)
real(kind=16) ::rr(2)
rr(1)=1.0_16
rr(2)=2.0_16
end

subroutine test31()
complex :: xx(1)
call sub31(xx(1))
end
subroutine sub31(rr)
real*4 ::rr
rr=1.0
rr=2.0
end

subroutine test32()
complex(kind=8) :: xx(1)
call sub32(xx(1))
end
subroutine sub32(rr)
real(kind=8) ::rr
rr=1.0_8
rr=2.0_8
end

subroutine test33()
complex(kind=16) :: xx(1)
call sub33(xx(1))
end
subroutine sub33(rr)
real(kind=16) ::rr
rr=1.0_16
rr=2.0_16
end


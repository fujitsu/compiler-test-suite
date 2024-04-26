call test01()
call test02()
call test03()
call test01a()
call test02a()
call test03a()
print *,'pass'
end

subroutine test01()
complex :: xx
call sub01(xx)
if (xx.ne.(1.0_4,2.0_4)) print *,'err-1'
end
subroutine sub01(rr)
real*4 ::rr(*)
rr(1)=1.0
rr(2)=2.0
end

subroutine test02()
complex(kind=8) :: xx
call sub02(xx)
if (xx.ne.(1.0_8,2.0_8)) print *,'err-2'
end
subroutine sub02(rr)
real(kind=8) ::rr(1,2)
rr(1,1)=1.0_8
rr(1,2)=2.0_8
end

subroutine test03()
complex(kind=16) :: xx
call sub03(xx,2)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-3'
end
subroutine sub03(rr,i)
real(kind=16) ::rr(i)
rr(1)=1.0_16
rr(2)=2.0_16
end

subroutine test01a()
complex :: xx(1)
call sub01a(xx)
if (xx(1).ne.(1.0_4,2.0_4)) print *,'aerr-1'
end
subroutine sub01a(rr)
real*4 ::rr(*)
rr(1)=1.0
rr(2)=2.0
end

subroutine test02a()
complex(kind=8) :: xx(1)
xx(1)=(4.0_8,2.0_8)
call sub02a(xx)
if (xx(1).ne.(1.0_8,2.0_8)) print *,'aerr-2'
end
subroutine sub02a(rr)
real(kind=8) ::rr
rr=2.0_8
rr=1.0_8
end

subroutine test03a()
complex(kind=16) :: xx
xx= (0.0_16,2.0_16)
call sub03a(xx,2)
if (xx.ne.(1.0_16,2.0_16)) print *,'aerr-3'
end
subroutine sub03a(rr,i)
real(kind=16) ::rr
rr=1.0_16
j=1
j=j+i
end

subroutine test04a()
integer  :: xx
xx= (0.0_16,2.0_16)
call sub04a(xx,2)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-a2'
end
subroutine sub04a(rr,i)
real(kind=16) ::rr(10)
rr=1.0_16
j=1
j=j+i
end

subroutine test05a()
integer  :: xx
xx= (0.0_16,2.0_16)
call sub05a(xx,2)
if (xx.ne.(1.0_16,2.0_16)) print *,'err-b2'
end
subroutine sub05a(rr,i)
integer       ::rr(10)
rr=1.0_16
j=1
j=j+i
end



call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
complex :: xx,xxa(1),ifun
ifun()=(1.0_4,2.0_4)
call sub(xx)
if (xx.ne.(1.0_4,2.0_4)) print *,'test01 ng-1'
call sub(xxa(1))
if (xxa(1).ne.(1.0_4,2.0_4)) print *,'test01 ng-1'
i=1
call sub(xxa(i))
if (xxa(i).ne.(1.0_4,2.0_4)) print *,'test01 ng-1'
call suba((1.0_4,2.0_4))
call suba(xx)
call suba(xxa(1))
call suba(ifun())
end
subroutine suba(rr)
real*4 ::rr(2)
if (rr(1).ne.1.0_4) print *,'test01 ng-1'
if (rr(2).ne.2.0_4) print *,'test01 ng-1'
end
subroutine sub(rr)
real*4 ::rr(2)
rr(1)=1.0_4
rr(2)=2.0_4
end

subroutine test02()
complex*16 :: xx,xxa(1),ifun
ifun()=(1.0_8,2.0_8)
call dsub(xx)
if (xx.ne.(1.0_8,2.0_8)) print *,'test02 ng-1'
call dsub(xxa(1))
if (xxa(1).ne.(1.0_8,2.0_8)) print *,'test02 ng-1'
i=1
call dsub(xxa(i))
if (xxa(i).ne.(1.0_8,2.0_8)) print *,'test02 ng-1'
call dsuba((1.0_8,2.0_8))
call dsuba(xx)
call dsuba(xxa(1))
call dsuba(ifun())
end
subroutine dsuba(rr)
real*8 ::rr(2)
if (rr(1).ne.1.0_8) print *,'test02 ng-1'
if (rr(2).ne.2.0_8) print *,'test02 ng-1'
end
subroutine dsub(rr)
real*8 ::rr(2)
rr(1)=1.0_8
rr(2)=2.0_8
end

subroutine test03()
complex*32 :: xx,xxa(1),ifun
ifun()=(1.0_16,2.0_16)
call qsub(xx)
if (xx.ne.(1.0_16,2.0_16)) print *,'test03 ng-1'
call qsub(xxa(1))
if (xxa(1).ne.(1.0_16,2.0_16)) print *,'test03 ng-1'
i=1
call qsub(xxa(i))
if (xxa(i).ne.(1.0_16,2.0_16)) print *,'test03 ng-1'
call qsuba((1.0_16,2.0_16))
call qsuba(xx)
call qsuba(xxa(1))
call qsuba(ifun())
end
subroutine qsuba(rr)
real*16::rr(2)
if (rr(1).ne.1.0_16) print *,'test03 ng-1'
if (rr(2).ne.2.0_16) print *,'test03 ng-1'
end
subroutine qsub(rr)
real*16::rr(2)
rr(1)=1.0_16
rr(2)=2.0_16
end


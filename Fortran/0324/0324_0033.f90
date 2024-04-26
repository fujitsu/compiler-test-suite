call test01()
call test02()
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
call suba(+(1.0_4,2.0_4))
call suba(+xx)
call suba(+xxa(1))
call suba(+ifun())
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
call dsub(1,2,3,xx)
call dsuba(1,2,(1.0_8,2.0_8),4)
end
subroutine dsuba(i1,i2,rr,i4)
real*8 ::rr(2)
if (rr(1).ne.1.0_8) print *,'test02 ng-1'
if (rr(2).ne.2.0_8) print *,'test02 ng-1'
i=i1+i2+i4+kind(i)
end
subroutine dsub(i1,i2,i3,rr)
real*8 ::rr(2)
rr(1)=1.0_8
rr(2)=2.0_8
i=i1+i2+i3+kind(i)
end


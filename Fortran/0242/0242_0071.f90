 PROGRAM MAIN
real*16,parameter::a=123123.4561_16

real*16,parameter::f=1234123.56781_16
real*16,parameter::g=4567123.78901_16
real*16,parameter::d=max(a,real(234123.5671,kind=16),f,g)
call check(d,max(a,real(234123.5671,kind=16),f,g))
END
 
subroutine check(x,y)
real*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," max CALCULATION IS  OK"
endif
end subroutine

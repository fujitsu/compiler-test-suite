 PROGRAM MAIN
real*8,parameter::a=123456.456123_8
real*8,parameter::e=234123.567234_8
real*8,parameter::f=1234123.567823_8
real*8,parameter::g=4567456.7890456_8
real*8,parameter::d=min(a,e,f,g)
call check(d,min(a,e,f,g))
END
 
subroutine check(x,y)
real*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine 

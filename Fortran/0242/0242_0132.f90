program main
integer*2,parameter::a=23112_2
integer*4,parameter::e=23112_4
integer*1,parameter::f=121_1
integer*4,parameter::g=45112_4
integer*4,parameter::d=min(a,e,f,g)
call check(d,min(a,e,f,g))
END
 
subroutine check(x,y)
integer*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine


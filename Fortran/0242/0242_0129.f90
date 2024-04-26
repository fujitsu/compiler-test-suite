program main 
integer*1,parameter::a=12_1
integer*1,parameter::e=23_1
integer*2,parameter::f=129_2
integer*2,parameter::g=450_2
integer*2,parameter::d=min(a,e,f,g)
call check(d,min(a,e,f,g))
END
 
subroutine check(x,y)
integer*2 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine

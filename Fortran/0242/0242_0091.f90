program main 
integer*1,parameter::a=12_1
integer*1,parameter::e=23_1
integer*2,parameter::f=129_2
integer*2,parameter::g=450_2
integer*2,parameter::d=max(a,e,f,g)
call check(d,max(a,e,f,g))
END
 
subroutine check(x,y)
integer*2 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," max CALCULATION IS  OK"
endif
end subroutine

 program main
 integer*8,parameter::a=121234_8
integer*8,parameter::e=231233_8
integer*8,parameter::f=1212345_8

integer*8,parameter::d=min(a,e,f,int(4512343,8))
call check(d,min(a,e,f,int(4512343,8)))
END
 
subroutine check(x,y)
integer*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine

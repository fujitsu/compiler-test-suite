 PROGRAM MAIN
integer*8,parameter::a=12_8
integer*8,parameter::e=23_8
integer*8,parameter::f=12_8
integer,parameter::g=45_4
integer*8,parameter::d=max(max(a,e),f,g)

call check(d,max(max(a,e),f,g))
END
 
subroutine check(x,y)
integer*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," max CALCULATION IS  OK"
endif
end subroutine

 PROGRAM MAIN
real,parameter::d=min(98_4,2223456_4,98.12_4)
call check(d,min(98_4,2223456_4,98.12_4))
END
 
subroutine check(x,y)
real x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine 


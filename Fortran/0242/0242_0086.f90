PROGRAM MAIN
integer*1,parameter::d=max(32_1,22_1,34_1,22_1,98_1)
call check(d,max(32_1,22_1,34_1,22_1,98_1))
END
 
subroutine check(x,y)
integer*1 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine

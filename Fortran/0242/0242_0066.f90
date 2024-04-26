 PROGRAM MAIN
real*4,parameter::d=max(9899_4,3221.41_4,2221.42_4,3451.51_4,2221.44_4)
call check(d,max(9899_4,3221.41_4,2221.42_4,3451.51_4,2221.44_4))
END
 
subroutine check(x,y)
real*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," max CALCULATION IS  OK"
endif
end subroutine

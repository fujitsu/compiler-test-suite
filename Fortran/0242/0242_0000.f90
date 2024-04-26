 PROGRAM MAIN
real*4,parameter::d=amax1(3221.41_4,2221.42_4,3451.51_4,2221.44_4,9899.51_4)
call check(d,amax1(3221.41_4,2221.42_4,3451.51_4,2221.44_4,9899.51_4))
END
 
subroutine check(x,y)
real*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine

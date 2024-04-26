  PROGRAM MAIN
real*8,parameter::d=max(3221.41_4,2221.44_4,3451.51_4,2221.44_4,9899.22_8)
call check(d,max(3221.41_4,2221.44_4,3451.51_4,2221.44_4,9899.22_8))
END
 
subroutine check(x,y)
real*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," max CALCULATION IS  OK"
endif
end subroutine 

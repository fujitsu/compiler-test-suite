  PROGRAM MAIN
real*8,parameter::d=min(3221.41_4,2221.44_4,3451.51_4,2221.44_4,9899.22_8)
call check(d,min(3221.41_4,2221.44_4,3451.51_4,2221.44_4,9899.22_8))
END
 
subroutine check(x,y)
real*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine 

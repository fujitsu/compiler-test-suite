 PROGRAM MAIN
real*4,parameter::d=min(9899_4,3221.41_4,2221.42_4,3451.51_4,2221.44_4)
call check(d,min(9899_4,3221.41_4,2221.42_4,3451.51_4,2221.44_4))
END
 
subroutine check(x,y)
real*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine

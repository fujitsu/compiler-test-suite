 PROGRAM MAIN
real*4,parameter::d=amin1(3221.41_4,2221.42_4,3451.51_4,2221.44_4,9899_4)
call check(d,amin1(3221.41_4,2221.42_4,3451.51_4,2221.44_4,9899_4))
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

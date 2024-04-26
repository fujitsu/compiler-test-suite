 
 PROGRAM MAIN
integer*4,parameter::d=min1(989916_8,3221.41_4,2221.42_4,34511.51_4,2221.44_4)
call check(d,min1(989916_8,3221.41_4,2221.42_4,34511.51_4,2221.44_4))
END
 
subroutine check(x,y)
integer*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine


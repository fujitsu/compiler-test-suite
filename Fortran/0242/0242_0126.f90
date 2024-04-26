PROGRAM MAIN
integer*2,parameter::d=min(35_1,21_1,31_1,21_1,879_2)
call check(d,min(35_1,21_1,31_1,21_1,879_2))
END
 
subroutine check(x,y)
integer*2 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine

PROGRAM MAIN
real,parameter::d=min(-32_1,-21_1,-34_1,-22_1,0.123_4)
call check(d,min(-32_1,-21_1,-34_1,-22_1,0.123_4))
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

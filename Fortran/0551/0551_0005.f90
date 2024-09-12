 PROGRAM MAIN
real*4,parameter::d=AMIN0(32_2,22212_2,&
      3451_2,22_2,9899_2)
call check(d,AMIN0(32_2,22212_2,&
       3451_2,22_2,9899_2))
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

 PROGRAM MAIN
real*4,parameter::d=AMIN0(A1=32_4,A2=22212_4,&
      A3=34511123_4,A4=98992123_4)
call check(d,AMIN0(A1=32_4,A2=22212_4,&
       A3=34511123_4,A4=98992123_4))
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

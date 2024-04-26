PROGRAM MAIN
complex*16,parameter::d=cmplx(350_2,400_2,KIND=8)
call check(d,cmplx(350_2,400_2,KIND=8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i2->C16) ???'
else
print*," i2->C16 OK"
endif
end subroutine 

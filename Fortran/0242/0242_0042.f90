PROGRAM MAIN
complex*16,parameter::d=cmplx(3534412345_8,40880123_8,KIND=8)
call check(d,cmplx(3534412345_8,40880123_8,KIND=8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->C16) ???'
else
print*," i8->C16 OK"
endif
end subroutine
             

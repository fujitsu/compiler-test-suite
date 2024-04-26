PROGRAM MAIN
complex*16,parameter::d=dcmplx(35344_8,40880_8)
call check(d,dcmplx(35344_8,40880_8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->C16) ???'
else
print*,"dcmplex i8->C16 OK"
endif
end subroutine

PROGRAM MAIN
complex*8,parameter::d=cmplx((-3234567.4_16, 2234567.4_16))
call check(d,cmplx((-3234567.4_16, 2234567.4_16)))
END
 
subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C32->C) ???' 
else
print*," C32->c OK"
endif
end subroutine

PROGRAM MAIN
complex*32,parameter::d=cmplx((3123456789.12345_8,223456789.12345_8),KIND=16)
call check(d,cmplx((3123456789.12345_8,223456789.12345_8),KIND=16))
END
 
subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C16->C32) ???'
else
print*," C16->C32 OK"
endif
end subroutine

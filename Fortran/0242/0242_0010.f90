PROGRAM MAIN
complex*8,parameter::d=cmplx((32123456789_8,2212345.312345_8),KIND=4)
call check(d,cmplx((32123456789_8,2212345.312345_8),KIND=4))
END

subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C16->C) ???'
else
print*," C16->C OK"
endif
end subroutine

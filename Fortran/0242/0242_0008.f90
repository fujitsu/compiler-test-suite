PROGRAM MAIN
complex*16,parameter::d=cmplx((321234.4_8,2256789_8),KIND=8)
call check(d,cmplx((321234.4_8,2256789_8),KIND=8))
END

subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C16->C16) ???' 
else
print*," C16->C16 OK"
endif
end subroutine

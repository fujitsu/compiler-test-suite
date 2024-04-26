PROGRAM MAIN
complex*16,parameter::d=cmplx((3298765.23456_16,229876.22345_16),KIND=8)
call check(d,cmplx((3298765.23456_16,229876.22345_16),KIND=8))
END

subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C32->C16) ???'
else
print*," C32->c16 OK"
endif
end subroutine 

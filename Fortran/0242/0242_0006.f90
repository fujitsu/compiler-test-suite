PROGRAM MAIN
complex*32,parameter::d=cmplx((323_4,222_4),KIND=16)
call check(d,cmplx((323_4,222_4),KIND=16))
END

subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C->C32) ???'
else
print*," C->C32 OK"
endif
end subroutine

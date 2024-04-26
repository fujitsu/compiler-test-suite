PROGRAM MAIN
complex*32,parameter::d=cmplx((322222222.2222222_16,&
                         2233333333.2333333_16),KIND=16)
call check(d,cmplx((322222222.2222222_16,2233333333.2333333_16),&
                                             KIND=16))
END

subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C32->C32) ???'
else
print*," C32->c32 OK"
endif
end subroutine

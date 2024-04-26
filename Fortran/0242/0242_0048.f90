PROGRAM MAIN
complex*16,parameter::d=dcmplx((3212345.223456_16,2223456.2_16))
call check(d,dcmplx((3212345.223456_16,2223456.2_16)))
END

subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C32->C16) ???'
else
print*,"complex C32->c16 OK"
endif
end subroutine 

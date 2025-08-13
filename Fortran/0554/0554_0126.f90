PROGRAM MAIN
REAL*8,parameter::b = .2_8
REAL*8::a = log_gamma(b)
integer :: k = kind(log_gamma(b))
call check(a, log_gamma(b))
call check1(k, kind(log_gamma(b)))
END

subroutine check(x, y)
REAL*8 x, y
if (abs(x-y) > abs(x)*0.00001) then
print *,'??? (Error: R4->R4) ???'
else
print*," R4->R4 OK"
endif
end subroutine

subroutine check1(x, y)
integer x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (KIND Error) ???'
else
print*," KIND OK"
endif
end subroutine

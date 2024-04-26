PROGRAM MAIN
complex*16,parameter::d=dcmplx(3226.4123456789_16)
call check(d,dcmplx(3226.4123456789_16))
END

subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->C16) ???'
else
print*,"dcmplx R16->C16 OK"
endif
end subroutine

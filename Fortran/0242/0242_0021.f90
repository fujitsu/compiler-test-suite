PROGRAM MAIN
complex*8,parameter::d=cmplx(322123.4_16,222123.4_16,KIND=4)
call check(d,cmplx(322123.4_16,222123.4_16,KIND=4))
END

subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->C) ???'
else
print*," R16->C OK"
endif
end subroutine

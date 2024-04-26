PROGRAM MAIN
complex*8,PARAMETER::d=cmplx(3531_4,4011_4,KIND=4)
call check(d,cmplx(3531_4,4011_4,KIND=4))
END

subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->C) ???'
else
print*," i4->C OK"
endif
end subroutine

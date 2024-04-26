PROGRAM MAIN
complex*8,parameter::d=cmplx(32_1)
call check(d,cmplx(32_1))
END

subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i1->C8) ???'
else
print*," i1->C8 OK"
endif
end subroutine

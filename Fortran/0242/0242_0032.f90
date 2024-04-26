PROGRAM MAIN
complex*8,parameter::d=cmplx(X=32_1,Y=22_1,KIND=4)
call check(d,cmplx(X=32_1,Y=22_1,KIND=4))
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

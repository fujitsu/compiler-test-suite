PROGRAM MAIN
complex*32,parameter::d=cmplx(40_1,45_1,KIND=16)
call check(d,cmplx(40_1,45_1,KIND=16))
END
 
subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i1->C32) ???'
else
print*," i1->C32 OK"
endif
end subroutine

PROGRAM MAIN
complex*16,parameter::d=cmplx(35_1,25_1,kind=8)
call check(d,cmplx(35_1,25_1,kind=8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i1->C16) ???'
else
print*," i1->C16 OK"
endif
end subroutine

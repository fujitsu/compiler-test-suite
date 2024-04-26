PROGRAM MAIN
complex*16,parameter::d=cmplx(32256789.4_8,22256789.4_8,KIND=8)
call check(d,cmplx(32256789.4_8,22256789.4_8,KIND=8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->C16) ???'
else
print*," R8->C16 OK"
endif
end subroutine 

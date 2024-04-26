PROGRAM MAIN
complex*32,parameter::d=cmplx(322123456789.4_16, KIND=16)
call check(d,cmplx(322123456789.4_16, KIND=16))
END

subroutine check(x,y)
complex*32 x,y 
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->C32) ???' 
else
print*," R16->C32 OK"
endif
end subroutine

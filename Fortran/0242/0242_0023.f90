PROGRAM MAIN
complex*16,parameter::d=cmplx(322345.4_8, KIND=8)
call check(d,cmplx(322345.4_8, KIND=8))
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

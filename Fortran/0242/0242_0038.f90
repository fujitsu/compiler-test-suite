PROGRAM MAIN
complex*16,parameter::d=cmplx(3522123_4,4034567_4,KIND=8)
call check(d,cmplx(3522123_4,4034567_4,KIND=8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->C16) ???'
else
print*," i4->C16 OK"
endif
end subroutine


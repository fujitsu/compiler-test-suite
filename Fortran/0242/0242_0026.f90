PROGRAM MAIN
complex*16,parameter::d=cmplx(b'10101011',z'abc',KIND=8)
call check(d,cmplx(b'10101011',z'abc',KIND=8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: boz->C16) ???'
else
print*," boz->C16 OK"
endif
end subroutine

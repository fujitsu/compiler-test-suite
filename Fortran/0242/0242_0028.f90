PROGRAM MAIN
complex*8,parameter::d=cmplx(b'1010101',o'12435',KIND=4)
call check(d,cmplx(b'1010101',o'12435',KIND=4))
END

subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: boz->C) ???'
else
print*," boz->C OK"
endif
end subroutine

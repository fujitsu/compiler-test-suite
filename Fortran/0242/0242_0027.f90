PROGRAM MAIN
complex*32,parameter::d=cmplx(z'abcde',o'435',KIND=16)
call check(d,cmplx(z'abcde',o'435',KIND=16))
END

subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: boz->C32) ???'
else
print*," boz->C32 OK"
endif
end subroutine

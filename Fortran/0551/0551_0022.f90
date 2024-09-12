PROGRAM MAIN
REAL*8::a = DINT(5.5_8)
call check(a, DINT(5.5_8))
END

subroutine check(x, y)
REAL*8 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif
end subroutine

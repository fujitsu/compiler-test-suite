PROGRAM MAIN
REAL*16::a = AINT(-640.1_8, 16)
call check(a, AINT(-640.1_8, 16))
END

subroutine check(x, y)
REAL*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R16) ???'
else
print*," R8->R16 OK"
endif
end subroutine

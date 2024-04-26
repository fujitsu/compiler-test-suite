PROGRAM MAIN
REAL*16::a = AINT(-612.5_16)
call check(a, AINT(-612.5_16))
END

subroutine check(x, y)
REAL*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->R16) ???'
else
print*," R16->R16 OK"
endif
end subroutine

PROGRAM MAIN
REAL*16::a = AINT(5.5_4, 16)
call check(a, AINT(5.5_4, 16))
END

subroutine check(x, y)
REAl*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R16) ???'
else
print*," R->R16 OK"
endif
end subroutine

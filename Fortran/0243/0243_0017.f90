PROGRAM MAIN
REAL*8::a = AINT(5.5_4, 8)
call check(a, AINT(5.5_4, 8))
END

subroutine check(x, y)
REAL*8 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R8) ???'
else
print*," R->R8 OK"
endif
end subroutine

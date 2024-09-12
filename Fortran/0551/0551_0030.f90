PROGRAM MAIN
REAL(KIND=8)::a = EXP(60.2_8)
call check(a, EXP(60.2_8))
END

subroutine check(x, y)
REAL(KIND=8) x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif
end subroutine

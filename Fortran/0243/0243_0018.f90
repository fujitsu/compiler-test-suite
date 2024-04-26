PROGRAM MAIN
REAL::a = AINT(A=55.5_4, KIND=4)
call check(a, AINT(A=55.5_4, KIND=4))
END

subroutine check(x, y)
REAL x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
end subroutine

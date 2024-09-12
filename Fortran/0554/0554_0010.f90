PROGRAM MAIN
REAL,parameter ::b = -15.3
REAL::a = ANINT(b)
integer :: k = KIND(ANINT(b))
call check(a, ANINT(b))
call check1(k, kind(ANINT(b)))
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

subroutine check1(x, y)
integer x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (KIND Error) ???'
else
print*," KIND OK"
endif
end subroutine

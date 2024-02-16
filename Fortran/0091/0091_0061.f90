PROGRAM MAIN
REAL, parameter::b = -15.3
REAL::a = NEAREST(b, 4.0_4)
integer :: k = kind(NEAREST(b, 4.0_4))
call check(a, NEAREST(b, 4.0_4))
call check1(k, kind(NEAREST(b, 4.0_4)))
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


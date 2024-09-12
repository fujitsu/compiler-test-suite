PROGRAM MAIN
COMPLEX, parameter::b=(12.1_4, 11.2_4)
COMPLEX::a = CONJG(b)
integer :: k = kind(CONJG(b))
call check(a, CONJG(b))
call check1(k, kind(CONJG(b)))
END

subroutine check(x, y)
COMPLEX x, y
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

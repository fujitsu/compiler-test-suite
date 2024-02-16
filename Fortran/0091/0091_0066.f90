PROGRAM MAIN
REAL*8::a=NEAREST(15.3_8, 4.0_4)
integer :: k = kind(NEAREST(15.3_8, 4.0_4))
REAL*8::b = 15.3_8
REAL*4::c = 4.0_4
call check(a, NEAREST(b,c))
call check1(k, kind(NEAREST(b,c)))
END

subroutine check(x, y)
REAL*8  x, y
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




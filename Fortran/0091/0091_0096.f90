PROGRAM MAIN
REAL::e(10)
REAL,parameter::a(10)= 35.1_8
integer, parameter::b(10) = 4_4
REAL::d(10) = SET_EXPONENT (a, b)
integer :: k = kind (SET_EXPONENT (35.1_8, 4_4))
e=SET_EXPONENT (a, b)
do i=1,10
call check(d(i),e(i))
enddo
call check1(k,kind (SET_EXPONENT (35.1_8, 4_4)))
END

subroutine check(x,y)
REAL  x,y
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


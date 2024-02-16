PROGRAM MAIN
REAL::e(3)
REAL,parameter::a(3)=(/35.1_8,0.4_8,56.4_8/)

REAL::d(3)=NEAREST(a(1:3), 4.0_4)
integer :: k = kind(NEAREST(35.1_8, 4.0_4))

e=NEAREST(a(1:3), 4.0_4)

do i=1,3
call check(d(i),e(i))
enddo


call check1(k,kind(NEAREST(35.1_8, 4.0_4)))

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


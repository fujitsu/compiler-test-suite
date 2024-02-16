PROGRAM MAIN
REAL::e(3)
REAL,parameter::a(3)=(/35.1_4,0.4_4,56.4_4/)

REAL::d(3)=RRSPACING(a(1:3))
integer :: k = kind(RRSPACING(5.1_4))

e=RRSPACING(a(1:3))

do i=1,3
call check(d(i),e(i))
enddo
call check1(k,kind(RRSPACING(5.1_4)))
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


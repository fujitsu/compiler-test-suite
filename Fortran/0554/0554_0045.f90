PROGRAM MAIN
REAL::e(3)
REAL,parameter::a(3)=(/5.1_4,0.4_4,1.4_4/)

REAL::d(3)=GAMMA(a(1:3))
integer :: k =kind(GAMMA(5.1_4))

e=GAMMA(a(1:3))

do i=1,3
call check(d(i),e(i))
enddo

call check1(k,kind(GAMMA(5.1_4)))
end
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

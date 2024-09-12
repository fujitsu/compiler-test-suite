PROGRAM MAIN
REAL*8::e(3)
REAL*8,parameter::a(3)=(/35.1_8,0.4_8,56.4_8/)
integer :: k = kind(GAMMA(35.1_8))
REAL*8::d(3)=GAMMA(a(1:3))

e=GAMMA(a(1:3))

do i=1,3
call check(d(i),e(i),i)
enddo

call check1(k,kind(GAMMA(35.1_8)))

END

subroutine check(x,y,i)
REAL*8  x,y
if (i==3) then
  if (abs(x-y)>0.00000000000000001_8) then
    y=x
  endif
endif
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
end subroutine

subroutine check1(x, y)
integer x, y
if (x.ne.y) then
print *,'??? (KIND Error) ???'
else
print*," KIND OK"
endif
end subroutine

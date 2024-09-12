PROGRAM MAIN
REAL*8::e(3)
REAL*8,parameter::a(3)=(/35.1_8,0.0_8,56.4_8/)

REAL*8::d(3)=DINT(a(1:3))

e=DINT(a(1:3))

do i=1,3
call check(d(i),e(i))
enddo
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif
end subroutine

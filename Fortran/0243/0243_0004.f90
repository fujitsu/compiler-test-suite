PROGRAM MAIN
REAL::e(3)
REAL,parameter::a(3)=(/-35.1_4,-0.0_4,-56.4_4/)

REAL::d(3)=ABS(a(1:3))

e=ABS(a(1:3))

do i=1,3
call check(d(i),e(i))
enddo
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*,"ABS R->R OK"
endif
end subroutine

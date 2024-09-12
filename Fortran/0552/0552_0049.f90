PROGRAM MAIN
REAL::e(3)
REAL,parameter::a(3)=(/-5.1_4,-0.0_4,-6.4_4/)

REAL::d(3)=TAN(a(1:3))

e=TAN(a(1:3))

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
print*," R->R OK"
endif
end subroutine

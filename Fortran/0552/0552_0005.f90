PROGRAM MAIN
REAL::e(3)
REAL,parameter::a(3)=(/0.1_4,0.0_4,0.4_4/)

REAL::d(3)=ASIN(a(1:3))

e=ASIN(a(1:3))

do i=1,3
call check(d(i),e(i))
enddo
END

subroutine check(x,y)
REAL  x,y
if (abs(x-y)>0.000001) then
print *,x, "--",y
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
end subroutine

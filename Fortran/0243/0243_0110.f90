PROGRAM MAIN
REAL::e(2)
REAL,parameter::a(2)=(/-35.1_4, 56.4_4/)
REAL,parameter::b(2)=(/21.1_4, -33.4_4/)

REAL::d(2)=SIGN(a(1:2),b(1:2))

e=SIGN(a(1:2),b(1:2))

do i=1,2
call check(d(i), e(i))
enddo
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*,"SIGN R->R OK"
endif
end subroutine

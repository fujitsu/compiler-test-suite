PROGRAM MAIN
COMPLEX,DIMENSION(1:2),PARAMETER::a=(3256789_4,2212345_4)
complex*16,DIMENSION(2)::d=cmplx(a(1:2),KIND=8)
complex*16,DIMENSION(2)::b
b=cmplx(a(1:2),KIND=8)

do i=1,2
call check(d(i),b(i))
enddo
END

subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then 
print *,'??? (Error: C->C16) ???'
else
print*," C->C16 OK"
endif
end subroutine

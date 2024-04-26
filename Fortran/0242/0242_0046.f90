PROGRAM MAIN
COMPLEX*16,DIMENSION(1:3),PARAMETER::a=(3212345_4,22.12345_4)
complex*16,DIMENSION(3)::d=dcmplx(a(1:3))
complex*16,DIMENSION(3)::b
b=dcmplx(a(1:3))

do i=1,3
call check(d(i), b(i))
enddo
END

subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then 
print *,'??? (Error: C->C16) ???'
else
print*,"dcmplx C->C16 OK"
endif
end subroutine

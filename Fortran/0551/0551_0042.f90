PROGRAM MAIN
REAL*16,PARAMETER::a(5)=-62181.43_16

INTEGER::b(5)=IDINT(a(1:5))

do i=1,5
call check(b(i),IDINT(a(i)))
enddo

END

subroutine check(x,y)
integer*4 x,y
print*, x, "--", y      
if (x.ne.y) then
print *,'??? (Error: R16->i4 ???)'
else
print*, "R16->i4 OK"      
endif
end subroutine

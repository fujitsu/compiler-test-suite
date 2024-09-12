real a(10,3)
a=3.0
call foo(a,10)
end

subroutine foo(i,k)
integer :: k
real :: i,j,b
dimension :: i(k,3),j(k),b(k)
DO l=1,3
DO M=1,10
j(M)=COS(i(M,l))
b(M)=SIN(i(M,l))
ENDDO
ENDDO
WRITE(6,*)"j=",j
WRITE(6,*)"b=",b
END

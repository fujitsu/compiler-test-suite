real,dimension(10) :: a
DATA a/1,2,3,4,5,6,7,8,9,10/
call sub(a)
end program
subroutine sub(x)
real,dimension(-1:*) :: x
real,dimension(-1:8) :: A
DO i=-1,8
A(i)=sin(x(i))
ENDDO
WRITE(6,*)"A=",A
end subroutine

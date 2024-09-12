program main
real*8 A(10),B(10),N,j
DATA A/1,2,3,4,5,6,7,8,9,10/
j=0
N=0
DO i=1,10
N=N+1
call square(N)
A(i)=SIN(N)
ENDDO
DO i=1,10
j=2+j
call quad(j)
B(i)=COS(j)
ENDDO
WRITE(6,*)"A=",A
WRITE(6,*)"B=",B
end program main

subroutine quad(k)
real*8 k
k=k
entry square(k)
k=k
return
end subroutine quad

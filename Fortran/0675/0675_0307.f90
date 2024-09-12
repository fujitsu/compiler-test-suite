real(kind=8), allocatable :: A(:),B(:)
integer x,y,z
x=2
y=5
z=10
n=x*y*z
allocate(A(n),B(n))

DO i=1,n
   A(i)=i*i
   B(i)=LOG(A(i))
ENDDO

WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END

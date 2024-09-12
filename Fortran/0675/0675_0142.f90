REAL*8 A1(10,10),B1(10),C(10,10),D(10),A2(10,10),B2(10),point(10)
pointer(ptr,point)
DATA D/1,2,3,4,5,6,7,8,9,10/

DO j=1,10
   DO i=1,10
      C(j,i)=j+i
      C(i,j)=i+j+i+j
      A1(i,j)=SIN(C(j,i))
      A2(i,j)=COS(D(i))
      B1(i)=A1(i,j)+A2(i,j)
      B2(i)=A1(i,j)*A2(i,j)
   ENDDO
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2
WRITE(6,*)'B1=',B1
WRITE(6,*)'B2=',B2

ptr = loc(D)
DO i=1,10
   B1(i)=SIN(point(i))
   B2(i)=COS(D(i))
ENDDO
WRITE(6,*)'B1=',B1
WRITE(6,*)'B2=',B2
END

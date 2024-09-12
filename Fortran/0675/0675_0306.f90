REAL*8 B1(10),D(10),B2(10),point(10)
pointer(ptr,point)
DATA D/1,2,3,4,5,6,7,8,9,10/

ptr = loc(D)
DO i=1,10
   B1(i)=COS(point(i))
   B2(i)=SIN(D(i))
ENDDO
WRITE(6,*)'B1=',B1
WRITE(6,*)'B2=',B2
END

REAL*8 A1(10,10),B1(10,10),C,D,M(10,10),N(10,10),A2(10,10),B2(10,10)
DO i=1,10
DO j=1,10
C=j
A1(i,j)=C**C
D=j+i
B1(i,j)=D**D
ENDDO
ENDDO

DO i=1,10
DO j=1,10
M(i,j)=j
A2(i,j)=M(i,j)**M(i,j)
N(i,j)=j+1
B2(i,j)=N(i,j)**N(i,j)
ENDDO
ENDDO
if (A1(1,1) .eq. A2(1,1)) then
  write(6,*) "ok1"
else
  write(6,*) "ng1"
endif
if (B1(1,1) .eq. B2(1,1)) then
  write(6,*) "ok2"
else
  write(6,*) "ng2"
endif
END

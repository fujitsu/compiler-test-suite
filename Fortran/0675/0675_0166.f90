REAL*8 E(10,10),F(10,10),X(10)
F=1.0
E=1.0
DO i=1,10
  DO j=1,9
  ENDDO
  X(i)=EXP(F(i,j))+EXP(E(i,j))
ENDDO
WRITE(6,*)"X=",X
END

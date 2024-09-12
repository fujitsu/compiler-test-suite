REAL*8 A,B(10),C(10),D(10),E(10),F(10),G(10),H(10),X(9)

k=3
m=5

DO i=1,10
  A=i+3
  B(i)=i+1
  C(i)=EXP(A)
  D(i)=LOG(B(i))

  DO j=1,10
    E(j)=k**j-2
    F(j)=j**m
    G(j)=LOG(E(j))
    H(j)=F(j)**j
  ENDDO
  DO n=1,9
  X(n)=EXP(A)+EXP(B(i))+LOG(C(i))-EXP(E(j-1)-E(j-2)-E(j-1))+D(i)**n
  END DO
ENDDO
WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D
WRITE(*,*)"E=",E
WRITE(*,*)"F=",F
WRITE(*,*)"G=",G
WRITE(*,*)"H=",H
WRITE(*,*)"X=",X

END

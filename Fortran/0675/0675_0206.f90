REAL*4 A(3),B(3),C(3),D(3),E(3),F(3),G(3),H(3),X(3)

k=2
l=3
m=4

DO i=1,3
  A(i)=i+1
  B(i)=i+2
  C(i)=EXP(A(i))
  D(i)=EXP(B(i))

  DO j=1,3
    E(j)=k**l
    G(j)=LOG(E(j)) 
    F(j)=l**m
    H(j)=LOG(F(j)) 
  ENDDO

  X(i)=LOG(A(i))+LOG(B(i))+EXP(C(i))+LOG(F(i))+EXP(E(i))+k**l
ENDDO
WRITE(*,'(A,3E15.8e2)') 'C =', C
WRITE(*,'(A,3E15.8e2)') 'D =', D
WRITE(*,'(A,3E15.8e2)') 'G =', G
WRITE(*,'(A,3E15.8e2)') 'H =', H
WRITE(*,'(A,3E15.8e2)') 'X =', X

END

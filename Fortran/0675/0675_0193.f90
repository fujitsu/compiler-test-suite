REAL*8 A(10),B(10),C(10),D(10),E(10)
REAL*8 F(10),G(10),H(10),O(10),P(10),Q(10)

A=0
B=0
C=0
D=0

DO j=1,10
    DO i=1,10
      C(i)=i**i
      D(i)=LOG(3.0**i)
      A(i)=SIN(C(i))
      B(i)=A(i)+1
      B(i)=SIN(D(i))
    ENDDO
    E(j)=SIN(A(j))+SIN(B(j))+COS(C(j))+EXP(D(j))+i**j
   DO k=1,10
     F(k)=LOG(C(k))
     G(k)=F(k)
     H(k)=EXP(D(k))
     O(k)=H(k)
     P(k)=COS(A(k))+COS(B(k))+COS(C(k))+COS(D(k))+F(k)**G(k)
     F(k)=EXP(D(k))
     H(k)=LOG(D(k))
     Q(k)=COS(A(k))+COS(B(k))+COS(SIN(C(k)))+COS(D(k))+F(k)**G(k)
   ENDDO
ENDDO

WRITE(*,*)"A="
WRITE(*,9) sum(A)
WRITE(*,*)"B="
WRITE(*,9) sum(B)
WRITE(*,*)"C="
WRITE(*,9) sum(C)
WRITE(*,*)"D="
WRITE(*,9) sum(D)
WRITE(*,*)"E="
WRITE(*,9) sum(E)
WRITE(*,*)"F="
WRITE(*,9) sum(F)
WRITE(*,*)"G="
WRITE(*,9) sum(G)
WRITE(*,*)"H="
WRITE(*,9) sum(H)
WRITE(*,*)"O="
WRITE(*,9) sum(O)
WRITE(*,*)"P="
WRITE(*,91) sum(P)
WRITE(*,*)"Q="
WRITE(*,91) sum(Q)
9 format(f40.10)
91 format(e30.10)

END

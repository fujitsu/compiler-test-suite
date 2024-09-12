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

WRITE(6,*)"A="
WRITE(6,99) A
WRITE(6,*)"B="
WRITE(6,99) B
WRITE(6,*)"C="
WRITE(6,92) C
WRITE(6,*)"D="
WRITE(6,99) D
WRITE(6,*)"E="
WRITE(6,92) E
WRITE(6,*)"F="
WRITE(6,99) F
WRITE(6,*)"G="
WRITE(6,99) G
WRITE(6,*)"H="
WRITE(6,99) H
WRITE(6,*)"O="
WRITE(6,99) O
WRITE(6,*)"P="
WRITE(6,91) P
WRITE(6,*)"Q="
WRITE(6,91) Q
99 format(3f20.11)
92 format(3f30.5)
91 format(3e20.11)
END

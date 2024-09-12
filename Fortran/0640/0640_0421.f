      IMPLICIT REAL*8(A-D)
      COMMON /BLK/ A(50),B(50),C(50)
      DATA ICNT/0/,N/50/
      CALL  INIT
      CALL  SUB231(A,B,C,N)
      CALL  SUB232(A,B,C,N)
      CALL  SUB233(A,B,C,N)
      CALL  SUB234(A,B,C,N)
      ICNT=ICNT+1
      CALL  OUTPUT(ICNT)
      CALL  INIT
      CALL  SUB235(A,B,C,N)
      CALL  SUB237(A,B,C,N)
      CALL  SUB238(A,B,C,N)
      CALL  SUB239(N)
      ICNT=ICNT+1
      CALL  OUTPUT(ICNT)
      CALL  INIT
      CALL  SUB240(A,B,C,N)
      CALL  SUB241(N)
      CALL  SUB244(N)
      CALL  SUB245(A,B,C,N)
      ICNT=ICNT+1
      CALL  OUTPUT(ICNT)
      CALL  INIT
      CALL  SUB246(N)
      CALL  SUB247(N)
      CALL  SUB248(N)
      CALL  SUB249(A,B,C,N)
      ICNT=ICNT+1
      CALL  OUTPUT(ICNT)
      CALL  INIT
      CALL  SUB250(A,B,C,N)
      CALL  SUB262(A,B,C,N)
      CALL  SUB278(A,B,C,N)
      ICNT=ICNT+1
      CALL  OUTPUT(ICNT)
      STOP
      END
      SUBROUTINE INIT
      IMPLICIT REAL*8(A-D)
      COMMON /BLK/ A(50),B(50),C(50)
      DO 10 I=1,50
       A(I)=DFLOAT(I)
       B(I)=1.D0
       C(I)=DFLOAT(51-I)
  10  CONTINUE
      RETURN
      END
      SUBROUTINE OUTPUT(ICNT)
      IMPLICIT REAL*8(A-D)
      COMMON /BLK/ A(50),B(50),C(50)
      WRITE(6,*) ' A=',A
      WRITE(6,*) ' B=',B
      WRITE(6,*) ' C=',C
      RETURN
      END
      SUBROUTINE SUB231(A,B,C,N)
      REAL*8  A(N),B(N),C(N)

      N1=N/10-3
      NX=N-2
      DO 10 I=3,NX
        A(I)=B(I+N1)+C(I)
        B(I)=A(I-1)+C(I)
 10   CONTINUE

      DO 20 I=3,NX
        A(I)=B(I)+C(I)
        C(I)=A(N1)+B(I)
 20   CONTINUE
      RETURN
      END
      SUBROUTINE SUB232(A,B,C,N)
      REAL*8  A(N),B(N),C(N)

      N2=N/25
      N1=N2-1
      NED=N-2
      DO 10 I=2,NED
        C(I+N1)=C(I+N2)+A(I)
        B(I)=B(I)-FLOAT(I)
 10   CONTINUE

      DO 20 I=N2,NED
        A(I)=C(I+N2)*A(N1)
 20   CONTINUE
      RETURN
      END
      SUBROUTINE SUB233(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      NNN=N
      DO 10 I=2,N/2
        B(I)=B(NNN)+C(I)-A(I)
 10     NNN=NNN-1
      RETURN
      END
      SUBROUTINE SUB234(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      N2=N/25
      N1=N2-1
      NNN=1
      DO 10 I=27,N
        B(NNN)=DMIN1(A(NNN),C(I-1))
        C(I)=DMAX1(A(NNN),B(NNN+1))
        NNN=NNN+N1*N2
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB235(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      INTEGER*4 L(50)
      NX=N-2
      DO 10 I=1,50
 10    L(I)=51-I
      DO 20 J=48,50
       NN=L(J)
       DO 20 I=1,NX,NN
         C(I)=B(I+1)+A(I+1)
         B(I)=C(I)+A(I)
 20   CONTINUE
      RETURN
      END
      SUBROUTINE SUB237(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      INTEGER*4  L(50)
      NX=N-3
      DO 10 I=1,50
  10    L(I)=I
      DO 20 J=2,NX
        B(J)=B(J+1)-C(J)
  20    C(L(J))=C(L(J))+A(J)
      NX=N/2-1
      DO 30 I=2,NX
        A(I)=A(I*2-1)+B(I)
  30  CONTINUE
      RETURN
      END
      SUBROUTINE SUB238(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      INTEGER*4 L(50)
      NX=N-3
      DO 10 I=1,50
  10    L(I)=I
      DO 20 J=2,NX
       N1=L(J)
       N2=51-L(J)
       B(N1)=C(N2)+A(J)
       C(N2)=B(N1-1)-A(J)
  20  CONTINUE
      RETURN
      END
      SUBROUTINE SUB239(N)
      IMPLICIT REAL*8(A-D)
      COMMON /BLK/ A(50),B(50),C(50)
      EQUIVALENCE (A(50),DX),(A(1),DY)
      NX=N-1
      DO 10 I=NX,26,-1
        DX=B(I)+C(I)
        DY=DMIN1(B(I),C(I))+3.D0
        C(I)=DMOD(DX,DY)
 10   CONTINUE
      A(2)=DX
      RETURN
      END
      SUBROUTINE SUB240(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      INTEGER*4 L(50)
      NX=N-3
      DO 10 I=1,50
        L(I)=I
 10   CONTINUE
      DO 20 K=15,20
       DO 20 J=2,L(K)
        C(J)=A(J*2)+C(J+1)
        A(J)=B(K)-A(J+1)
  20  CONTINUE
      DO 30 I=2,L(45),L(2)
        B(I)=B(I+1)/C(I)
  30  CONTINUE
      RETURN
      END
      SUBROUTINE SUB241(N)
      IMPLICIT REAL*8(A-D)
      COMMON /BLK/ A(50),B(50),C(50)
      EQUIVALENCE (DX,DY,B(1))
      NX=N+10
      DO 10 I=1,NX/2
        DX=DMIN1(C(I),B(I))
        DY=DX+B(I)
 10   CONTINUE
      A(N)=DY
      RETURN
      END
      SUBROUTINE SUB244(N)
      IMPLICIT REAL*8(A-C)
      COMMON /BLK/ A(50),B(50),C(50)
      REAL*8  WK1(100),WK2(100)
      EQUIVALENCE (A(1),WK1(1)),(C(50),WK2(100))
      NX=N*2
      DO 10 I=1,NX
        WK1(I)=WK1(I)-WK2(NX-I+1)
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB245(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      N1=N/49
      NN=N

      DO 10 I=49,16,-1
        A(I)=B(NN)+C(I)
        NN=NN-N1
        B(NN+1)=A(I+1)+C(I)
  10  CONTINUE

      DO 20 I=2,25,N1
        C(NN+N1)=B(I)+A(I)
        NN=NN+1
        B(I)=C(NN)*A(I)
  20  CONTINUE
      RETURN
      END
      SUBROUTINE SUB246(N)
      IMPLICIT REAL*8(A-D),COMPLEX*16(X)
      COMMON /BLK/ A(50),B(50),C(50)
      DIMENSION XX(25)
      EQUIVALENCE  (XX(1),A(1))
      NX=N/25
      DO 10 I=1,NX
       DO 10 J=1,25
         XX(J)=DCMPLX(A(J*2),B(J))
         C(J)=A(J)
 10   CONTINUE
      RETURN
      END
      SUBROUTINE SUB247(N)
      IMPLICIT REAL*8(A-D),COMPLEX*16(X)
      COMMON /BLK/ A(50),B(50),C(50)
      DIMENSION  DX(10,10)
      EQUIVALENCE (DX(1,1),B(1))
      NX=N/5
      DO 10 I=1,NX
       DO 10 J=1,NX
         DX(J,I)=A(J)-B(J)
 10   CONTINUE
      RETURN
      END
      SUBROUTINE SUB248(N)
      IMPLICIT REAL*8(A-D),COMPLEX*16(X)
      COMMON /BLK/ A(50),B(50),C(50)
      DIMENSION DX(-50:-1)
      EQUIVALENCE (A(1),DX(-50))
      NN=-N
      DO 10 I=2,N-3
       DX(NN)=DMIN1(B(I),A(I))
       NN=NN+1
 10   CONTINUE
      NN=-1
      DO 20 J=2,N-3
        B(I)=C(I)-DX(NN)
        NN=NN-1
 20   CONTINUE
      RETURN
      END
      SUBROUTINE SUB249(A,B,C,N)
      REAL*8  A(N),B(N),C(N),DX,DY
      LOGICAL*4  LX(50)/50*.FALSE./
      CHARACTER ZZZ*4
      DATA  ZZZ/4H*OK*/
      NX=N-5
      DO 10 I=2,NX
       DX=DMIN1(A(I),B(I))+C(I)
       DY=DX*2.D0+A(I)/(DX+1.D0)
       WRITE(6,*) 'DY=',DY
 10   CONTINUE
      DO 20 I=2,NX
        A(I)=A(I)-C(I)
        B(I)=B(I)-C(I)
        LX(I)= ZZZ.EQ.'*OK*' .AND. ( A(I-1).GE.B(I-1) )
 20   CONTINUE
      WRITE(6,*) 'LX=',LX
      RETURN
      END
      SUBROUTINE SUB250(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      NX=N-5
      DO 10 I=2,NX
        A(I)=B(I)+C(I)
        B(I)=A(3)*C(I)
  10  CONTINUE
      J=1
      DO 20 K=2,NX
         B(J)=B(J)*A(K)-C(K)
         C(K)=C(K)-FLOAT(K)
  20  CONTINUE
      RETURN
      END
      SUBROUTINE SUB262(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      NX=N-1
      DO 10 I=2,NX
       A(I)=A(I-1)+B(I)
 10   CONTINUE
      DO 20 J=NX,2,-1
       B(J)=B(J+1)+C(J)
 20   CONTINUE
      N1=N/45

      DO 30 K=2,NX
       C(K+N1)=C(K)+A(K)
 30   CONTINUE
      RETURN
      END
      SUBROUTINE SUB278(A,B,C,N)
      REAL*8  A(N),B(N),C(N)
      NX=N/2+1
      RX = A(1)
      RY = 1.0
      DO 10 I=1,NX
        B(I)=B(I)-RX
        RX =DMIN1(A(I),B(I))
        RY = RY+ABS(C(I))
  10  CONTINUE
      C(NX)=RY
      C(N)=RX
      RETURN
      END

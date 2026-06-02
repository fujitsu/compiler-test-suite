module mod
  implicit none
  type TAG 
     sequence
     real*8 a(50),b(50),c(50)
  end type TAG
end module mod
!             CVCTFMSG            LEVEL=4        DATE=87.09.24
!             CVCTFMSG            LEVEL=1        DATE=84.11.30
!   PROGRAM NAME : CVCTFMSG
use mod
IMPLICIT REAL*8(A-D)
  type (TAG) st
  COMMON /BLK/ st
  DATA ICNT/0/,N/50/
  !
  CALL  INIT
  CALL  JND231(st,N)
  CALL  JND232(st%A,st%B,st%C,N)
  CALL  JND233(st%A,st%B,st%C,N)
  CALL  JND234(st%A,st%B,st%C,N)
  ICNT=ICNT+1
  CALL  OUTPUT(ICNT)
  CALL  INIT
  CALL  JND235(st%A,st%B,st%C,N)
  CALL  JND237(st%A,st%B,st%C,N)
  CALL  JND238(st%A,st%B,st%C,N)
  CALL  JND239(N) !
  ICNT=ICNT+1
  CALL  OUTPUT(ICNT)
  CALL  INIT
  CALL  JND240(st%A,st%B,st%C,N)
  CALL  JND241(N)
  CALL  JND244(N)
  CALL  JND245(st%A,st%B,st%C,N)
  ICNT=ICNT+1
  CALL  OUTPUT(ICNT)
  CALL  INIT
  CALL  JND246(N)
  CALL  JND247(N)
  CALL  JND248(N)
  CALL  JND249(st%A,st%B,st%C,N)
  ICNT=ICNT+1
  CALL  OUTPUT(ICNT)
  CALL  INIT
  CALL  JND250(st%A,st%B,st%C,N)
  CALL  JND262(st%A,st%B,st%C,N)
  CALL  JND278(st%A,st%B,st%C,N)
  ICNT=ICNT+1
  CALL  OUTPUT(ICNT)
  !
  STOP
END program

  SUBROUTINE INIT
    IMPLICIT REAL*8(A-D)
    COMMON /BLK/ A(50),B(50),C(50)
    DO I=1,50
       A(I)=DFLOAT(I)
       B(I)=1.D0
       C(I)=DFLOAT(51-I)
    END DO
    RETURN
  END SUBROUTINE INIT
  SUBROUTINE OUTPUT(ICNT)
    IMPLICIT REAL*8(A-D)
    COMMON /BLK/ A(50),B(50),C(50)
    WRITE(6,*) ' ***CVCTFMSG***ICNT=',ICNT,'****'
    WRITE(6,*) ' A=',A
    WRITE(6,*) ' B=',B
    WRITE(6,*) ' C=',C
    RETURN
  END SUBROUTINE OUTPUT
  SUBROUTINE JND231(st,N)
    use mod
    type(TAG) st
    !
    !*VOCL LOOP, N1.GT.0
    N1=N/10-3
    NX=N-2
    DO I=3,NX
       st%A(I)=st%B(I+N1)+st%C(I)
       st%B(I)=st%A(I-1)+st%C(I)
    END DO
    !
    !*VOCL LOOP, N1.LT.3
    DO I=3,NX
       st%A(I)=st%B(I)+st%C(I)
       st%C(I)=st%A(N1)+st%B(I)
    END DO
    !
    RETURN
  END SUBROUTINE JND231
  SUBROUTINE JND232(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    !
    !*VOCL LOOP, N2.GT.N1
    N2=N/25
    N1=N2-1
    NED=N-2
    DO I=2,NED
       C(I+N1)=C(I+N2)+A(I)
       B(I)=B(I)-FLOAT(I)
    END DO
    !
    !*VOCL LOOP,N1.LT.N2
    DO I=N2,NED
       A(I)=C(I+N2)*A(N1)
    END DO
    RETURN
  END SUBROUTINE JND232
  SUBROUTINE JND233(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    !
    NNN=N
    DO I=2,N/2
       B(I)=B(NNN)+C(I)-A(I)
       NNN=NNN-1
    END DO
    !
    RETURN
  END SUBROUTINE JND233
  SUBROUTINE JND234(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    N2=N/25
    N1=N2-1
    NNN=1
    DO I=27,N
       B(NNN)=DMIN1(A(NNN),C(I-1))
       C(I)=DMAX1(A(NNN),B(NNN+1))
       NNN=NNN+N1*N2
    END DO
    !
    RETURN
  END SUBROUTINE JND234
  SUBROUTINE JND235(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    INTEGER*4 L(50)
    !
    NX=N-2
    DO I=1,50
       L(I)=51-I
    END DO
    DO J=48,50
       NN=L(J)
       DO I=1,NX,NN
          C(I)=B(I+1)+A(I+1)
          B(I)=C(I)+A(I)
       END DO
    END DO
    RETURN
  END SUBROUTINE JND235
  SUBROUTINE JND237(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    INTEGER*4  L(50)
    NX=N-3
    DO I=1,50
       L(I)=I
    END DO
    DO J=2,NX
       B(J)=B(J+1)-C(J)
       C(L(J))=C(L(J))+A(J)
    END DO
    !
    NX=N/2-1
    DO I=2,NX
       A(I)=A(I*2-1)+B(I)
    END DO
    RETURN
  END SUBROUTINE JND237
  SUBROUTINE JND238(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    INTEGER*4 L(50)
    NX=N-3
    DO I=1,50
       L(I)=I
    END DO
    DO J=2,NX
       N1=L(J)
       N2=51-L(J)
       B(N1)=C(N2)+A(J)
       C(N2)=B(N1-1)-A(J)
    END DO
    RETURN
  END SUBROUTINE JND238
  SUBROUTINE JND239(N)
    IMPLICIT REAL*8(A-D)
    COMMON /BLK/ A(50),B(50),C(50)
    EQUIVALENCE (A(50),DX),(A(1),DY)
    !
    NX=N-1
    DO I=NX,26,-1
       DX=B(I)+C(I)
       DY=DMIN1(B(I),C(I))+3.D0
       C(I)=DMOD(DX,DY)
    END DO
    A(2)=DX
    RETURN
  END SUBROUTINE JND239
  SUBROUTINE JND240(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    INTEGER*4 L(50)
    NX=N-3
    DO I=1,50
       L(I)=I
    END DO
    !
    DO K=15,20
       DO J=2,L(K)
          C(J)=A(J*2)+C(J+1)
          A(J)=B(K)-A(J+1)
       END DO
    END DO
    !
    DO I=2,L(45),L(2)
       B(I)=B(I+1)/C(I)
    END DO
    RETURN
  END SUBROUTINE JND240
  SUBROUTINE JND241(N)
    IMPLICIT REAL*8(A-D)
    COMMON /BLK/ A(50),B(50),C(50)
    EQUIVALENCE (DX,DY,B(1))
    !
    NX=N+10
    DO I=1,NX/2
       DX=DMIN1(C(I),B(I))
       DY=DX+B(I)
    END DO
    A(N)=DY
    RETURN
  END SUBROUTINE JND241
  SUBROUTINE JND244(N)
    IMPLICIT REAL*8(A-C)
    COMMON /BLK/ A(50),B(50),C(50)
    REAL*8  WK1(100),WK2(100)
    EQUIVALENCE (A(1),WK1(1)),(C(50),WK2(100))
    NX=N*2
    DO I=1,NX
       WK1(I)=WK1(I)-WK2(NX-I+1)
    END DO
    !
    RETURN
  END SUBROUTINE JND244
  SUBROUTINE JND245(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    N1=N/49
    NN=N
!*VOCL LOOP, N1.GT.0
    DO I=49,16,-1
       A(I)=B(NN)+C(I)
       NN=NN-N1
       B(NN+1)=A(I+1)+C(I)
    END DO
    !
!*VOCL LOOP, N1.GT.0
    DO I=2,25,N1
       C(NN+N1)=B(I)+A(I)
       NN=NN+1
       B(I)=C(NN)*A(I)
    END DO
    RETURN
  END SUBROUTINE JND245
  SUBROUTINE JND246(N)
    IMPLICIT REAL*8(A-D),COMPLEX*16(X)
    COMMON /BLK/ A(50),B(50),C(50)
    DIMENSION XX(25)
    EQUIVALENCE  (XX(1),A(1))
    !
    NX=N/25
    DO I=1,NX
       DO J=1,25
          XX(J)=DCMPLX(A(J*2),B(J))
          C(J)=A(J)
       END DO
    END DO
    RETURN
  END SUBROUTINE JND246
  SUBROUTINE JND247(N)
    IMPLICIT REAL*8(A-D),COMPLEX*16(X)
    COMMON /BLK/ A(50),B(50),C(50)
    DIMENSION  DX(10,10)
    EQUIVALENCE (DX(1,1),B(1))
    NX=N/5
    DO I=1,NX
       DO J=1,NX
          DX(J,I)=A(J)-B(J)
       END DO
    END DO
    RETURN
  END SUBROUTINE JND247
  SUBROUTINE JND248(N)
    IMPLICIT REAL*8(A-D),COMPLEX*16(X)
    COMMON /BLK/ A(50),B(50),C(50)
    DIMENSION DX(-50:-1)
    EQUIVALENCE (A(1),DX(-50))
    !
    NN=-N
    DO I=2,N-3
       DX(NN)=DMIN1(B(I),A(I))
       NN=NN+1
    END DO
    NN=-1
    DO J=2,N-3
       B(I)=C(I)-DX(NN)
       NN=NN-1
    END DO
    RETURN
  END SUBROUTINE JND248
  SUBROUTINE JND249(A,B,C,N)
    REAL*8  A(N),B(N),C(N),DX,DY
    LOGICAL*4  LX(50)/50*.FALSE./
    CHARACTER ZZZ*4
    DATA  ZZZ/4H*OK*/
    !
    NX=N-5
    DO I=2,NX
       DX=DMIN1(A(I),B(I))+C(I)
       DY=DX*2.D0+A(I)/(DX+1.D0)
       WRITE(6,*) '***JND249**DY=',DY
    END DO
    !
    DO I=2,NX
       A(I)=A(I)-C(I)
       B(I)=B(I)-C(I)
       LX(I)= ZZZ.EQ.'*OK*' .AND. ( A(I-1).GE.B(I-1) )
    END DO
    WRITE(6,*) '**JND249**LX=',LX
    RETURN
  END SUBROUTINE JND249
  SUBROUTINE JND250(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    NX=N-5
    DO I=2,NX
       A(I)=B(I)+C(I)
       B(I)=A(3)*C(I)
    END DO
    !
    J=1
    DO K=2,NX
       B(J)=B(J)*A(K)-C(K)
       C(K)=C(K)-FLOAT(K)
    END DO
    RETURN
  END SUBROUTINE JND250
  SUBROUTINE JND262(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    NX=N-1
    DO I=2,NX
       A(I)=A(I-1)+B(I)
    END DO
    !
    DO J=NX,2,-1
       B(J)=B(J+1)+C(J)
    END DO
    N1=N/45
!*VOCL LOOP, N1.GT.0
    DO K=2,NX
       C(K+N1)=C(K)+A(K)
    END DO
    RETURN
  END SUBROUTINE JND262
  SUBROUTINE JND278(A,B,C,N)
    REAL*8  A(N),B(N),C(N)
    NX=N/2+1
    RX = A(1)
    RY = 1.0
    DO I=1,NX
       B(I)=B(I)-RX
       RX =DMIN1(A(I),B(I))
       RY = RY+ABS(C(I))
    END DO
    !
    C(NX)=RY
    C(N)=RX
    RETURN
  END SUBROUTINE JND278

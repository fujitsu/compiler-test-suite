      COMMON /BLK/ C1(50),C2(50),C3(50)
      REAL*8     A1(50),A2(50),A3(50)
      COMPLEX*16 C1,C2,C3
      DATA  A1,A2,A3/50*1.D0,50*2.D0,50*3.D0/,N/50/

      CALL  SUB1(A1,A2,A3,N)
      CALL  SUB2(N)

      WRITE(6,99) ' A1=',A1
      WRITE(6,99) ' A2=',A2
      WRITE(6,99) ' A3=',A3
      WRITE(6,99) ' C1=',C1
      WRITE(6,99) ' C2=',C2
      WRITE(6,99) ' C3=',C3
 99   FORMAT(A,(5D14.7))
      STOP
      END
      BLOCK DATA INIT
      COMMON /BLK/ C1(50),C2(50),C3(50)
      COMPLEX*16 C1,C2,C3
      DATA  C1,C2,C3/50*(1.D0,3.D0),50*(2.D0,-1.D0),50*(4.D0,5.D0)/
      END
      SUBROUTINE SUB1(A,B,C,N)
      REAL*8   A(N),B(N),C(N)
      NX=N-5
      DO 10 I=2,NX
        A(I)=B(I)+C(I)
        CALL SUB(A(I),C(I))
        B(I)=A(I-1)*C(I)
  10  CONTINUE

      J=1
      DO 20 K=2,NX
         B(J)=B(J)*A(K)-C(K)
         C(K)=C(K)-FLOAT(K)
         WRITE(6,88) ' C(K)=',C(K)
  20  CONTINUE
  88  FORMAT (A,(2D14.7))
      RETURN
      END
      SUBROUTINE SUB(DX,DY)
      REAL*8  DX,DY
      DY = DY+DX
      RETURN
      END
      SUBROUTINE SUB2(N)
      COMMON /BLK/ A(50),B(50),C(50)
      COMPLEX*16 CX,CY,A,B,C
      EQUIVALENCE (CX,A(1))
      NX=N/2+1
      DO 10 J=1,2
       CY = A(J)
       DO 10 I=1,NX
        B(I)=B(I)-CY
        CY = DMIN1(DIMAG(C(I)),DREAL(B(I)))
        CX = CX+C(I)
  10  CONTINUE
      C(NX)=CY
      C(N)=CX
      RETURN
      END

!             CVCT3VM1            LEVEL=1        DATE=84.12.13
    module str
      type::str_r8_3
        real*8::A1,A2,A3
      end type
      type::str_c16
        sequence
        complex*16::c16
      end type
    end module
!   PROGRAM NAME : CVCT3VM
      use str
      type (str_r8_3)::A(50)
      type (str_c16)::C1(50),C2(50),C3(50)
      COMMON /BLK/ C1,C2,C3
      DATA  A/50*str_r8_3(1.D0,2.D0,3.D0)/,N/50/
!
      CALL  JND249(A,N)
      CALL  JND239(N)
!
      WRITE(6,*) ' ***CVCT3VM1*** '
      WRITE(6,99) ' A1=',A%A1
      WRITE(6,99) ' A2=',A%A2
      WRITE(6,99) ' A3=',A%A3
      WRITE(6,99) ' C1=',C1%c16
      WRITE(6,99) ' C2=',C2%c16
      WRITE(6,99) ' C3=',C3%c16
 99   FORMAT(A,(5D14.7))
      STOP
      END
      BLOCK DATA INIT
      use str
      type (str_c16)::C1(50),C2(50),C3(50)
      COMMON /BLK/ C1,C2,C3

      DATA  C1%c16,C2%c16,C3%c16/50*(1.D0,3.D0),50*(2.D0,-1.D0),50*(4.D0,5.D0)/
      END
      SUBROUTINE JND249(A,N)
      use str
      type (str_r8_3)::A(N)
      NX=N-5
      DO 10 I=2,NX
        A(I)%A1=A(I)%A2+A(I)%A3
        CALL SUB(A(I)%A1,A(I)%A3)
        A(I)%A2=A(I-1)%A1*A(I)%A3
  10  CONTINUE
!
      J=1
      DO 20 K=2,NX
         A(J)%A2=A(J)%A2*A(K)%A1-A(K)%A3
         A(K)%A3=A(K)%A3-FLOAT(K)
         WRITE(6,88) ' C(K)=',A(K)%A3
  20  CONTINUE
  88  FORMAT (A,(2D14.7))
      RETURN
      END
      SUBROUTINE SUB(DX,DY)
      REAL*8  DX,DY
      DY = DY+DX
      RETURN
      END
      SUBROUTINE JND239(N)
      use str
      type (str_c16)::CX,CY,A(50),B(50),C(50)
      COMMON /BLK/ A,B,C
      EQUIVALENCE (CX,A(1))
      NX=N/2+1
      DO 10 J=1,2
       CY%c16 = A(J)%c16
       DO 10 I=1,NX
        B(I)%c16=B(I)%c16-CY%c16
        CY%c16 = DMIN1(DIMAG(C(I)%c16),DREAL(B(I)%c16))
        CX%c16 = CX%c16+C(I)%c16
  10  CONTINUE
!
      C(NX)%c16=CY%c16
      C(N)%c16=CX%c16
      RETURN
      END

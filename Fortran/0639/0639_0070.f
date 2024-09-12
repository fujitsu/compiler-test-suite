      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      CALL SUB07
      CALL SUB08
      CALL SUB09
      CALL SUB10
      CALL SUB11
      CALL SUB12
      CALL SUB13

      CALL SUB21
      CALL SUB22
      CALL SUB23
      CALL SUB24
      CALL SUB25
      CALL SUB26
      CALL SUB27
      CALL SUB28
      CALL SUB29
      CALL SUB30
      CALL SUB31
      CALL SUB32
      CALL SUB33
      STOP
      END

      SUBROUTINE SUB01
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/

      REAL*8   A8(10),B8(10),C8(10),D8(10),X8
      DATA     A8,B8,C8/10*12.0D0,10*18.0D0,10*32.0D0/

      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I) * C4(I)
        Y4 = -X4
        Z4 = A4(I) * C4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE
      WRITE(6,*) D4

      X8 = 0.0
      DO 11 I=1,10,1
        X8 = A8(I) * C8(I)
        Y8 = X8
        Z8 = A8(I) * C8(I)
        X8 = B8(I)
        D8(I) = Y8 + X8 +Z8
   11 CONTINUE

      WRITE(6,*) D8
      RETURN
      END

      SUBROUTINE SUB02
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I) + C4(I)
        Y4 = -X4
        Z4 = A4(I) * C4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB03
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I) / C4(I)
        Y4 = -X4
        Z4 = A4(I) * C4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB04
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I)
        Y4 = -X4
        Z4 = C4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB05
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I) + B4(I)
        Y4 = -X4
        Z4 = C4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB06
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I) * B4(I)
        Y4 = -X4
        Z4 = COS(A4(I))
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB07
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I) * B4(I)
        Y4 = -X4
        Z4 = C4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB08
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = SIN(A4(I))
        Y4 = -X4
        Z4 = C4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB09
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I)
        Y4 = -X4
        Z4 = A4(I) + A4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB10
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I)
        Y4 = -X4
        Z4 = A4(I) * A4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB11
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I)
        Y4 = -X4
        Z4 = A4(I) / A4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB12
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        X4 = A4(I) + B4(I)
        Y4 = -X4
        Z4 = A4(I) + B4(I)
        X4 = B4(I)
        D4(I) = Y4 + X4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB13
      IMPLICIT REAL*4 (A-Z)
      INTEGER  I
      INTEGER  A4(10),C4(10),D4(10)
      DATA     A4,C4/10*11,10*22/
      X4 = 0
      DO 10 I=1,10,1
        X4 = A4(I) + C4(I)
        Y4 = -X4
        Z4 = A4(I) * C4(I)
        D4(I) = Y4 + Y4 + Z4
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB21
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I. LT. 5 )
     1    THEN
            X4 = A4(I) * C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I) * C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB22
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I. LT. 5 )
     1    THEN
            X4 = A4(I) + C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I) + C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB23
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .GT. 5 )
     1    THEN
            X4 = A4(I) / C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I) / C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB24
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .GT. 5 )
     1    THEN
            X4 = A4(I)
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I)
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB25
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .GT. 5 )
     1    THEN
            X4 = A4(I) + B4(I)
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I) + B4(I)
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB26
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .GT. 5 )
     1    THEN
            X4 = A4(I) * B4(I)
            Y4 = -X4
            Z4 = COS(A4(I))
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I) * B4(I)
            Y4 = -X4
            Z4 = COS(A4(I))
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB27
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .GT. 5 )
     1    THEN
            X4 = A4(I) * B4(I)
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I) * B4(I)
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB28
      REAL*4   A4(10),B4(10),C4(10),D4(10)
      DATA     A4,B4,C4/10*12.0,10*18.0,10*32.0/
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .LT. 5 )
     1    THEN
            X4 = SIN(A4(I))
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = SIN(A4(I))
            Y4 = -X4
            Z4 = C4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB29
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .LT. 5 )
     1    THEN
            X4 = A4(I)
            Y4 = -X4
            Z4 = A4(I) + A4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I)
            Y4 = -X4
            Z4 = A4(I) + A4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB30
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .LT. 5 )
     1    THEN
            X4 = A4(I)
            Y4 = -X4
            Z4 = A4(I) * A4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I)
            Y4 = -X4
            Z4 = A4(I) * A4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB31
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .LT. 5 )
     1    THEN
            X4 = A4(I)
            Y4 = -X4
            Z4 = A4(I) / A4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I)
            Y4 = -X4
            Z4 = A4(I) / A4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB32
      REAL*4   A4(10),B4(10),       D4(10)
      DATA     A4,B4   /10*12.0,10*18.0       /
      X4 = 0.0
      DO 10 I=1,10,1
        IF( I .LT. 5 )
     1    THEN
            X4 = A4(I) + B4(I)
            Y4 = -X4
            Z4 = A4(I) + B4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
          ELSE
            X4 = A4(I) + B4(I)
            Y4 = -X4
            Z4 = A4(I) + B4(I)
            X4 = B4(I)
            D4(I) = Y4 + X4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

      SUBROUTINE SUB33
      IMPLICIT REAL*4 (A-Z)
      INTEGER  I
      INTEGER  A4(10),C4(10),D4(10)
      DATA     A4,C4/10*11,10*22/
      X4 = 0
      DO 10 I=1,10,1
        IF( I .LT. 5 )
     1    THEN
            X4 = A4(I) + C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            D4(I) = Y4 + Y4 + Z4
          ELSE
            X4 = A4(I) + C4(I)
            Y4 = -X4
            Z4 = A4(I) * C4(I)
            D4(I) = Y4 + Y4 + Z4
        ENDIF
   10 CONTINUE

      WRITE(6,*) D4
      RETURN
      END

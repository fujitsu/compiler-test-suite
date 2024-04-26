      INTEGER I401(10),I402(10)
      COMMON /COM1/I401,I402
      DO 10 I=1,10
        I401(I) = MOD(I,2)
        I402(I) = MOD(I,4)
   10 CONTINUE
      CALL SUB01(10,1,-1)
      CALL SUB02(1,10,2)
      STOP
      END
C
      SUBROUTINE SUB01(N1,N2,N3)
      INTEGER I401(10),I402(10)
      INTEGER I403(10)/5,4,3,2,1,0,1,2,3,4/
      COMMON /COM1/I401,I402
C
      DO 10 I=N1,N2,N3
        IF (I401(I)-1) 11,12,13
   11     I402(I) = I403(11-I) * I402(I)
          GOTO 13
   12     I402(I) = I403(I) + I - I402(I)
          GOTO 14
   13     I402(I) = I402(I) + I - N3
          IF ((I401(I)-1).LT.0) GOTO 10
   14     I402(I) = I402(I) + I401(I)
   10 CONTINUE
      WRITE(6,*) I402
      RETURN
      END
C
      SUBROUTINE SUB02(N1,N2,N3)
      INTEGER I401(10),I402(10)
      INTEGER I403(10)/5,4,3,2,1,0,1,2,3,4/
      COMMON /COM1/I401,I402
C
      DO 10 I=N1,N2,N3
        IF (I401(I)-1) 11,12,13
   11     I402(I) = I403(11-I) * I402(I)
          GOTO 13
   12     I402(I) = I403(I) + I - I402(I)
          GOTO 14
   13     I402(I) = I402(I) + I - N3
          IF ((I401(I)-1).LT.0) GOTO 10
   14     I402(I) = I402(I) + I401(I)
   10 CONTINUE
      WRITE(6,*) I402
      RETURN
      END

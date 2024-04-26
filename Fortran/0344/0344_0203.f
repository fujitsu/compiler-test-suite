      INTEGER I401(10,10)/100*0/
      INTEGER I402(10)/10*0/,I403(10)/10*0/
      INTEGER I404(10)/1,2,3,4,5,6,7,8,9,10/
      INTEGER I411(10,10)/100*0/
      INTEGER I412(10)/10*0/,I413(10)/10*0/
      INTEGER I414(10)/1,2,3,4,5,6,7,8,9,10/
C
      N = 10
      CALL SUB01(I401,I402,I403,I404,N)
      WRITE(6,*) I401
      WRITE(6,*) I402
      WRITE(6,*) I403
      WRITE(6,*) I404
C
      M = 2
      CALL SUB02(I411,I412,I413,I414,M)
      WRITE(6,*) I411
      WRITE(6,*) I412
      WRITE(6,*) I413
      WRITE(6,*) I414
      STOP
      END
C
      SUBROUTINE SUB01(I401,I402,I403,I404,N)
      INTEGER I401(N,N)
      INTEGER I402(N),I403(N)
      INTEGER I404(N)
C
      DO 30 I=1,N
        DO 30 J=1,N
          I401(I,J) = 1
   30 CONTINUE
C
      DO 10 I=1,N
        I403(I) = I
        DO 20 J=1,N
   20     I401(I,J) = 2
   10 I402(I) = 1
C
      DO 40 I=1,N
        IF (I.GT.100) GOTO 50
   40   I402(I) = I404(I) + I401(I,I403(I))
C
   50 WRITE(6,*) I402
      RETURN
      END
C
      SUBROUTINE SUB02(I411,I412,I413,I414,N)
      INTEGER I411(N,N)
      INTEGER I412(N),I413(N)
      INTEGER I414(N)
C
      DO 30 I=1,N
        DO 30 J=1,N
          I411(I,J) = 0
   30 CONTINUE
C
      DO 40 I=1,N
        I413(I) = I
        DO 50 J=1,N
   50     I411(I,J) = 1
   40 I412(I) = 2
C
      DO 60 I=1,N
        IF (I.GT.50) GOTO 70
   60   I412(I) = I414(I) + I411(I,I413(I))
C
   70 WRITE(6,*) I412
      RETURN
      END

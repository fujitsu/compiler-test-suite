      INTEGER I401(11)/1,2,3,4,5,6,7,8,9,10,0/
      INTEGER I402(25)/25*1/,I403(25)/25*2/,I404(25)/25*3/
      LOGICAL L401(11)/5*.FALSE.,6*.TRUE./
      INTEGER I411(11)/1,2,3,4,5,6,7,8,9,10,0/
      INTEGER I412(25)/25*1/,I413(25)/25*2/,I414(25)/25*3/
      LOGICAL L411(11)/5*.FALSE.,6*.TRUE./
C
      DO 1 I=1,10
    1   N = I - 8
C
      ISUM1 = 0
      ISUM2 = 0
      ISUM3 = 0
      DO 10 I=1,N
        ISUM1 = ISUM1 + I401(I)
   10 CONTINUE
C
      DO 20 I=1,N
        IF (L401(I)) THEN
          ISUM2 = ISUM2 - I401(I)
        ELSE
          ISUM3 = ISUM3 + I401(N+1-I)
        ENDIF
   20 CONTINUE
C
      WRITE(6,9) ISUM1,ISUM2,ISUM3
C
      IRC1 = 1
      IRC2 = 1
      IRC3 = 1
      DO 30 I=1,N
        IRC1 = IRC1 * I401(I)
   30 CONTINUE
C
      DO 40 I=1,N
        IF (L401(I)) THEN
          IRC2 = IRC2 * I401(I)
        ELSE
          IRC3 = IRC3 * I401(N+1-I)
        ENDIF
   40 CONTINUE
C
      WRITE(6,9) IRC1,IRC2,IRC3
C
      DO 50 I=2,N*2
        I402(I) = I402(I-1) + I
   50 CONTINUE
C
      DO 60 I=2,N*2
        IF (L401((I-1)/2+1)) THEN
          I403(I) = I403(I-1) + I
        ELSE
          I404(I) = I404(I-1) - I
        ENDIF
   60 CONTINUE
C
      WRITE(6,9) I402
      WRITE(6,9) I403
      WRITE(6,9) I404
C
      DO 2 I=1,10
    2   N = I + 1
C
      ISUM1 = 0
      ISUM2 = 0
      ISUM3 = 0
      DO 11 I=1,N
        ISUM1 = ISUM1 + I411(I)
   11 CONTINUE
C
      DO 21 I=1,N
        IF (L411(I)) THEN
          ISUM2 = ISUM2 - I411(I)
        ELSE
          ISUM3 = ISUM3 + I411(N+1-I)
        ENDIF
   21 CONTINUE
C
      WRITE(6,9) ISUM1,ISUM2,ISUM3
C
      IRC1 = 1
      IRC2 = 1
      IRC3 = 1
      DO 31 I=1,N
        IRC1 = IRC1 * I411(I)
   31 CONTINUE
C
      DO 41 I=1,N
        IF (L411(I)) THEN
          IRC2 = IRC2 * I411(I)
        ELSE
          IRC3 = IRC3 * I411(N+1-I)
        ENDIF
   41 CONTINUE
C
      WRITE(6,9) IRC1,IRC2,IRC3
C
      DO 51 I=2,N*2
        I412(I) = I412(I-1) + I
   51 CONTINUE
C
      DO 61 I=2,N*2
        IF (L411((I-1)/2+1)) THEN
          I413(I) = I413(I-1) + I
        ELSE
          I414(I) = I414(I-1) - I
        ENDIF
   61 CONTINUE
C
      WRITE(6,9) I402
      WRITE(6,9) I403
      WRITE(6,9) I404
    9 FORMAT(15I5)
      STOP
      END

      PROGRAM MAIN
      INTEGER A(10)/1,2,3,4,5,6,7,8,9,10/
      INTEGER B(10)/10*0/,D(10)/2,3,4,5,6,7,8,9,10,11/,E(10)
      INTEGER C(10)/1,2,3,4,5,6,7,8,9,10/
C
      DO 40 I=1,10
   40   M = I - 7
C
      DO 10 I=1,10,M
        IF (I.GT.0) THEN
          B(I) = D(I) * I
        ENDIF
   10 CONTINUE
C
      
      WRITE(6,*) B
C
      DO 20 I=1,10,M
        E(I) = C(I) + A(I)
        IF (I.GT.0) THEN
          B(C(I)) = D(A(I)) + I
        ENDIF
   20 CONTINUE
C
      WRITE(6,*) B
C
      DO 30 I=1,10,2
        E(I) = C(I) + A(I) + D(A(I))
        IF (I.GT.0) THEN
          B(C(I)) = D(A(I)) * I
        ENDIF
   30 CONTINUE
      WRITE(6,*) B
C
      DO 50 I=1,10,A(2)
        E(I) = C(I) + A(I) + D(I)
        IF (I.GT.0) THEN
          B(C(I)) = D(A(I)) * I
        ENDIF
   50 CONTINUE
C
      WRITE(6,*) B
      STOP
      END

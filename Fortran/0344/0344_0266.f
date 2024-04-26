      INTEGER AAA(10)/10*0/,BBB(10)/4,5,6,7,8,9,10,1,2,3/
      INTEGER LIST(10)/2,4,6,8,10,1,3,5,7,9/
      LOGICAL L(10)/8*.TRUE.,2*.FALSE./
C
      DO 10 I=1,10
        IF (L(I)) THEN
          AAA(I) = BBB(I) + I
        ENDIF
   10 CONTINUE
C
      WRITE(6,*) AAA
      WRITE(6,*)
C
      DO 20 I=1,10
        IF (L(I)) THEN
          AAA(I) = BBB(LIST(I)) + I
        ENDIF
   20 CONTINUE
C
      WRITE(6,*) AAA
      WRITE(6,*)
C
      DO 30 I=1,10
        IF (L(I)) THEN
          AAA(LIST(I)) = BBB(I) + I
        ENDIF
   30 CONTINUE
C
      WRITE(6,*) AAA
      WRITE(6,*)
      STOP
      END

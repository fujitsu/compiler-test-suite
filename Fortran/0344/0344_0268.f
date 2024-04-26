      INTEGER AAA(10)/10*0/
      LOGICAL L(10)/7*.TRUE.,3*.FALSE./
      INTEGER BBB(10)/7,8,9,10,1,2,3,4,5,6/
      INTEGER CCC(10)/5,4,3,2,1,10,9,8,7,6/
      INTEGER LIST(10)/1,10,9,2,8,3,7,4,6,5/
C
      DO 20 I=1,10
        CCC(I) = LIST(I)
        IF (L(I)) THEN
          AAA(I) = BBB(LIST(I)) + I
        ENDIF
   20 CONTINUE
C
      WRITE(6,*) AAA
      WRITE(6,*)
C
      DO 30 I=1,10
        CCC(I) = LIST(I) + BBB(I)
        IF (L(I)) THEN
          AAA(LIST(I)) = BBB(I) + I
        ENDIF
   30 CONTINUE
C
      DO 40 I=1,10
        CCC(I) = BBB(I)
        IF (L(I)) THEN
          AAA(I) = BBB(LIST(I)) + I
        ENDIF
   40 CONTINUE
C
      WRITE(6,*) AAA
      WRITE(6,*)
C
      DO 50 I=1,10
        CCC(I) = LIST(I) + BBB(I)
        IF (L(I)) THEN
          AAA(I) = BBB(LIST(I)) + I
        ENDIF
   50 CONTINUE
C
      WRITE(6,*) AAA
      WRITE(6,*)
      STOP
      END

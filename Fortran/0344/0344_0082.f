      INTEGER*4  I4A/1/
      REAL*4     R4A/3.E0/
      REAL*8     R8A/5.D0/
      COMPLEX*8  C8A/(7.E0,8.E0)/
      COMPLEX*16 C16A/(11.D0,12.D0)/
      LOGICAL    L4A/.TRUE./
      INTEGER*4  I400A(10)/2,0,0,2,1,0,0,0,1,0/
      REAL*4     R400A(10)/0,1,1,1,1,-1,-1,0,0,-1/
      REAL*8     R800A(10)/10*3.D0/
      COMPLEX*8  C800A(10)/10*(5.E0,1.E0)/
      COMPLEX*16 C1600A(10)/10*(0.D0,2.D0)/
      LOGICAL    L400A(10)/5*.TRUE.,5*.FALSE./

      DO 10 I=1,10
        IF(I400A(I).GT.0) THEN
          I4A=I400A(I)
          I400A(I)=I4A
          I4A=I400A(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) '*** TEST 1 ***'
      WRITE(6,*) I4A

      DO 20 I=1,10
        IF(I400A(I).EQ.0) THEN
          IF(R400A(I).GT.0) THEN
            R4A=R400A(I)
          ENDIF
        ENDIF
   20 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 2 ***'
      WRITE(6,*) R4A

      DO 30 I=1,10
        IF(I400A(I).EQ.0) THEN
          R8A=R800A(I)-3
        ELSE
          R8A=R800A(I)+4
        ENDIF
   30 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 3 ***'
      WRITE(6,*) R8A

      DO 40 I=1,10
        IF(C800A(I).EQ.200) THEN
          C8A=C800A(I)
        ENDIF
   40 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 4 ***'
      WRITE(6,*) C8A

      DO 50 I=1,10
        IF(I400A(I).EQ.0) THEN
          C16A=R800A(I)-3
        ELSE
          C16A=C1600A(I)+4
        ENDIF
        C16A=C1600A(I)
   50 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 5 ***'
      WRITE(6,*) C16A

      DO 60 I=1,10
        L4A=L400A(I).AND..TRUE.
        L400A(I)=L4A
        L4A=L400A(I).OR..FALSE.
   60 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '*** TEST 6 ***'
      WRITE(6,*) L4A

      STOP
      END

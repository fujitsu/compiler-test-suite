      INTEGER A(10),B(10),C(10),YY,XX
      DATA    A/10*4/,B/10*8/,C/10*12/,YY/3/
      LOGICAL M(10)/5*.TRUE.,5*.FALSE./
      DO 10 I=1,10
        XX   = ISHFT(A(I),C(I))
        A(I) = ISHFT(XX,-C(I))
   10 CONTINUE
      WRITE(6,*) '### CHK 1 ###'
      WRITE(6,*) A
C
      DO 20 I=1,10
        IF(M(I)) THEN
          C(I) = ISHFT(A(B(I)),-2)
        ENDIF
   20 CONTINUE
      WRITE(6,*) '### CHK 2 ###'
      WRITE(6,*) C
C
      DO 30 I=1,10
        IF(M(I)) THEN
          C(I) = ISHFT(ISHFT(A(I),B(I)),-YY)
        ENDIF
   30 CONTINUE
      WRITE(6,*) '### CHK 3 ###'
      WRITE(6,*) C
      STOP
      END

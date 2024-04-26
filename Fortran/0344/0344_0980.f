      LOGICAL*1  A(10),B(10),C(10)
      LOGICAL*4  D(10),E(10),F(10)
      DATA A/10*.TRUE./,B/10*.FALSE./,C/10*.TRUE./
      DATA D/10*.TRUE./,E/10*.FALSE./,F/10*.TRUE./,N/10/
      DO 10 I=1,N
         IF (A(I)) THEN
            D(I) = E(I) .AND. F(I)
         ELSE
            A(I) = B(I) .AND. C(I)
         ENDIF
   10 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      WRITE(6,*) D
      WRITE(6,*) E
      WRITE(6,*) F
      STOP
      END

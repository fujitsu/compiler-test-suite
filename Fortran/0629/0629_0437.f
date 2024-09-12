      PROGRAM MAIN
      INTEGER*4 IX1,A(10)

      DO 10 I=1,10
         A(I) =I
 10   CONTINUE

      DO 20 J=1,10
         IX1=I
 20   CONTINUE

      WRITE(6,*) A,IX1
      STOP
      END

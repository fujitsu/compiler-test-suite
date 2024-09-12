      REAL C/1.0/
      DO 20 J=1,2
         DO 20 M=1,10
            C=C+C
 20      CONTINUE
         WRITE(6,*) C
      END

      PROGRAM MAIN
      INTEGER A1

      DO  125 I=1,10
         A1=32767
         DO 120 J=1,10
            A1=A1-A1
            A1=-1
            A1=-5
            A1=-A1
 120     CONTINUE
         A1=-A1
         A1=A1*A1
 125  CONTINUE

      PRINT *,A1
      END

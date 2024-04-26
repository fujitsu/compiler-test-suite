      PROGRAM MAIN
      REAL*4 A41(20)
      DATA   A41/20*0.0/

      DO 10 I=1,1,1

         J=0
         DO 21 J=J+1,J+10,1
            A41(J)=J
 21      CONTINUE

         J=J-1
         DO 30 J=J+1,J+10,1
            A41(J)=J
 30      CONTINUE

 10   CONTINUE

      PRINT *,(A41(I),I=11,20)
      END

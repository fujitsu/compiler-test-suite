      PARAMETER    (N=40)
      REAL    * 4  TW1(100,N)
      CALL DATA(TW1,N)
      write(6,*) TW1(10,15)
      END

      SUBROUTINE DATA(X,N)
      REAL  X(100,N)

      DO  10 I=1,N
         DO 10 J=1,100
            X(J,I) = 1
 10      CONTINUE
         END

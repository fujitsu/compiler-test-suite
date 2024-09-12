      REAL A(10,-1:3,0:10)/350*2.2,200*-4.4/
      CALL X(A,A(1,2,2))
      WRITE (6,*) A(1,1,1)
      END

      SUBROUTINE X(A,B)
      REAL A(10),B(10)
      DO 10 I=1,10
         A(I)=B(I)+1.0
 10   CONTINUE
      END

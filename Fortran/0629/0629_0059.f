      REAL A(10,10),B(10,10),x(10,10)
      INTEGER I,J,N
      DATA A/-9,9,0,4,1,-2,90*0.0,5,3,3,3/
      DATA B/-1,1,1,4,1,-2,90*0.0,5,1,1,1/

      x = 0 
      a = 1
      n=1
      DO 10 J=1,10
          x(:,j)=x(:,j)+.1
          A(N,1) = A(N,1)
          x(:,j)=x(:,j)
 10      CONTINUE

       write(6,*) ' end '
      STOP
      END

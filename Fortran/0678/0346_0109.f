      REAL    Y(200),X(200)
      DATA    Y,X/200*1.0,200*2.0/
      CALL  SUB(Y,X,200)
      STOP
      END
      SUBROUTINE SUB(Y,X,IX)
      REAL    Y(IX),X(IX)
      DATA    N/1/
      DO 30 J=1,5
        DO 20 I=N,N+100
          Y(I) = X(I) * 2.0
   20   CONTINUE
       DO 25 I=102,200
          Y(I) = X(I) * 3.0
   25  CONTINUE
   30 CONTINUE
      WRITE(6,*) Y
      RETURN
      END

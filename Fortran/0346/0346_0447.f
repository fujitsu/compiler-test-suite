       REAL A(2000),B(2000)
       INTEGER IX(2000)
       DATA N/2000/
       DO 1 I=1,N
        IX(I)=I
        A(I)=1.0
        B(I)=I
 1     CONTINUE
       B(1989)=3000.0
       CALL SUB(A,B,IX,N)
       END

       SUBROUTINE SUB(A,B,IX,N)
       REAL A(N),B(N)
       INTEGER IX(N)
       SMAX=0.0
       DO 1 I=1,N
        A(I)=B(I)+1.0
        IF(I.GT.1000) SMAX=MAX(B(IX(I)),SMAX)
 1     CONTINUE
       PRINT *,SMAX
       END

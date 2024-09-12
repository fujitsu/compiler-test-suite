       REAL X(5000),Y(3000),Z(10,3000)
       DATA X/5000*1.0/
       DATA Y/3000*2.0/
       DATA Z/30000*3.0/
       DATA N,M/0,10/

       DO 10 J=1,M
       DO 10 I=1,N
         X(I)=X(I)+Z(J,I)
         Y(I)=Y(I)-Z(J,I)
 10    CONTINUE
       PRINT *,X,Y
       STOP
       END

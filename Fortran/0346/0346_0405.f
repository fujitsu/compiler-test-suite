       INTEGER     A(10,2),B(10,2),C(10,2)
          REAL D(10)
          DATA     A,B,C/20*2  ,20*1  ,20*3  /
          DATA D/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
       INTEGER     X(10,2)
          DATA X/20*7    /
       INTEGER     S(10)
          DATA RR/2.   /
          DO 10 J= 1,2
          DO 10 I = 1 , 10
            IF(  RR .LE. 4.0 ) S(I) = A(I,J) + B(I,J)
            IF(  RR .LE. 4.0 ) THEN
                 S(I) = A(I,J) + B(I,J)
                 X(I,J) = A(I,J) + C(I,J)
            ENDIF
            IF(D(I) .GT. 4.0 ) S(I) = C(I,J) + 10.0
 10       CONTINUE
            PRINT *,S
            END

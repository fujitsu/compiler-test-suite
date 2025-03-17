       DIMENSION A1(256),B1(256),C1(256)
       DIMENSION X1(800),X2(800),X4(800)
       DIMENSION A2(512),B2(512),C2(512)
       DIMENSION A4(1024),B4(1024),C4(1024)
       DATA B2/512*2.0/
       DATA B1(1),C1(1),C2(1),C4(1)/4*1.0E-6/
       data x2/800*0/,x4/800*0/
       B1(256) = 0.
       C1(256) = 0.
       C2(256) = 0.
       C4(256) = 0.

       DO 10 I = 1 , 256
10     A1(I) = 1.0
       DO 20 I = 1 , 512
20     A2(I) = 2.0
       DO 30 I = 1 , 1024
30     A4(I) = 4.0

       DO 110 I = 1 , 255
110     B2(I) = A1(I) + 1.0
       DO 120 I = 1 , 511
120     B4(I) = B2(I) + 1.0

       DO 111 I = 1 , 511
        X1(I) = B4(I) - 3.0
        X2(I) = A4(I) - A2(I) -2.0
        IF( X1(I) .NE. X2(I) ) GO TO 1119
111    CONTINUE
       WRITE(6,1110)
       GO TO 1200
1119   CONTINUE
       WRITE(6,1111)  X1(I),X2(I)
       GO TO 1200
1110   FORMAT(1H ,'*****< TEST NO. 1 >*****   **( OK )** ')
1111   FORMAT(1H ,'*****< TEST NO. 1 >*****   **( NG )** ' ,2X,2(F10.5))

1200   CONTINUE
       DO 1210 I = 1 , 800
1210    X2(I) = X2(I) + I
       DO 1220 I = 1 , 768
1220    X4(I) = X4(I) + I

       DO 211 I = 1 , 511
        X4(I) = X4(I)- X4(I)
        X2(I) = X2(I)- X2(I)
        IF( X4(I) .NE. X2(I) ) GO TO 2119
211    CONTINUE
       WRITE(6,2110)
       GO TO 2200
2119   CONTINUE
       WRITE(6,2111)  X4(I),X2(I)
       GO TO 2200
2110   FORMAT(1H ,'*****< TEST NO. 2 >*****   **( OK )** ')
2111   FORMAT(1H ,'*****< TEST NO. 2 >*****   **( NG )** ' ,2X,2(F10.5))
2200   CONTINUE
       STOP
       END

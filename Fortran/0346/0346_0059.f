       DIMENSION A(700),B(700),C(700)
       DATA A,B,C/700*0.11,700*0.22,700*0.33/
       COMMON /LOOP/N
       S = 1.0
       Y = 1.0
       DO 100 I=1,N
          Z = B(I) + A(I) - C(I)
          S = Y*I
100    CONTINUE
       IF( S .EQ. 1.0 .AND. Y .EQ. 1.0 ) GO TO 1000
       PRINT *,'NG'
       GO TO 111
1000   PRINT *,'OK'
 111   STOP
       END
       BLOCK DATA
       COMMON /LOOP/N
       DATA N/ 0 /
       END

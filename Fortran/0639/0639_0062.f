           COMPLEX*8 A(50),B(50)
           COMPLEX*16 C(50),D(50),
     1                A1(50),A2(50),A3(50),A4(50),
     2                A5(50),A6(50),A7(50),A8(50),
     3                A9(50),AA(50),AB(50),
     4                E(5),
     5                X,Y,Z

           DATA A/20*(3.0,3.0),30*(2.0,2.0)/
           DATA B/30*(2.0,2.0),20*(3.0,3.0)/
           DATA C/10*(2.0,2.0),40*(1.0,1.0)/
           DATA D/40*(2.0,2.0),10*(1.0,1.0)/
           DATA A1,A2,A3/50*(1.0,1.0),50*(1.0,1.0),50*(1.0,1.0)/
           DATA A4,A5,A6/50*(1.0,1.0),50*(1.0,1.0),50*(1.0,1.0)/
           DATA A7,A8,A9/50*(1.0,1.0),50*(1.0,1.0),50*(1.0,1.0)/
           DATA AA,AB/50*(1.0,1.0),50*(1.0,1.0)/
           DATA E/(2,2),(4,4),(6,6),(8,8),(10,10)/
           DATA X,Y,Z/3*(2.0,2.0)/

           DO 10 I = 1 , 50
               A(I) = B(I) + X + C(I) + Y + D(I) + Z
               A1(I) = B(I) - X - C(I) - Y + D(I) + Z

               A2(I) = B(I) + E(5) + C(I) + E(3) + D(I) + E(1)
               A3(I) = B(I) - E(2) - C(I) - E(1) + D(I) + E(4)

               A4(I) = B(I) + 50.0 + C(I) + 30.0 + D(I) + 10.0
               A5(I) = B(I) - 20.0 - C(I) - 10.0 + D(I) + 40.0

               A6(I) = B(I) + X + C(I) + E(3) + D(I) + 10.0
               A7(I) = B(I) - X - C(I) - E(1) + D(I) + 40.0
               A8(I) = B(I) + E(5) + C(I) + 30.0 + D(I) + Z
               A9(I) = B(I) - E(2) - C(I) - 10.0 + D(I) + Z
               AA(I) = B(I) + 50.0 + C(I) + Y + D(I) + E(1)
               AB(I) = B(I) - 20.0 - C(I) - Y + D(I) + E(4)
 10        CONTINUE
           PRINT *,A
           PRINT *,A1
           PRINT *,A2
           PRINT *,A3
           PRINT *,A4
           PRINT *,A5
           PRINT *,A6
           PRINT *,A7
           PRINT *,A8
           PRINT *,A9
           PRINT *,AA
           PRINT *,AB
           STOP
           END

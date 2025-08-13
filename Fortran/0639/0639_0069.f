           COMPLEX*16 A(50),B(50),C(50),D(50),
     1                E(50),F(50),
     2                A1(50),A2(50),A3(50),
     3                C1(50),C2(50),
     4                E1(50),E2(50),
     5                G(5),
     6                U,V,W,X,Y,Z

           DATA A/40*(2.0,2.0),10*(1.0,1.0)/
           DATA B/10*(2.0,2.0),40*(1.0,1.0)/
           DATA C/30*(2.0,2.0),20*(3.0,3.0)/
           DATA D/20*(3.0,3.0),30*(2.0,2.0)/
           DATA E/10*(3.0,3.0),40*(2.0,2.0)/
           DATA F/40*(2.0,2.0),10*(3.0,3.0)/
           DATA G/(5,5),(10,10),(15,15),(20,20),(25,25)/
           DATA A1,A2,A3/50*(1.0,1.0),50*(1.0,1.0),50*(1.0,1.0)/
           DATA    C1,C2/50*(1.0,1.0),50*(1.0,1.0)/
           DATA    E1,E2/50*(1.0,1.0),50*(1.0,1.0)/
           DATA U,V,W,X,Y,Z/6*(2.0,2.0)/

           DO 10 I = 1 , 50
               E(I)  = U - X / V + Y * W - Z / F(I)
               C(I)  = D(I) + V - E(I) * W / F(I) + Z
               A(I)  = B(I) + U - V * W / X + Y - Z* C(I)
               A1(I) = B(I) + U * X - C(I) / V + Y * D(I) - W / Z * E(I)

               A1(I) = G(5) - G(1) / G(4) + G(2) * G(3) - F(I)
               C1(I) = D(I) - G(3) + E(I) / G(1) * F(I)
               A2(I) = B(I) * G(4) + G(2) / C(I) - G(5) + D(I) * E(1)

               E2(I) = U / G(4) + 10.0 * G(2) - X + F(I)
               C2(I) = G(5) - 5.0 + C(I) + W * E(I) / G(3) - Z
               A3(I) = 12.5 * B(I) / G(3) + C(I) - Z + V
 10        CONTINUE
           write(6,1) E
           write(6,*)
           write(6,1) C
           write(6,*)
           write(6,1) A
           write(6,*)
           write(6,1) A1
           write(6,*)
           write(6,1) E1
           write(6,*)
           write(6,1) C1
           write(6,*)
           write(6,1) A2
           write(6,*)
           write(6,1) E2
           write(6,*)
           write(6,1) C2
           write(6,*)
           write(6,1) A3
 1    format(2("(",f25.14,",",f25.14,") "))
           STOP
           END

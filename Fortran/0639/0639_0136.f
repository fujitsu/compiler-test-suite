      REAL*8 A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1       K(50),L(50),M(50),N(50),O(50),P(50),Q(50),R(50),
     2       S(50),T(50),U(50),
     3       A1(50),B1(50),C1(50),D1(50),E1(50),F1(50),G1(50),H1(50),
     4       K1(50),L1(50),M1(50),N1(50),O1(50),P1(50),Q1(50),R1(50),
     5       S1(50),T1(50),U1(50),
     6       AA(50),BB(50),CC(50),DD(50),EE(50),FF(50),GG(50),
     7       HH(50),KK(50),LL(50),MM(50),NN(50),OO(50),PP(50),
     8       QQ(50),RR(50),SS(50),TT(50),UU(50),
     9       A2(50),B2(50),C2(50),D2(50),E2(50),F2(50),G2(50),
     1       H2(50),K2(50),L2(50),M2(50),N2(50),O2(50),P2(50),
     2       Q2(50),R2(50),S2(50),T2(50),U2(50)
       REAL*8  CT(5),AY(5),V,W,X,Y,Z

       DATA A/20*1.0E1,30*2.0E1/
       DATA B/20*3.0E1,30*4.0E1/
       DATA C/20*5.0E1,30*6.0E1/
       DATA D/20*7.0E1,30*8.0E1/
       DATA E/20*9.0E1,30*1.0E1/
       DATA F/20*1.0E1,30*2.0E1/
       DATA G/30*3.0E1,20*4.0E1/
       DATA H/20*5.0E1,30*6.0E1/
       DATA K/30*7.0E1,20*8.0E1/
       DATA L/20*9.0E1,30*1.0E1/
       DATA M/20*1.0E1,30*9.0E1/
       DATA N/20*8.0E1,30*7.0E1/
       DATA O/20*6.0E1,30*5.0E1/
       DATA P/20*4.0E1,30*3.0E1/
       DATA Q/20*2.0E1,30*1.0E1/
       DATA R/30*9.0E1,20*8.0E1/
       DATA S/30*7.0E1,20*6.0E1/
       DATA T/30*5.0E1,20*4.0E1/
       DATA U/30*3.0E1,20*2.0E1/
       DATA A1/20*1.0E1,30*2.0E1/
       DATA B1/20*3.0E1,30*4.0E1/
       DATA C1/20*5.0E1,30*6.0E1/
       DATA D1/20*7.0E1,30*8.0E1/
       DATA E1/20*9.0E1,30*1.0E1/
       DATA F1/20*1.0E1,30*2.0E1/
       DATA G1/30*3.0E1,20*4.0E1/
       DATA H1/20*5.0E1,30*6.0E1/
       DATA K1/30*7.0E1,20*8.0E1/
       DATA L1/20*9.0E1,30*1.0E1/
       DATA M1/20*1.0E1,30*9.0E1/
       DATA N1/20*8.0E1,30*7.0E1/
       DATA O1/20*6.0E1,30*5.0E1/
       DATA P1/20*4.0E1,30*3.0E1/
       DATA Q1/20*2.0E1,30*1.0E1/
       DATA R1/30*9.0E1,20*8.0E1/
       DATA S1/30*7.0E1,20*6.0E1/
       DATA T1/30*5.0E1,20*4.0E1/
       DATA U1/30*3.0E1,20*2.0E1/
       DATA AA/10*1.0E1,40*2.0E1/
       DATA BB/10*3.0E1,40*4.0E1/
       DATA CC/10*5.0E1,40*6.0E1/
       DATA DD/10*7.0E1,40*8.0E1/
       DATA EE/10*9.0E1,40*8.0E1/
       DATA FF/40*1.0E1,10*2.0E1/
       DATA GG/40*3.0E1,10*4.0E1/
       DATA HH/40*5.0E1,10*6.0E1/
       DATA KK/40*7.0E1,10*8.0E1/
       DATA LL/40*9.0E1,10*8.0E1/
       DATA MM/10*1.0E1,40*2.0E1/
       DATA NN/40*3.0E1,10*4.0E1/
       DATA OO/10*5.0E1,40*6.0E1/
       DATA PP/40*7.0E1,10*8.0E1/
       DATA QQ/10*9.0E1,40*1.0E1/
       DATA RR/40*8.0E1,10*7.0E1/
       DATA SS/10*6.0E1,40*5.0E1/
       DATA TT/40*4.0E1,10*3.0E1/
       DATA UU/10*2.0E1,40*1.0E1/
       DATA A2/10*1.0E1,40*2.0E1/
       DATA B2/10*3.0E1,40*4.0E1/
       DATA C2/10*5.0E1,40*6.0E1/
       DATA D2/10*7.0E1,40*8.0E1/
       DATA E2/10*9.0E1,40*8.0E1/
       DATA F2/40*1.0E1,10*2.0E1/
       DATA G2/40*3.0E1,10*4.0E1/
       DATA H2/40*5.0E1,10*6.0E1/
       DATA K2/40*7.0E1,10*8.0E1/
       DATA L2/40*9.0E1,10*8.0E1/
       DATA M2/10*1.0E1,40*2.0E1/
       DATA N2/40*3.0E1,10*4.0E1/
       DATA O2/10*5.0E1,40*6.0E1/
       DATA P2/40*7.0E1,10*8.0E1/
       DATA Q2/10*9.0E1,40*1.0E1/
       DATA R2/40*8.0E1,10*7.0E1/
       DATA S2/10*6.0E1,40*5.0E1/
       DATA T2/40*4.0E1,10*3.0E1/
       DATA U2/10*2.0E1,40*1.0E1/
       DATA AY/9.0E1,7.0E1,5.0E1,3.0E1,1.0E1/
       DATA V,W,X,Y,Z/5*6.7E1/
       CT(1) = 9.0E1
       CT(2) = 7.8E1
       CT(3) = 6.5E1
       CT(4) = 4.3E1
       CT(5) = 2.1E1

       DO 20 I = 1 , 50
         A(I)=(B(I)/AY(1)/C(I)/V)/(D(I)/CT(2)/E(I)/AY(3))
         F(I)=(W/G(I)/CT(4)/H(I))/(AY(5)/K(I)/X/L(I))
         M(I)=(O(I)/CT(1)/N(I)/AY(2))/(Q(I)/Y/P(I)/CT(3))
         R(I)=(AY(4)/S(I)/Z/T(I))/(CT(5)/U(I)/AY(1)/B(I))
         A1(I)=(D1(I)/AY(1)/E1(I)/V)/(B1(I)/CT(2)/C1(I)/AY(3))
         F1(I)=(W/K1(I)/CT(4)/L1(I))/(AY(5)/G1(I)/X/H1(I))
         M1(I)=(Q1(I)/CT(1)/P1(I)/AY(2))/(O1(I)/Y/N1(I)/CT(3))
         R1(I)=(AY(4)/B1(I)/Z/U1(I))/(CT(5)/S1(I)/AY(1)/T1(I))

         DO 10 J = 1 , 50
           AA(J)=(BB(J)*AY(1)*CC(J)*V)/(DD(J)*CT(2)*EE(J)*AY(3))
           FF(J)=(W*GG(J)*CT(4)*HH(J))/(AY(5)*KK(J)*X*LL(J))
           MM(J)=(OO(J)*CT(1)*NN(J)*AY(2))/(QQ(J)*Y*PP(J)*CT(3))
           RR(J)=(AY(1)*SS(J)*Z*TT(J))/(CT(5)*UU(J)*AY(1)*BB(J))
           A2(J)=(B2(J)*AY(1)*C2(J)*V)/(D2(J)*CT(2)*E2(J)*AY(3))
           F2(J)=(W*G2(J)*CT(4)*H2(J))/(AY(5)*K2(J)*X*L2(J))
           M2(J)=(O2(J)*CT(1)*N2(J)*AY(2))/(Q2(J)*Y*P2(J)*CT(3))
           R2(J)=(AY(1)*S2(J)*Z*T2(J))/(CT(5)*U2(J)*AY(1)*B2(J))
 10      CONTINUE
 20    CONTINUE

       WRITE(6,100) A , F , M , R
       WRITE(6,100) A1 , F1 , M1 , R1
       WRITE(6,200) AA , FF , MM , RR
       WRITE(6,200) A2 , F2 , M2 , R2
 100       FORMAT(1H 4F13.7)
 200       FORMAT(1H 4F13.7)
           STOP
           END

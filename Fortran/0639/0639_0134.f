       REAL*8  A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1         K(50),L(50),M(50),N(50),O(50),P(50),Q(50),R(50),
     2         S(50),T(50),U(50),
     3         AA(50),BB(50),CC(50),DD(50),EE(50),FF(50),GG(50),
     4         HH(50),KK(50),LL(50),MM(50),NN(50),OO(50),PP(50),
     5         QQ(50),RR(50),SS(50),TT(50),UU(50),
     6         A1(50),B1(50),C1(50),D1(50),E1(50),F1(50),G1(50),
     7         H1(50),K1(50),L1(50),M1(50),N1(50),O1(50),P1(50),
     8         Q1(50),R1(50),S1(50),T1(50),U1(50)
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
       DATA A1/10*1.0E1,40*2.0E1/
       DATA B1/10*3.0E1,40*4.0E1/
       DATA C1/10*5.0E1,40*6.0E1/
       DATA D1/10*7.0E1,40*8.0E1/
       DATA E1/10*9.0E1,40*8.0E1/
       DATA F1/40*1.0E1,10*2.0E1/
       DATA G1/40*3.0E1,10*4.0E1/
       DATA H1/40*5.0E1,10*6.0E1/
       DATA K1/40*7.0E1,10*8.0E1/
       DATA L1/40*9.0E1,10*8.0E1/
       DATA M1/10*1.0E1,40*2.0E1/
       DATA N1/40*3.0E1,10*4.0E1/
       DATA O1/10*5.0E1,40*6.0E1/
       DATA P1/40*7.0E1,10*8.0E1/
       DATA Q1/10*9.0E1,40*1.0E1/
       DATA R1/40*8.0E1,10*7.0E1/
       DATA S1/10*6.0E1,40*5.0E1/
       DATA T1/40*4.0E1,10*3.0E1/
       DATA U1/10*2.0E1,40*1.0E1/
       DATA AY/9.0E1,7.0E1,5.0E1,3.0E1,1.0E1/
       DATA V,W,X,Y,Z/5*6.7E1/
       CT(1) = 9.0E1
       CT(2) = 7.8E1
       CT(3) = 6.5E1
       CT(4) = 4.3E1
       CT(5) = 2.1E1

       DO 20 I = 1 , 50
         A(I)=(B(I)/V/C(I)/AY(1)/CT(2))*(D(I)*W*E(I)*AY(3)*CT(4))
         F(I)=(X/G(I)/AY(5)/H(I)/CT(1))*(Y*K(I)*AY(2)*L(I)*CT(3))
         M(I)=(AY(4)/Z/N(I)/CT(5)/O(I))*(Q(I)*V*P(I)*CT(1)*AY(2))
         R(I)=(T(I)/CT(3)/S(I)/W/AY(4))*(CT(5)*U(I)*X*AY(1)*CT(2))

         DO 10 J = 1 , 50
           AA(J)=(BB(J)*V*CC(J)*AY(1))*(CT(2)/DD(J)/W/EE(J)/AY(3))
           FF(J)=(X*GG(J)*AY(4)*HH(J))*(CT(5)/Y/KK(J)/AY(1)/LL(J))
           MM(J)=(AY(2)*Z*NN(J)*CT(3))*(OO(J)/QQ(J)/V/PP(J)/CT(4))
           RR(J)=(TT(J)*CT(5)+SS(J)*W)*(AY(1)/CT(2)/UU(J)/X/AY(3))
           A1(J)=(D1(J)*V*E1(J)*AY(1))*(CT(2)/B1(J)/W/C1(J)/AY(3))
           F1(J)=(X*K1(J)*AY(4)*L1(J))*(CT(5)/Y/G1(J)/AY(1)/H1(J))
           M1(J)=(AY(2)*Z*Q1(J)*CT(3))*(P1(J)/N1(J)/V/O1(J)/CT(4))
           R1(J)=(U1(J)*CT(5)+T1(J)*W)*(AY(1)/CT(2)/S1(J)/X/AY(3))
 10      CONTINUE
 20    CONTINUE

       WRITE(6,100) A , F , M , R
       WRITE(6,200) AA , FF , MM , RR
       WRITE(6,200) A1 , F1 , M1 , R1
 100       FORMAT(1H 4F13.7)
 200       FORMAT(1H 4F13.7)
           STOP
           END

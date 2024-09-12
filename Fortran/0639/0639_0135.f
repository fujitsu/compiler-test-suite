       REAL*8  A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1         K(50),L(50),M(50),N(50),O(50),P(50),Q(50),R(50),
     2         S(50),T(50),U(50),
     3         AA(50),BB(50),CC(50),DD(50),EE(50),FF(50),GG(50),
     4         HH(50),KK(50),LL(50),MM(50),NN(50),OO(50),PP(50),
     5         QQ(50),RR(50),SS(50),TT(50),UU(50)
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
       DATA AY/9.0E1,7.0E1,5.0E1,3.0E1,1.0E1/
       DATA V,W,X,Y,Z/5*6.7E1/
       CT(1) = 9.0E1
       CT(2) = 7.8E1
       CT(3) = 6.5E1
       CT(4) = 4.3E1
       CT(5) = 2.1E1

       DO 20 I = 1 , 50
         A(I)=B(I)/AY(1)/C(I)/CT(2)*D(I)*V*E(I)/AY(3)/F(I)/CT(4)
         G(I)=W/H(I)/AY(5)/K(I)*CT(1)*L(I)*X/M(I)/AY(2)/N(I)
         O(I)=Q(I)/CT(3)/P(I)/Y*R(I)*AY(4)*T(I)/CT(5)/S(I)/Z
         U(I)=AY(1)/B(I)/CT(2)/C(I)*V*D(I)*CT(3)/E(I)/AY(4)/F(I)

         DO 10 J = 1 , 50
           AA(J)=BB(J)*AY(1)*CC(J)*CT(2)/DD(J)/V/EE(J)*AY(3)*FF(J)*CT(4)
           GG(J)=W*HH(J)*AY(5)*KK(J)/CT(1)/LL(I)/X*MM(J)*AY(2)*NN(J)
           OO(J)=QQ(J)*CT(3)*PP(J)*Y/RR(J)/AY(4)/TT(J)*CT(5)*SS(J)*Z
           UU(J)=AY(1)*BB(J)*CT(2)*CC(J)/V/DD(J)/CT(3)*EE(J)*AY(4)*FF(J)
 10      CONTINUE
 20    CONTINUE

       WRITE(6,100) A , G , O , U
       WRITE(6,200) AA , GG , OO , UU
 100       FORMAT(1H 4F13.7)
 200       FORMAT(1H 4F13.7)
           STOP
           END

       REAL*8  A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1         L(50),M(50),N(50),O(50),P(50),Q(50),R(50),S(50),
     2         T(50),U(50),
     3         AA(50),BB(50),CC(50),DD(50),EE(50),FF(50),GG(50),
     4         HH(50),LL(50),MM(50),NN(50),OO(50),PP(50),QQ(50),
     5         RR(50),SS(50),TT(50),UU(50),
     6         CT(5),AY(5),V,W,X,Y,Z

       DATA A/20*1.0E0,30*2.0E0/
       DATA B/30*1.0E0,20*2.0E0/
       DATA C/10*1.0E0,40*2.0E0/
       DATA D/40*1.0E0,10*2.0E0/
       DATA E/20*2.0E0,30*1.0E0/
       DATA F/30*2.0E0,20*1.0E0/
       DATA G/10*2.0E0,40*1.0E0/
       DATA H/40*2.0E0,10*1.0E0/
       DATA L/20*1.0E0,30*2.0E0/
       DATA M/20*2.0E0,30*1.0E0/
       DATA N/30*1.0E0,20*2.0E0/
       DATA O/30*2.0E0,20*1.0E0/
       DATA P/10*1.0E0,40*2.0E0/
       DATA Q/10*2.0E0,40*1.0E0/
       DATA R/40*1.0E0,10*2.0E0/
       DATA S/40*2.0E0,10*1.0E0/
       DATA T/20*2.0E0,30*3.0E0/
       DATA U/20*3.0E0,30*2.0E0/
       DATA AA/30*2.0E0,20*3.0E0/
       DATA BB/30*3.0E0,20*2.0E0/
       DATA CC/10*2.0E0,40*3.0E0/
       DATA DD/10*3.0E0,40*2.0E0/
       DATA EE/40*2.0E0,10*3.0E0/
       DATA FF/40*3.0E0,10*2.0E0/
       DATA GG/20*2.0E0,30*3.0E0/
       DATA HH/30*2.0E0,20*3.0E0/
       DATA LL/20*3.0E0,30*2.0E0/
       DATA MM/30*3.0E0,20*2.0E0/
       DATA NN/10*2.0E0,40*3.0E0/
       DATA OO/40*2.0E0,10*3.0E0/
       DATA PP/10*3.0E0,40*2.0E0/
       DATA QQ/40*3.0E0,10*2.0E0/
       DATA RR/20*3.0E0,30*4.0E0/
       DATA SS/30*3.0E0,20*4.0E0/
       DATA TT/20*4.0E0,30*3.0E0/
       DATA UU/30*4.0E0,20*3.0E0/
       DATA AY/10.0E0,20.0E0,30.0E0,40.0E0,50.0E0/
       DATA V,W,X,Y,Z/5*3.4E0/
       CT(1) = 1.2E0
       CT(2) = 3.4E0
       CT(3) = 5.6E0
       CT(4) = 7.8E0
       CT(5) = 9.1E0

       DO 20 I = 1 , 50
         A(I)=(V*AY(2)*B(I)/CT(3)*AY(4)/B(I))/B(I)/(AY(1)-CT(2)/X*AY(3))
         C(I)=D(I)/(AY(1)-CT(2)/Y)/B(I)/(CT(3)*Z+AY(5))
         E(I)=(CT(5)/B(I)*V*AY(2)/CT(1))/(AY(3)+CT(1)-W*CT(4)/X)/F(I)
         G(I)=V/H(I)/AY(2)/B(I)/CT(2)
         L(I)=M(I)/CT(3)/W/B(I)/AY(3)
         N(I)=AY(4)/CT(5)/O(I)/X/B(I)
         P(I)=CT(4)/Q(I)/AY(1)/B(I)/Y
         S(I)=R(I)/V/CT(5)/B(I)/AY(5)
         T(I)=AY(5)/X/E(I)/CT(5)/B(I)*X
         U(I)=(Y+AY(3)-CT(4)*AY(5)/CT(1)+Z)/G(I)/(AY(4)-CT(3)/V*AY(1))

         DO 10 J = 1 , 50
           AA(J)=BB(J)/V/CC(J)/CT(2)/BB(J)/AY(3)/CC(J)/W/CT(4)
           DD(J)=CT(3)/EE(J)/AY(1)/FF(J)/X/BB(J)/CT(2)/CC(J)/AY(3)
           GG(J)=Y/CC(J)/CT(1)/HH(J)/AY(2)/LL(J)/Z/BB(J)/CT(3)
           MM(J)=AY(4)/BB(J)/V/CC(J)/CT(5)/NN(J)/AY(1)/OO(J)/W
           PP(J)=CT(3)/BB(J)/AY(4)/CC(J)/X/CT(5)/QQ(J)/AY(5)/RR(J)
           SS(J)=TT(J)/Y/CT(4)/AY(3)/Z/CT(2)/UU(J)
 10      CONTINUE
 20    CONTINUE

       WRITE(6,100) A , C , E , G , L
       WRITE(6,100) N , P , S , T , U
       WRITE(6,200) AA , DD , GG
       WRITE(6,300) MM , PP , SS
 100       FORMAT(1H 5F13.7)
 200       FORMAT(1H 3F13.7)
 300       FORMAT(1H 3F13.7)
           STOP
           END

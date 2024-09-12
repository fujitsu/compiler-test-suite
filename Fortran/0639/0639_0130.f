       REAL*8 A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1        O(50),P(50),Q(50),R(50),S(50),T(50),U(50),
     2        AA(50),BB(50),CC(50),DD(50),EE(50),FF(50),GG(50),HH(50),
     3        OO(50),PP(50),QQ(50),RR(50),SS(50),TT(50),UU(50),
     4        CT(5),AY(5),V,W,X,Y,Z

       DATA A/10*4.0D1,10*3.0D1,10*2.0D1,20*1.0D1/
       DATA B/10*2.0D1,10*3.0D1,20*2.0D1,10*1.0D1/
       DATA C/10*2.0D1,20*3.0D1,10*2.0D1,10*1.0D1/
       DATA D/20*2.0D1,10*3.0D1,10*2.0D1,10*1.0D1/
       DATA E/10*2.0D1,10*2.0D1,10*3.0D1,20*4.0D1/
       DATA F/10*2.0D1,10*2.0D1,20*3.0D1,10*4.0D1/
       DATA G/10*2.0D1,20*2.0D1,10*3.0D1,10*4.0D1/
       DATA H/20*2.0D1,10*2.0D1,10*3.0D1,10*4.0D1/
       DATA O/20*1.0D1,30*2.0D1/
       DATA P/30*1.0D1,20*2.0D1/
       DATA Q/20*2.0D1,30*1.0D1/
       DATA R/30*2.0D1,20*1.0D1/
       DATA S/20*3.0D1,30*4.0D1/
       DATA T/30*3.0D1,20*4.0D1/
       DATA U/20*4.0D1,30*3.0D1/
       DATA AA/10*4.0D1,10*3.0D1,10*2.0D1,20*1.0D1/
       DATA BB/10*2.0D1,10*3.0D1,20*2.0D1,10*1.0D1/
       DATA CC/10*2.0D1,20*3.0D1,10*2.0D1,10*1.0D1/
       DATA DD/20*2.0D1,10*3.0D1,10*2.0D1,10*1.0D1/
       DATA EE/10*2.0D1,10*2.0D1,10*3.0D1,20*4.0D1/
       DATA FF/10*2.0D1,10*2.0D1,20*3.0D1,10*4.0D1/
       DATA GG/10*2.0D1,20*2.0D1,10*3.0D1,10*4.0D1/
       DATA HH/20*2.0D1,10*2.0D1,10*3.0D1,10*4.0D1/
       DATA OO/20*1.0D1,30*2.0D1/
       DATA PP/30*1.0D1,20*2.0D1/
       DATA QQ/20*2.0D1,30*1.0D1/
       DATA RR/30*2.0D1,20*1.0D1/
       DATA SS/20*3.0D1,30*4.0D1/
       DATA TT/30*3.0D1,20*4.0D1/
       DATA UU/20*4.0D1,30*3.0D1/
       DATA AY/83.0D1,53.0D1,71.0D1,67.0D1,73.0D1/
       DATA V,W,X,Y,Z/5*1.5D1/
       CT(1) = 47.0D1
       CT(2) = 13.0D1
       CT(3) = 31.0D1
       CT(4) = 23.0D1
       CT(5) = 29.0D1

       DO 10 I = 1 , 50
         S(I)=(CT(3)-X)/T(I)/(AY(3)+W/U(I))/V*AY(1)*CT(1)
         P(I)=Q(I)/R(I)/CT(5)*AY(5)*Z/Y/AY(2)/CT(2)/U(I)/AY(5)*T(I)*V
         G(I)=(AY(5)-CT(5)-Z)/CT(4)/AY(4)/Y/H(I)/O(I)/U(I)/V/T(I)/W
         D(I)=AY(3)/CT(3)/X/E(I)/F(I)/(CT(2)+W+AY(2))/U(I)/W/T(I)/CT(5)
         A(I)=Z*CT(5)*AY(5)/B(I)/C(I)/W/AY(2)/CT(2)/(CT(3)+AY(3)-X)

         DO 10 J = 1 , 50
           SS(J)=Z*CT(5)*AY(5)/TT(J)/UU(J)/W/AY(2)/CT(2)/(CT(3)+AY(3))
           PP(J)=AY(3)/CT(3)/X/QQ(J)/RR(J)/(CT(2)+W+AY(2))/UU(J)/X
           GG(J)=(AY(5)-CT(5)-Z)/CT(4)/AY(4)/Y/HH(J)/OO(J)/UU(J)/CT(5)
           DD(J)=EE(J)/FF(J)/CT(5)*AY(5)*Z/Y/AY(2)/CT(2)/UU(J)/Z/TT(J)/W
           SS(J)=(CT(3)-X)/BB(J)/(AY(3)+W/CC(J))/V*AY(1)*CT(1)/UU(J)/Z
 10      CONTINUE
 20    CONTINUE

       WRITE(6,100) S , P , G , D , A
       WRITE(6,200) SS , PP , GG , DD , AA
 100       FORMAT(1H 5F13.7)
 200       FORMAT(1H 5F13.7)
           STOP
           END

       REAL*8  A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1         K(50),M(50),N(50),O(50),P(50),Q(50),R(50),S(50),
     2         T(50),U(50),
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
         A(I)=B(I)/C(I)+(CT(1)-AY(2)*V/CT(3))+D(I)/E(I)+(AY(4)-W*CT(5)
     1        +AY(1))
         F(I)=B(I)/C(I)-(Y-CT(2)*AY(3)/CT(4))-D(I)/E(I)-(AY(5)-Z*CT(1)
     2        +AY(1))
         G(I)=(B(I)/C(I))*(V-CT(3)*AY(4)/W)*(D(I)/E(I))*(CT(5)-AY(1)
     3        *X+AY(2))
         H(I)=B(I)/C(I)/(AY(3)-Y*CT(4)/AY(5))/D(I)/E(I)/(Z-CT(1)*AY(2)
     4        +V)
         K(I)=B(I)/C(I)+(CT(1)-AY(2)*V/CT(3))-(D(I)/E(I))*(AY(4)-W*CT(5)
     5        +AY(1))
         M(I)=B(I)/C(I)-(X-CT(2)*AY(3)/Y)*(D(I)/E(I))/(CT(4)-AY(5)*Z
     6        +CT(1))
         N(I)=(B(I)/C(I))+(AY(2)-V*CT(3)/AY(4))/D(I)/E(I)+(W-CT(5)
     7        *AY(1)+X)
         O(I)=B(I)/C(I)/(CT(2)-AY(3)*Y/CT(3))+D(I)/E(I)-(AY(4)-Z
     8        *CT(1)+AY(1))
         P(I)=CT(1)-AY(2)*V/CT(3)+B(I)/C(I)+D(I)/E(I)+AY(4)-W*CT(5)
     9        +AY(1)
         Q(I)=CT(1)-AY(2)*V/CT(3)-B(I)/C(I)-D(I)/E(I)-(AY(4)-W*CT(5)
     1        +AY(1))
         R(I)=(CT(1)-AY(2)*V/CT(3))*(B(I)/C(I))*(D(I)/E(I))*(AY(4)
     2        -W*CT(5)+AY(1))
         S(I)=(CT(1)-AY(2)*V/CT(3))/B(I)/C(I)/D(I)/E(I)/(AY(4)-W
     3        *CT(5))
         T(I)=B(I)/C(I)+(CT(2)-AY(3)*Y/CT(3))+AY(4)-Z*CT(5)+AY(1)
     4        +D(I)/E(I)
         U(I)=B(I)/C(I)-(CT(2)-AY(3)*Y/CT(3))-(AY(4)-Z*CT(5)+AY(1))
     5        -D(I)/E(I)

         DO 10 J = 1 , 50
           AA(J)=BB(J)/V/CT(1)/AY(2)/W/CT(3)/AY(4)/CC(J)/X/CT(5)
     1           /AY(1)/Y/CT(2)/AY(3)/1.0
           DD(J)=EE(J)/Z/CT(4)/AY(5)/V/CT(1)/AY(2)/FF(J)/W/CT(3)
     2           /AY(4)/X/CT(5)/AY(1)/2.0
           GG(J)=HH(J)/Y/CT(2)/AY(3)/Z/CT(4)/AY(5)/KK(J)/V/CT(1)
     3           /AY(2)/W/CT(3)/AY(4)/3.0
           LL(J)=MM(J)/X/CT(5)/AY(1)/Y/CT(2)/AY(3)/NN(J)/Z/CT(4)
     4           /AY(5)/V/CT(1)/AY(2)/4.0
           OO(J)=PP(J)/W/CT(3)/AY(4)/X/CT(5)/AY(1)/QQ(J)/Y/CT(2)
     5           /AY(3)/Z/CT(4)/AY(5)/5.0
           RR(J)=SS(J)/V/CT(1)/AY(2)/W/CT(3)/AY(4)/TT(J)/X/CT(5)
     6           /AY(1)/Y/CT(2)/AY(3)/6.0
           UU(J)=AA(J)/V/CT(1)/AY(2)/W/CT(3)/AY(4)/DD(J)/X/CT(5)
     7           /AY(1)/Y/CT(2)/AY(3)/1.0
 10      CONTINUE
 20    CONTINUE

       WRITE(6,100) A , F , G , H
       WRITE(6,200) K , M , N , O
       WRITE(6,300) P , Q , R , S
       WRITE(6,400) T , U
       WRITE(6,500) AA , DD , GG , LL
       WRITE(6,600) OO , RR , UU
 100       FORMAT(1H 4F13.7)
 200       FORMAT(1H 4F13.7)
 300       FORMAT(1H 2F13.7)
 400       FORMAT(1H 3F13.7)
 500       FORMAT(1H 4F13.7)
 600       FORMAT(1H 3F13.7)
           STOP
           END

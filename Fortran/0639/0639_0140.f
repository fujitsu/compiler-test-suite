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
         A(I)=(V/3.0*B(I))/AY(5)/(W/5.0*C(I))*CT(5)
         D(I)=(AY(4)/7.0*E(I))*X*(AY(3)/5.0*F(I))*Y
         G(I)=(CT(5)/9.0*H(I))/V*(CT(3)/3.0*K(I))/W
         L(I)=(X/5.0*M(I))*CT(3)/(Y/6.0*N(I))/CT(1)
         O(I)=(AY(3)/1.0*P(I))*CT(1)/(AY(1)/9.0*Q(I))/CT(2)
         R(I)=(CT(2)/5.0*S(I))/AY(2)/(CT(3)/3.0*T(I))*AY(1)
         U(I)=(V/3.0*A(I))/AY(5)*(W/5.0*D(I))/CT(3)

         DO 10 J = 1 , 50
           AA(J)=((X+AY(5))/9.5*BB(J))*CT(4)/((Y+AY(4))/7.5*CC(J))*CT(3)
           DD(J)=((AY(4)+CT(3))/7.5*EE(J))/X/((AY(3)+CT(2))/5.5*FF(I))*Y
           GG(J)=((CT(5)+Z)/5.5*HH(J))/AY(2)*((CT(4)+V)/3.5*KK(J))/AY(1)
           LL(J)=((X+AY(3))/1.5*MM(J))/CT(3)/((Y+AY(2))/3.5*NN(J))*CT(1)
           OO(J)=((AY(3)+CT(2))/1.5*PP(J))*W*((AY(1)+CT(5))/9.0*QQ(J))
     1           *CT(2)
           RR(J)=((CT(2)+X)/5.0*SS(J))/AY(2)*((CT(3)+Y)/3.0*TT(J))*AY(1)
           UU(J)=((V+AY(2))/3.0*AA(J))*AY(5)*((W+AY(1))/5.0*DD(J))*CT(3)
 10      CONTINUE
 20    CONTINUE

       WRITE(6,100) A , D , G , L
       WRITE(6,200) O , R , U
       WRITE(6,100) AA , DD , GG , LL
       WRITE(6,200) OO , RR , UU
 100       FORMAT(1H 4F13.7)
 200       FORMAT(1H 3F13.7)
           STOP
           END

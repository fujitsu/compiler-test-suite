             REAL*8  A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1               O(50),P(50),Q(50),R(50),S(50),T(50),
     2               CT(5),AY(5),U,V,W,X,Y,Z

           DATA A/20*1.0E1,30*2.0E1/
           DATA B/30*1.0E1,20*2.0E1/
           DATA C/20*2.0E1,30*2.0E1/
           DATA D/30*2.0E1,20*1.0E1/
           DATA E/20*2.0E1,30*3.0E1/
           DATA F/30*2.0E1,20*3.0E1/
           DATA G/20*3.0E1,30*2.0E1/
           DATA H/30*3.0E1,20*2.0E1/
           DATA O/20*3.0E1,30*3.0E1/
           DATA P/30*4.0E1,20*3.0E1/
           DATA Q/20*3.0E1,30*4.0E1/
           DATA R/30*3.0E1,20*4.0E1/
           DATA S/20*5.0E1,30*4.0E1/
           DATA T/30*2.0E1,20*4.0E1/
           DATA U,V,W,X,Y,Z/6*1.5E1/
           DATA AY/47.0E1,31.0E1,29.0E1,23.0E1,17.0E1/
           CT(1) = 91.0E1
           CT(2) = 51.0E1
           CT(3) = 89.0E1
           CT(4) = 67.0E1
           CT(5) = 73.0E1

           DO 10 I = 1 , 50
             F(I) = CT(3)*AY(2)/W*X/G(I)/H(I)/Z*CT(4)/AY(3)*U
             D(I) = AY(5)/V/CT(2)+CT(4)/E(I)/F(I)/AY(3)/AY(1)/CT(1)
             B(I) = F(I)/G(I)/D(I)/H(I)/Z+AY(2)/AY(4)*U
             A(I) = D(I)*H(I)/B(I)*G(I)/(AY(5)-X)*CT(1)/(W-CT(5))*AY(2)
             R(I) = CT(5)/O(I)/AY(1)/P(I)/U/Q(5)/CT(1)/P(I)/AY(5)/O(I)/Z
             S(I) = U/O(I)/V-C(I)/W/P(I)/X+C(I)/Y/O(I)/Z/Q(I)/CT(5)/Y
             T(I) = R(I)/AY(2)*Z/S(I)/(CT(4)-Y)/(W-AY(5))*Y/V/Q(I)
 10        CONTINUE

           WRITE(6,100) F , D , B , A
           WRITE(6,200) R , S , T
 100       FORMAT(1H 4F13.6)
 200       FORMAT(1H 3F13.6)
           STOP
           END

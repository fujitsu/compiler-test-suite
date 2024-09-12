           REAL*4 A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1            AA(50),BB(50),CC(50),DD(50),
     2            EE(50),FF(50),GG(50),HH(50),
     3            CN(3),O(3),X,Y,Z

           DATA A/10*2.0,20*2.0,20*8.0/
           DATA B/10*8.0,10*4.0,30*2.0/
           DATA C/20*4.0,20*2.0,10*8.0/
           DATA D/10*2.0,30*8.0,10*4.0/
           DATA E/30*2.0,10*4.0,10*8.0/
           DATA F/10*8.0,10*2.0,30*4.0/
           DATA G/10*4.0,30*8.0,10*2.0/
           DATA H/30*2.0,10*4.0,10*8.0/
           DATA AA/10*2.0,20*2.0,20*8.0/
           DATA BB/10*8.0,10*4.0,30*2.0/
           DATA CC/20*4.0,20*2.0,10*8.0/
           DATA DD/10*2.0,30*8.0,10*4.0/
           DATA EE/30*2.0,10*4.0,10*8.0/
           DATA FF/10*8.0,10*2.0,30*4.0/
           DATA GG/10*4.0,30*8.0,10*2.0/
           DATA HH/30*2.0,10*4.0,10*8.0/
           DATA O/2.0,4.0,8.0/
           DATA X,Y,Z/3*2.0/
           CN(1) = 8.0
           CN(2) = 4.0
           CN(3) = 2.0

           DO 10 J = 1 , 50
               C(J) = O(1)/D(J)/Z/E(J)/CN(3)
               B(J) = CN(3)/C(J)/O(3)/Y/D(J)/CN(2)/E(J)/X/O(2)
               F(J) = CN(2)/E(J)/X/D(J)/O(1)/D(J)/CN(1)/E(J)/O(2)
               G(J) = O(2)/D(J)/X/O(1)/E(J)/CN(3)/C(J)/Y
               H(J) = CN(3)/B(J)/Z/C(J)/O(2)-O(3)/C(J)/CN(2)/B(J)/X
               CC(J) = O(1)/DD(J)/Z/EE(J)/CN(3)/DD(J)/O(2)/EE(J)/Z
               BB(J) = CN(3)/CC(J)/O(3)/Y/DD(J)/CN(2)/EE(J)/X/O(2)
               FF(J) = CN(2)/EE(J)/X/DD(J)/O(1)/DD(J)/CN(1)/EE(J)/O(2)
               GG(J) = O(2)/DD(J)/X/O(1)/EE(J)/CN(3)/CC(J)/Y
               HH(J) = CN(3)/BB(J)/Z/CC(J)/O(2)-O(3)/CC(J)/CN(2)/BB(J)/X
 10        CONTINUE

           WRITE(6,100) C , B , A
           WRITE(6,100) CC , BB , AA
           WRITE(6,100) F , G , H
           WRITE(6,100) FF , GG , HH
 100       FORMAT(1H 3F20.3)
           STOP
           END

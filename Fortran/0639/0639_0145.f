      REAL*8   A(50),B(50),C(50),D(50),E(50),F(50),G(50),H(50),
     1         K(50),L(50),M(50),N(50),O(50),P(50),Q(50),R(50),
     2         S(50),T(50),U(50),J(50),
     3         A1(50),B1(50),C1(50),D1(50),E1(50),F1(50),G1(50),H1(50),
     4         K1(50),L1(50),M1(50),N1(50),O1(50),P1(50),Q1(50),R1(50),
     5         S1(50),T1(50),U1(50),J1(50),
     6         A2(50),B2(50),C2(50),D2(50),E2(50),F2(50),G2(50),H2(50),
     7         K2(50),L2(50),M2(50),N2(50),O2(50),P2(50),Q2(50),R2(50),
     8         S2(50),T2(50),U2(50),J2(50),
     9         A3(50),B3(50),C3(50),D3(50),E3(50),F3(50),G3(50),H3(50),
     1         K3(50),L3(50),M3(50),N3(50),O3(50),P3(50),Q3(50),R3(50),
     2         S3(50),T3(50),U3(50),J3(50),
     3         A4(50),B4(50),C4(50),D4(50),E4(50),F4(50),G4(50),H4(50),
     4         K4(50),L4(50),M4(50),N4(50),O4(50),P4(50),Q4(50),R4(50),
     5         S4(50),T4(50),U4(50),J4(50),
     6         A5(50),B5(50),C5(50),D5(50),E5(50),F5(50),G5(50),H5(50),
     7         J5(50)
      REAL*8  CT(5),AY(5),V,W,X,Y,Z

      DATA A/20*1.0D0,30*2.0D0/
      DATA B/20*3.0D0,30*4.0D0/
      DATA C/20*2.0D0,30*2.0D0/
      DATA D/20*1.0D0,30*2.0D0/
      DATA E/20*3.0D0,30*1.0D0/
      DATA F/20*1.0D0,30*2.0D0/
      DATA G/30*3.0D0,20*4.0D0/
      DATA H/20*2.0D0,30*2.0D0/
      DATA K/30*1.0D0,20*2.0D0/
      DATA J/30*1.0D0,20*2.0D0/
      DATA L/20*3.0D0,30*1.0D0/
      DATA M/20*1.0D0,30*3.0D0/
      DATA N/20*2.0D0,30*1.0D0/
      DATA O/20*2.0D0,30*2.0D0/
      DATA P/20*4.0D0,30*3.0D0/
      DATA Q/20*2.0D0,30*1.0D0/
      DATA R/30*3.0D0,20*2.0D0/
      DATA S/30*1.0D0,20*2.0D0/
      DATA T/30*2.0D0,20*4.0D0/
      DATA U/30*3.0D0,20*2.0D0/
      DATA A1/20*1.0D0,30*2.0D0/
      DATA B1/20*3.0D0,30*4.0D0/
      DATA C1/20*2.0D0,30*2.0D0/
      DATA D1/20*1.0D0,30*2.0D0/
      DATA E1/20*3.0D0,30*1.0D0/
      DATA F1/20*1.0D0,30*2.0D0/
      DATA G1/30*3.0D0,20*4.0D0/
      DATA H1/20*2.0D0,30*2.0D0/
      DATA J1/30*1.0D0,20*2.0D0/
      DATA K1/30*1.0D0,20*2.0D0/
      DATA L1/20*3.0D0,30*1.0D0/
      DATA M1/20*1.0D0,30*3.0D0/
      DATA N1/20*2.0D0,30*1.0D0/
      DATA O1/20*2.0D0,30*2.0D0/
      DATA P1/20*4.0D0,30*3.0D0/
      DATA Q1/20*2.0D0,30*1.0D0/
      DATA R1/30*3.0D0,20*2.0D0/
      DATA S1/30*1.0D0,20*2.0D0/
      DATA T1/30*2.0D0,20*4.0D0/
      DATA U1/30*3.0D0,20*2.0D0/
      DATA A2/20*1.0D0,30*2.0D0/
      DATA B2/20*3.0D0,30*4.0D0/
      DATA C2/20*2.0D0,30*2.0D0/
      DATA D2/20*1.0D0,30*2.0D0/
      DATA E2/20*3.0D0,30*1.0D0/
      DATA F2/20*1.0D0,30*2.0D0/
      DATA G2/30*3.0D0,20*4.0D0/
      DATA H2/20*2.0D0,30*2.0D0/
      DATA J2/20*2.0D0,30*2.0D0/
      DATA K2/30*1.0D0,20*2.0D0/
      DATA L2/20*3.0D0,30*1.0D0/
      DATA M2/20*1.0D0,30*3.0D0/
      DATA N2/20*2.0D0,30*1.0D0/
      DATA O2/20*2.0D0,30*2.0D0/
      DATA P2/20*4.0D0,30*3.0D0/
      DATA Q2/20*2.0D0,30*1.0D0/
      DATA R2/30*3.0D0,20*2.0D0/
      DATA S2/30*1.0D0,20*2.0D0/
      DATA T2/30*2.0D0,20*4.0D0/
      DATA U2/30*3.0D0,20*2.0D0/
      DATA A3/20*1.0D0,30*2.0D0/
      DATA B3/20*3.0D0,30*4.0D0/
      DATA C3/20*2.0D0,30*2.0D0/
      DATA D3/20*1.0D0,30*2.0D0/
      DATA E3/20*3.0D0,30*1.0D0/
      DATA F3/20*1.0D0,30*2.0D0/
      DATA G3/30*3.0D0,20*4.0D0/
      DATA H3/20*2.0D0,30*2.0D0/
      DATA J3/20*2.0D0,30*2.0D0/
      DATA K3/30*1.0D0,20*2.0D0/
      DATA L3/20*3.0D0,30*1.0D0/
      DATA M3/20*1.0D0,30*3.0D0/
      DATA N3/20*2.0D0,30*1.0D0/
      DATA O3/20*2.0D0,30*2.0D0/
      DATA P3/20*4.0D0,30*3.0D0/
      DATA Q3/20*2.0D0,30*1.0D0/
      DATA R3/30*3.0D0,20*2.0D0/
      DATA S3/30*1.0D0,20*2.0D0/
      DATA T3/30*2.0D0,20*4.0D0/
      DATA U3/30*3.0D0,20*2.0D0/
      DATA A4/20*1.0D0,30*2.0D0/
      DATA B4/20*3.0D0,30*4.0D0/
      DATA C4/20*2.0D0,30*2.0D0/
      DATA D4/20*1.0D0,30*2.0D0/
      DATA E4/20*3.0D0,30*1.0D0/
      DATA F4/20*1.0D0,30*2.0D0/
      DATA G4/30*3.0D0,20*4.0D0/
      DATA H4/20*2.0D0,30*2.0D0/
      DATA J4/20*2.0D0,30*2.0D0/
      DATA K4/30*1.0D0,20*2.0D0/
      DATA L4/20*3.0D0,30*1.0D0/
      DATA M4/20*1.0D0,30*3.0D0/
      DATA N4/20*2.0D0,30*1.0D0/
      DATA O4/20*2.0D0,30*2.0D0/
      DATA P4/20*4.0D0,30*3.0D0/
      DATA Q4/20*2.0D0,30*1.0D0/
      DATA R4/30*3.0D0,20*2.0D0/
      DATA S4/30*1.0D0,20*2.0D0/
      DATA T4/30*2.0D0,20*4.0D0/
      DATA U4/30*3.0D0,20*2.0D0/
      DATA A5/10*1.0D0,40*2.0D0/
      DATA B5/10*3.0D0,40*4.0D0/
      DATA C5/10*2.0D0,40*2.0D0/
      DATA D5/10*1.0D0,40*2.0D0/
      DATA E5/10*3.0D0,40*2.0D0/
      DATA F5/10*3.0D0,40*4.0D0/
      DATA G5/10*2.0D0,40*2.0D0/
      DATA H5/10*1.0D0,40*2.0D0/
      DATA J5/10*3.0D0,40*2.0D0/
      DATA AY/3.0D0,1.0D0,2.0D0,3.0D0,1.0D0/
      DATA V,W,X,Y,Z/5*6.7E1/
      CT(1) = 9.0E1
      CT(2) = 7.8E1
      CT(3) = 6.5E1
      CT(4) = 4.3E1
      CT(5) = 2.1E1

      DO 20 I = 1 , 50
        A(I)=V+B(I)+CT(1)+C(I)+AY(1)+D(I)+W+E(I)+CT(2)+F(I)+AY(2)+G(I)+
     1       X+H(I)+CT(3)+J(I)+AY(3)+K(I)+Y+L(I)+CT(4)+M(I)+AY(4)+N(I)+
     2       Z+O(I)+CT(5)+P(I)+AY(5)+Q(I)+V+R(I)+CT(1)+S(I)+AY(1)+T(I)+
     3       W+U(I)+CT(2)+B1(I)+AY(2)+C1(I)+X+D1(I)+CT(3)+E1(I)+AY(3)+
     4       F1(I)+Y+G1(I)+CT(4)+H1(I)+AY(4)+J1(I)+Z+K1(I)+CT(5)+L1(I)+
     5       AY(5)+M1(I)+V+N1(I)+CT(1)+O1(I)+AY(1)+P1(I)+W+Q1(I)+CT(2)+
     6       R1(I)+AY(2)+S1(I)+X+T1(I)+CT(3)+U1(I)+AY(3)+A2(I)+Y+B2(I)+
     7       CT(4)+C2(I)+AY(4)+D2(I)+Z+E2(I)+CT(5)+F2(I)+AY(5)+G2(I)+V+
     8       CT(1)+H2(I)+AY(1)+J2(I)+W+K2(I)+CT(2)+L2(I)+AY(2)+M2(I)+X+
     9       N2(I)+CT(3)+O2(I)+AY(3)+P2(I)+Y+Q2(I)+CT(4)+R2(I)+AY(4)+
     1       S2(I)+Z+T2(I)+CT(5)+U2(I)+AY(5)+A3(I)+V+B3(I)+CT(1)+C3(I)+
     2       AY(1)+D3(I)+W+E3(I)+CT(2)+F3(I)+AY(2)+J3(I)+X+H3(I)+CT(4)+
     3       J3(I)+AY(4)+K3(I)+Y+L3(I)+CT(5)+M3(I)+AY(5)+N3(I)+Z+O3(I)+
     4       CT(1)+P3(I)+AY(1)+Q3(I)+V+R3(I)+CT(2)+S3(I)+AY(2)+T3(I)+W+
     5       U3(I)+CT(3)+A4(I)+AY(3)+B(I)+X+F4(I)+CT(4)+G4(I)+AY(4)+
     6       Y+H4(I)+CT(5)+J4(I)+AY(5)+K4(I)+Z+L4(I)+CT(1)+M4(I)+AY(1)+
     7       N4(I)+CT(2)+O4(I)+AY(2)+P4(I)+V+Q4(I)+CT(3)+R4(I)+AY(3)+
     8       S4(I)+W+T4(I)+CT(4)+U4(I)+AY(4)+A5(I)+X+B5(I)+CT(5)+C5(I)+
     9       D5(I)+AY(5)+E5(I)+Y+F5(I)+CT(1)+G5(I)+AY(1)+H5(I)+Z+J5(I)

        A1(I)=V-B(I)-CT(1)-C(I)-AY(1)-D(I)-W-E(I)-CT(2)-F(I)-AY(2)-G(I)-
     1        X-H(I)-CT(3)-J(I)-AY(3)-K(I)-Y-L(I)-CT(4)-M(I)-AY(4)-N(I)-
     2        Z-O(I)-CT(5)-P(I)-AY(5)-Q(I)-V-R(I)-CT(1)-S(I)-AY(1)-T(I)-
     3        W-U(I)-CT(2)-B1(I)-AY(2)-C1(I)-X-D1(I)-CT(3)-E1(I)-AY(3)-
     4        F1(I)-Y+G1(I)-CT(4)-H1(I)-AY(4)-J1(I)-Z-K1(I)-CT(5)-L1(I)-
     5        AY(5)-M1(I)-V-N1(I)-CT(1)-O1(I)-AY(1)-P1(I)-W-Q1(I)-CT(2)-
     6        R1(I)-AY(2)-S1(I)-X-U1(I)-CT(3)-B2(I)-AY(3)-C2(I)-Y-D2(I)-
     7        CT(4)-E2(I)-AY(4)-Z-F2(I)-CT(5)-G2(I)-AY(5)-H2(I)-V-J2(I)-
     8        CT(1)-K2(I)-AY(1)-L2(I)-W-M2(I)-CT(2)-N2(I)-AY(2)-O2(I)-X-
     9        P2(I)-CT(3)-Q2(I)-AY(3)-R2(I)-Y-S2(I)-CT(4)-T1(I)-AY(4)-
     1        U2(I)-Z+B3(I)-CT(5)-C3(I)-AY(5)-D3(I)-V-E3(I)-CT(1)-F3(I)-
     2        AY(1)-G3(I)-W-H3(I)-CT(2)-J3(I)-AY(2)-K3(I)-X-L3(I)-CT(4)-
     3        M3(I)-AY(4)-N3(I)-Y-O3(I)-CT(5)-P3(I)-AY(5)-Q3(I)-Z-R3(I)-
     4        CT(1)-S3(I)-AY(1)-T2(I)-V-U3(I)-CT(2)-B4(I)-AY(2)-C4(I)-W-
     5        D4(I)-CT(3)-E4(I)-AY(3)-X-F4(I)-CT(4)-G4(I)-AY(4)-H4(I)-Y-
     6        J4(I)-CT(5)-K4(I)-AY(5)-L4(I)-Z-M4(I)-CT(1)-N4(I)-AY(1)-
     7        O4(I)-CT(2)-P4(I)-AY(2)-Q4(I)-V-R4(I)-CT(3)-S4(I)-AY(3)-
     8        T3(I)-W-T4(I)-CT(4)-A5(I)-AY(4)-B5(I)-X-C5(I)-CT(5)-D5(I)-
     9        AY(1)-E5(I)-Y-F5(I)-CT(1)-G5(I)-AY(1)-H5(I)-Z-J5(I)-CT(2)

       A2(I)=V*B(I)*CT(1)*C(I)*AY(1)*D(I)*W+E(I)*CT(2)*F(I)*AY(2)*G(I)*
     1       X/H(I)/CT(3)/J(I)/AY(3)/K(I)/Y/L(I)/CT(4)/M(I)/AY(4)/N(I)/
     2       Z*O(I)*CT(5)*P(I)*AY(5)*Q(I)*V*R(I)*CT(1)*S(I)*AY(1)*T(I)*
     3       W+U(I)/CT(2)/B1(I)/AY(2)/C1(I)/X/D1(I)/CT(3)/E1(I)/AY(3)/
     4       F1(I)*Y*G1(I)*CT(4)*H1(I)*AY(4)*J1(I)*Z*K1(I)*CT(5)*L1(I)*
     5       AY(5)/M1(I)/V/N1(I)/CT(1)/O1(I)/AY(1)/P1(I)/W/Q1(I)/CT(2)/
     6       R1(I)*AY(2)*S1(I)*X*T1(I)*CT(3)*U1(I)*AY(3)*A2(I)*Y*B2(I)*
     7       CT(4)/C2(I)/AY(4)/D2(I)/Z/E2(I)/CT(5)/F2(I)/AY(5)/G2(I)/V/
     8       CT(1)*H2(I)*AY(1)*J2(I)*W*K2(I)*CT(2)*L2(I)*AY(2)*M2(I)*X*
     9       N2(I)/CT(3)/O2(I)/AY(3)/P2(I)/Y/Q2(I)/CT(4)/R2(I)/AY(4)/
     1       S2(I)*Z*T2(I)*CT(5)*U2(I)*AY(5)*A3(I)*V*B3(I)*CT(1)*C3(I)*
     2       AY(1)/D3(I)/W/E3(I)/CT(2)/F3(I)/AY(2)/J3(I)/X/H3(I)/CT(4)/
     3       J3(I)*AY(4)*K3(I)*Y*L3(I)*CT(5)*M3(I)*AY(5)*N3(I)*Z*O3(I)*
     4       CT(1)/P3(I)/AY(1)/Q3(I)/V/R3(I)/CT(2)/S3(I)/AY(2)/T3(I)/W/
     5       U3(I)*CT(3)*A4(I)*AY(3)*B(I)*X*F4(I)*CT(4)*G4(I)*AY(4)*
     6       Y/H4(I)/CT(5)/J4(I)/AY(5)/K4(I)/Z/L4(I)/CT(1)/M4(I)/AY(1)/
     7       N4(I)*CT(2)*O4(I)*AY(2)*P4(I)*V*Q4(I)*CT(3)*R4(I)*AY(3)*
     8       S4(I)/W/T4(I)/CT(4)/U4(I)/AY(4)/A5(I)/X/B5(I)/CT(5)/C5(I)/
     9       D5(I)*AY(5)*E5(I)*Y*F5(I)*CT(1)*G5(I)*AY(1)*H5(I)*Z*J5(I)

        A3(I)=V/B(I)*CT(1)/C(I)*AY(1)/D(I)*W/E(I)*CT(2)/F(I)*AY(2)/G(I)*
     1        X/H(I)*CT(3)/J(I)*AY(3)/K(I)*Y/L(I)*CT(4)/M(I)*AY(4)/N(I)*
     2        Z/O(I)*CT(5)/P(I)*AY(5)/Q(I)*V/R(I)*CT(1)/S(I)*AY(1)/T(I)*
     3        W/U(I)*CT(2)/B1(I)*AY(2)/C1(I)*X/D1(I)*CT(3)/E1(I)*AY(3)/
     4        F1(I)*Y/G1(I)*CT(4)/H1(I)*AY(4)/J1(I)*Z/K1(I)*CT(5)/L1(I)*
     5        AY(5)*M1(I)/V*N1(I)/CT(1)*O1(I)/AY(1)*P1(I)/W*Q1(I)/CT(2)*
     6        R1(I)*AY(2)/S1(I)*X/U1(I)*CT(3)/B2(I)*AY(3)/C2(I)*Y/D2(I)*
     7        CT(4)*E2(I)/AY(4)*Z/F2(I)*CT(5)/G2(I)*AY(5)/H2(I)*V/J2(I)*
     8        CT(1)*K2(I)/AY(1)*L2(I)/W*M2(I)/CT(2)*N2(I)/AY(2)*O2(I)/X*
     9        P2(I)*CT(3)/Q2(I)*AY(3)/R2(I)*Y/S2(I)*CT(4)/T1(I)*AY(4)/
     1        U2(I)*Z/B3(I)*CT(5)/C3(I)*AY(5)/D3(I)*V/E3(I)*CT(1)/F3(I)*
     2        AY(1)*G3(I)/W*H3(I)/CT(2)*J3(I)/AY(2)*K3(I)/X*L3(I)/CT(4)*
     3        M3(I)*AY(4)/N3(I)*Y/O3(I)*CT(5)/P3(I)*AY(5)/Q3(I)*Z/R3(I)*
     4        CT(1)*S3(I)/AY(1)*T2(I)/V*U3(I)/CT(2)*B4(I)/AY(2)*C4(I)/W*
     5        D4(I)*CT(3)/E4(I)*AY(3)/X*F4(I)/CT(4)*G4(I)/AY(4)*H4(I)/Y*
     6        J4(I)*CT(5)/K4(I)*AY(5)/L4(I)*Z/M4(I)*CT(1)/N4(I)*AY(1)/
     7        O4(I)*CT(2)/P4(I)*AY(2)/Q4(I)*V/R4(I)*CT(3)/S4(I)*AY(3)/
     8        T3(I)*W/T4(I)*CT(4)/A5(I)*AY(4)/B5(I)*X/C5(I)*CT(5)/D5(I)*
     9        AY(1)*E5(I)/Y*F5(I)/CT(1)*G5(I)/AY(1)*H5(I)/Z*J5(I)/CT(2)
 20    CONTINUE

      WRITE(6,100) A , A1
      WRITE(6,100) A2 , A3
 100  FORMAT(1H F13.7 , 1H F13.7)
      STOP
      END

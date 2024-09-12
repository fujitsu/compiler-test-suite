      DIMENSION ID(80),IA(80)
      DIMENSION A1(10),A2(10),A3(10),A4(10),A5(10)
      DIMENSION X(10),Y(10),Z(10),W(10)
      EQUIVALENCE
     *    (ID( 1),K1),(ID( 2),K2),(ID( 3),K3),(ID( 4),K4),(ID( 5),K5),
     *    (ID( 6),B1),(ID( 7),B2),(ID( 8),B3),(ID( 9),B4),(ID(10),B5),
     *    (ID(11),C1),(ID(12),C2),(ID(13),C3),(ID(14),C4),(ID(15),C5),
     *    (ID(16),D1),(ID(17),D2),(ID(18),D3),(ID(19),D4),(ID(20),D5),
     *    (ID(21),E1),(ID(22),E2),(ID(23),E3),(ID(24),E4),(ID(25),E5),
     *    (ID(26),F1),(ID(27),F2),(ID(28),F3),(ID(29),F4),(ID(30),F5),
     *    (ID(31),A1(1)),(ID(41),A2(1)),(ID(51),A3(1)),(ID(61),A4(1)),
     *    (ID(71),A5(1))
      EQUIVALENCE
     *    (IA( 1),X1),(IA( 2),X2),(IA( 3),X3),(IA( 4),X4),(IA( 5),X5),
     *    (IA( 6),X6),(IA( 7),X7),(IA( 8),X8),(IA( 9),X9),(IA(10),X0),
     *    (IA(11),Y1),(IA(12),Y2),(IA(13),Y3),(IA(14),Y4),(IA(15),Y5),
     *    (IA(16),Y6),(IA(17),Y7),(IA(18),Y8),(IA(19),Y9),(IA(20),Y0),
     *    (IA(21),Z1),(IA(22),Z2),(IA(23),Z3),(IA(24),Z4),(IA(25),Z5),
     *    (IA(26),Z6),(IA(27),Z7),(IA(28),Z8),(IA(29),Z9),(IA(30),Z0),
     *    (IA(31),W1),(IA(32),W2),(IA(33),W3),(IA(34),W4),(IA(35),W5),
     *    (IA(36),W6),(IA(37),W7),(IA(38),W8),(IA(39),W9),(IA(40),W0),
     *    (IA(41),X(1)),(IA(51),Y(1)),(IA(61),Z(1)),(IA(71),W(1))

      CALL INIT1(ID,IA)
      CALL INIT(ID,IA)

      R1=C5
      R2=C2
      R3=C3
      S1=B1
      S2=B2

      DO 10 I=1,2
      O1=R1/R2
      T1=S1*S2
      O2=O1-R3
      O1=T1+S1
      T2=O2+S2
      O3=R1/R2
      T3=S1-S2
      O4=O3-R3
      O3=T3+S1
      T4=T2+O4
      T5=T4+O3
      X1=O1
      X2=O2
      X3=O3
      X4=O4
      X5=T5
   10 CONTINUE

      DO 20 I=1,2
      X6=R1/R2
      T1=S1*S2
      X7=X6-R3
      X6=T1+S1
      T2=X7+S2
      X8=R1/R2
      T3=S1-S2
      X9=X8-R3
      X8=T3+S1
      T4=T2+X9
      T5=T4+X8
      X0=T5
   20 CONTINUE

      DO 30 I=1,2
      Y1=R1/R2
      T1=S1*S2
      Y2=Y1-R3
      Y1=T1+S1
      T2=Y2+S2
      O3=R1/R2
      T3=S1-S2
      O4=O3-R3
      O3=T3+S1
      T4=T2+O4
      T5=T4+O3
      Y3=O3
      Y4=O4
      Y5=T5
   30 CONTINUE

      DO 40 I=1,2
      O1=R1/R2
      T1=S1*S2
      O2=O1-R3
      O1=T1+S1
      T2=O2+S2
      Y8=R1/R2
      T3=S1-S2
      Y9=Y8-R3
      Y8=T3+S1
      T4=T2+Y9
      T5=T4+Y8
      Y6=O1
      Y7=O2
      Y0=T5
   40 CONTINUE

      DO 50 I=1,2
      O1=R1/C2
      T1=S1*S2
      O2=O1-C3
      O1=T1+S1
      T2=O2+S2
      O3=R1/C2
      T3=S1-S2
      O4=O3-C3
      O3=T3+S1
      T4=T2+O4
      T5=T4+O3
      Z1=O1
      Z2=O2
      Z3=O3
      Z4=O4
      Z5=T5
   50 CONTINUE

      DO 60 I=1,2
      Z6=R1/C2
      T1=S1*S2
      Z7=Z6-C3
      Z6=T1+S1
      T2=Z7+S2
      Z8=R1/C2
      T3=S1-S2
      Z9=Z8-C3
      Z8=T3+S1
      T4=T2+Z9
      T5=T4+Z8
      Z0=T5
   60 CONTINUE

      DO 70 I=1,2
      W1=R1/C2
      T1=S1*S2
      W2=W1-C3
      W1=T1+S1
      T2=W2+S2
      O3=R1/C2
      T3=S1-S2
      O4=O3-C3
      O3=T3+S1
      T4=T2+O4
      T5=T4+O3
      W3=O3
      W4=O4
      W5=T5
   70 CONTINUE

      DO 80 I=1,2
      O1=R1/C2
      T1=S1*S2
      O2=O1-C3
      O1=T1+S1
      T2=O2+S2
      W8=R1/C2
      T3=S1-S2
      W9=W8-C3
      W8=T3+S1
      T4=T2+W9
      T5=T4+W8
      W6=O1
      W7=O2
      W0=T5
   80 CONTINUE

      CALL OUTPUT(ID,IA)
      STOP
      END

      SUBROUTINE INIT(RID,RIA)
      DIMENSION ID(80),IA(80)
      DIMENSION RID(80),RIA(80)

      DO 10 I=6,80
   10 RID(I)=I
      DO 20 I=1,80
   20 RIA(I)=0.
      RETURN
      ENTRY INIT1(ID,IA)
      DO 30 I=1,5
   30 ID(I)=I
      RETURN
      ENTRY OUTPUT(RID,RIA)
      WRITE(6,1000) RIA
      RETURN
 1000 FORMAT(5X,5E20.7)
      END

      INTEGER *4 A1(600),B1(600),C1(600),D1(600),E1(600),F1(600),
     *           G1(600),H1(600),I1(600),J1(600)
      REAL    *4 A2(600),B2(600),C2(600),D2(600),E2(600),F2(600),
     *           G2(600),H2(600),I2(600),J2(600)
      REAL    *8 A3(600),B3(600),C3(600),D3(600),E3(600),F3(600),
     *           G3(600),H3(600),I3(600),J3(600)
      N=600
      DO 1  I=1,N
       A1(I)=1
       B1(I)=1
       C1(I)=1
       D1(I)=1
       E1(I)=1
       F1(I)=1
       G1(I)=1
       H1(I)=1
       I1(I)=1
 1    CONTINUE

      DO 2  I=1,N
       A2(I)=1
       B2(I)=1
       C2(I)=1
       D2(I)=1
       E2(I)=1
       F2(I)=1
       G2(I)=1
       H2(I)=1
       I2(I)=1
 2    CONTINUE

      DO 3  I=1,N
       A3(I)=1
       B3(I)=1
       C3(I)=1
       D3(I)=1
       E3(I)=1
       F3(I)=1
       G3(I)=1
       H3(I)=1
       I3(I)=1
 3    CONTINUE

      DO 10 I=1,N
      J1(I)=A1(I)+B1(I)+C1(I)+D1(I)+E1(I)+F1(I)+G1(I)+H1(I)+I1(I)+I1(I)
       A1(I)=J1(I)+I1(I)
 10   CONTINUE

      DO 20 I=1,N
      J2(I)=A1(I)+B1(I)+C1(I)+D1(I)+E1(I)+F1(I)+G1(I)+H1(I)+I1(I)+I2(I)
       A1(I)=J2(I)+I2(I)
 20   CONTINUE

      DO 30 I=1,N
      J3(I)=A3(I)+B3(I)+C3(I)+D3(I)+E3(I)+F3(I)+G3(I)+H3(I)+I3(I)+I3(I)
       A3(I)=J3(I)+I3(I)
 30   CONTINUE
      WRITE(6,*) A1(1),J1(1),A2(1),J2(1),A3(1),J3(1)
      STOP
      END

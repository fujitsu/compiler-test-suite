      REAL*4  A(20),B(20),C(20)
      REAL*4  D(20),E(20),F(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  D/20*3./,E/20*4./,F/20*5./
      DATA  X/20*1.0/,Y/20*2.0/,Z/20*3.0/
      S=0.
      DO 10 I=2,19
        T1 = S + A(I)- B(I)*C(I)
        T2 = T1 + B(I-1)
        T3 = T2 - C(I)
        T4 = T3 + D(I)
        T5 = T4 - E(I)
        T6 = T5 + F(I)
        T7 = T6 - X(I)
        T8 = T7 + Y(I)
        T9 = T8 - Z(I)
        T10= T9 + C(I)
        T11= T10- F(I)
        T12= T11+ E(I)
        T13= T12- D(I)
        T14= T13+ C(I)
        T15= T14+ C(I)
        T16= T15- A(I)
        T17= T16+ Y(I)
        T18= T17- X(I)
        T19= T18+ Z(I)
        T20= T19+ C(I)
        T21= T20- F(I)
        T22= T21+ E(I)
        T23= T22- D(I)
        T24= T23+ C(I)
        T25= T24+ C(I)
        T26= T25- A(I)
        T27= T26+ Y(I)
        T28= T27- X(I)
        T29= T28+ Z(I)
        S  = T29+ A(I)
  10  CONTINUE
      WRITE(6,601) S
 601  FORMAT(1H , E12.4 )
      WRITE(6,600) A
      WRITE(6,600) X
 600  FORMAT(1H , 4(5(E12.4,1X),/))
      STOP
      END

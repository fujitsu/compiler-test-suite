      COMMON M(10)
      EQUIVALENCE (M(1),B1),(M(2),B2),(M(3),B3),(M(4),B4),(M(5),B5),
     1            (M(6),B6),(M(7),B7),(M(8),B8),(M(9),B9),(M(10),B10)
      EQUIVALENCE (W3,N3),(W7,N7)
      DIMENSION A(10)
      CALL INIT
      I=2
      IF(I.EQ.2) I=2

   10 I=1
      D1=5.
      A(I)=D1
      C1=A(I)
      B1=C1*2.
      IF(I.EQ.2) I=2

   20 I=2
      D2=5.
      A(I)=D2
      C2=A(I)
      E2=C2*2.
      IF(I.EQ.2) I=2
   25 B2=C2*4.
      IF(I.EQ.2) I=2

   30 I=3
      N3=3
      D3=5.
      A(I)=D3
      W3=A(I)
      B3=W3*6.
      IF(I.EQ.2) I=2

   40 I=4
      D4=5.*8.
      A(I)=D4
      B4=A(I)
      C4=B4*10.
      IF(I.EQ.2) I=2

   50 I=5
      D5=5.
      B5=D5*10.
      A(I)=D5
      C5=A(I)
      IF(I.EQ.2) I=2

   60 I=6
      D6=5.
      A(I)=D6
      C6=A(I)
      IF(I.EQ.2) I=2
   65 B6=C6*12.
      IF(I.EQ.2) I=2

   70 I=7
      N7=7
      D7=5.
      B7=D7*14.
      A(I)=D7
      W7=A(I)
      IF(I.EQ.2) I=2

   80 I=8
      D8=5.*16.
      A(I)=D8
      B8=A(I)
      IF(I.EQ.2) I=2

 1000 CALL OUTPUT
      STOP
      END

      SUBROUTINE INIT
      COMMON B(10)
      DO 10 I=1,10
   10 B(I)=0.
      RETURN
      ENTRY OUTPUT
      WRITE(6,1000) B
      RETURN
 1000 FORMAT(5X,5E20.7)
      END

      REAL*8  A(2,2,2),B(2,2,2),ANS(4,2)
      A(1,1,1)=1.0
      A(2,1,1)=2.0
      A(1,2,1)=3.0
      A(2,2,1)=4.0
      A(1,1,2)=5.0
      A(2,1,2)=6.0
      A(1,2,2)=7.0
      A(2,2,2)=8.0
      B(1,2:1:-1,1)=A(1:2,2,2)
      B(2,2:1:-1,1)=A(2,1,1:2)
      B(1,2:1:-1,2)=A(1,1,1:2)
      B(2,2:1:-1,2)=A(1:2,2,1)
      IF((B(1,1,1).EQ.A(2,2,2)).AND.
     1   (B(2,1,1).EQ.A(2,1,2)).AND.
     2   (B(1,2,1).EQ.A(1,2,2)).AND.
     3   (B(2,2,1).EQ.A(2,1,1)).AND.
     4   (B(1,1,2).EQ.A(1,1,2)).AND.
     5   (B(2,1,2).EQ.A(2,2,1)).AND.
     6   (B(1,2,2).EQ.A(1,1,1)).AND.
     7   (B(2,2,2).EQ.A(1,2,1)))  THEN
      ELSE
       WRITE (6,*)  '**** ITEM1  NG ****'
       WRITE (6,*)  A
       WRITE (6,*)  B
      END IF
      CALL SUB(ANS,A)
      IF((ANS(1,1).EQ.A(2,1,2)).AND.
     1   (ANS(2,1).EQ.A(1,1,2)).AND.
     2   (ANS(3,1).EQ.A(1,2,1)).AND.
     3   (ANS(4,1).EQ.A(2,2,1)).AND.
     4   (ANS(1,2).EQ.A(2,1,1)).AND.
     5   (ANS(2,2).EQ.A(1,1,1)).AND.
     6   (ANS(3,2).EQ.A(2,2,2)).AND.
     7   (ANS(4,2).EQ.A(1,2,2)))  THEN
      ELSE
       WRITE (6,*)  '**** ITEM2  NG ****'
       WRITE (6,*)  ANS
       WRITE (6,*)  A(2,1,1),A(1,1,1),A(2,1,2),A(1,1,2),
     1              A(1,2,1),A(2,2,1),A(2,2,2),A(1,2,2)
      END IF
      WRITE(6,*) '*****PASS*****'
      STOP
      end
      SUBROUTINE SUB(B,A)
      REAL * 8  B(4,2),A(2,2,2)
      C1=1
      C2=2
      C3=3
      C4=4
      B(1:2,2:1:-1 )=A(2:1:-1,1,1:2)
      B( 3: 4,1    )=A( 1: 2,2,1)
      B( 3: 4,2    )=A(2:1:-1,2,2)
      END
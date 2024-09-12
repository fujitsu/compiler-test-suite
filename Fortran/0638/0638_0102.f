         PROGRAM MAIN
         CALL TEST1
         CALL TEST2
         CALL TEST3
         CALL TEST4
         WRITE(6,*) 'TEST OK'
         STOP
         END
         SUBROUTINE TEST1
         REAL*8 A(10)/10*1/,B(10)/10*1/
         REAL*8 C(2000),D(2000),E(2048)
         INTEGER*4 N/2/
         DO 1 I=1,2000
           C(I)=1
1          D(I)=1

        DO 2 I=1,10
 2        A(I)=B(I)+I

        DO 3 I=1,N
3        A(I)=1

         DO 4 I=1,2048
 4         E(I)=B(1)

         DO 5 J=2,5
         DO 5 I=2,2048
 5         E(1)=E(1)+E(I)+B(1)

         DO 6 J=2,5
         DO 6 I=1,10
 6         A(I)=A(I)+B(I)
         DO 7 I=1,10
           E(2)=E(2)+A(I)
 7         E(3)=E(3)+B(I)
         DO 8 I=1,2000
           E(4)=E(4)+C(I)
8          E(5)=E(5)+D(I)
         WRITE(6,*) E(1),E(2),E(3),E(4),E(5)
         RETURN
         END
         SUBROUTINE TEST2
         REAL*4 A(10)/10*1/,B(10)/10*1/,C(10)/10*1/,D(10,10)
         INTEGER*4 N/2/
         D = 0
         DO 10 L=1,4
         GOTO 90
         N=1
 1       CONTINUE
         K=L
         GOTO(2,3,4,5) ,L
         DO 100 I=1,10
 100       A(I)=1
         A(1)=B(1)+1
 2     DO 200 I=1,10,2
         B(I)=1+I
 200    IF(I.GT.6) GOTO 3
       B(2)=1
 3     CONTINUE
       IF(C(1).LE.0) GOTO 4
       DO 301 J=I,10
       DO 300 I=1,10
 300     D(I,J)=C(I)+K
       IF(K.GT.2) K=L-1
 301   CONTINUE
       GOTO 4
 99    STOP 'ERROR'
 4    CONTINUE
      DO 400 I=1,10,3
       C(I)=I
400   CONTINUE
      IF(L.GT.100) GOTO 99
      GOTO 10
90    CONTINUE
      GOTO 1
10    CONTINUE
 5    WRITE(6,*) A,B,C,D
      RETURN
      END
      SUBROUTINE TEST3
      REAL*4 A(10)/10*8/,B(10)/10*10/,B1(10),A1,A2,A3,A4,A5
      REAL*4 C(10)/10*0.5/,C1,C2,C3,C4,C5
      REAL*4 E(10)/10*1/
      REAL*4 D(100)
      EQUIVALENCE (A(1),A1)
      EQUIVALENCE (A(2),A2)
      EQUIVALENCE (A(3),A3)
      EQUIVALENCE (A(4),A4)
      EQUIVALENCE (A(5),A5)
      EQUIVALENCE (C(1),C1)
      EQUIVALENCE (C(2),C2)
      EQUIVALENCE (C(3),C3)
      EQUIVALENCE (C(4),C4)
      EQUIVALENCE (C(5),C5)
      EQUIVALENCE (B(1),B1(1))
      EQUIVALENCE (D(1),A1),(D(91),E(1))
      DO 1 I=11,90
1     D(I)=I
       A1=2.0
      DO 10 I=1,10
10     A(I)=I
      C1=2.0
      C1=2.0
       A2=1.0
       DO 20 I=1,10
20      B(I)=I
       A3=1
       B1(2)=1
       E(1)=0.6
       DO 30 I=1,6
30      D(I)=9
       B(10)=7
       IF(E(1).EQ.9) E(2)=1
       DO 40 I=1,5
 40     C(I)=I
       B(8)=0
        A(5)=0
        D(1)=0
        WRITE(6,*) A,B,C,D,E
        RETURN
        END
        SUBROUTINE TEST4
        REAL*8 A(10),C(10),B(1500)/1500*7/
        C(1)=1
        C(2)=2
        C(3)=3
        C(4)=4
        C(5)=5
        C(6)=6
        C(7)=7
        C(8)=8
        DO 10 I=1,1000
        B(I)=I
        IF(I.LE.10) THEN
         A(I)=I+B(I+500)
        ENDIF
10    CONTINUE
      C(9)=9
      C(10)=10
      WRITE(6,*) A,B(1),B(1500),C
      RETURN
      END
      SUBROUTINE TEST5
      REAL*4 A(10)/10*8/,B(10)/10*10/,B1(10),A1,A2,A3,A4,A5
      REAL*4 C(10)/10*0.5/,C1,C2,C3,C4,C5
      REAL*4 E(10)/10*1/
      REAL*4 D(100)
      EQUIVALENCE (A(1),A1)
      EQUIVALENCE (A(2),A2)
      EQUIVALENCE (A(3),A3)
      EQUIVALENCE (A(4),A4)
      EQUIVALENCE (A(5),A5)
      EQUIVALENCE (C(1),C1)
      EQUIVALENCE (C(2),C2)
      EQUIVALENCE (C(3),C3)
      EQUIVALENCE (C(4),C4)
      EQUIVALENCE (C(5),C5)
      EQUIVALENCE (B(1),B1(1))
      EQUIVALENCE (D(1),A1),(D(91),E(1))
      DO 1 I=11,90
1     D(I)=I
       A1=2.0
      DO 10 I=1,10
10     A(I)=D(20)
      C1=2.0
      C1=2.0
       A2=1.0
       IF(A3.GT.5000) GOTO 101
       DO 20 I=1,5
20      B(I)=B5
       A3=1
       B1(2)=1
101    E(1)=0.6
       DO 30 I=1,6
30      D(I)=A(1)+B(1)
       B(10)=7
       IF(A(1).EQ.9) C(2)=1
       DO 40 I=1,5
 40     C(I)=I
       B(8)=0
        C(5)=0
        D(1)=0
        WRITE(6,*) A,B,C,D,E
        RETURN
        END

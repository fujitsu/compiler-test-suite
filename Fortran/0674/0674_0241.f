      PROGRAM MAIN
      REAL*4  A(2011,10),B(2011,10)
      DATA  A/20110*1.5/,B/20110*2.5/
      CALL SUB1(A,B)
      CALL SUB2(A,B)

      STOP
      END
      SUBROUTINE SUB1(A,B)
      REAL*4 A(2011,10),B(2011,10)

      DO 10 J=1,1
      DO 10 I=1,2011
        A(I,J)=B(I,J)+2.5
10    CONTINUE

      DO 20 J=2,3
      DO 20 I=1,2011
        B(I,J)=A(I,J)+5.0+I
20    CONTINUE

      DO 30 J=4,6
      DO 30 I=1,2011
        A(I,J)=B(I,J)+A(I,J)+I+2
30    CONTINUE

      DO 40 J=7,10
      DO 40 I=1,2011
        A(I,J)=B(I,J)-A(I,J)+I+2
40    CONTINUE

      DO 50 J=3,7
      DO 50 I=1,2011,2
        A(I,J)=B(I,1)+A(I,J+1)+I+B(1,J)
50    CONTINUE

      DO 60 J=1,6
      DO 60 I=8,2011
        B(I,J)=A(I,J)+1.5+B(I-3,7)+B(I,7)+B(1,J)
60    CONTINUE

      DO 70 J=1,7
      DO 70 I=2011,1,-2
        A(I,J)=B(I,J)+1.0
70    CONTINUE

      DO 80 J=2,9
      DO 80 I=1,2011,2
        A(I,J)=B(I,J)+A(I,J)+1.
80    CONTINUE

      DO 90 J=1,9
      DO 90 I=1,2011,9
        A(I,J)=B(J,J)+A(I,J)
90    CONTINUE

      DO 100 J=1,10
      DO 100 I=10,19
        A(I,MIN(10,J+10))=B(I+10,J)*10+A(I+10,MIN(10,J+10))+10
100   CONTINUE

      WRITE(6,*) ' ITEM1 '
      WRITE(6,*) A,B
      RETURN
      END
      SUBROUTINE SUB2(A,B)
      REAL*4 A(2011,10),B(2011,10)
      DATA N1/1/,N2/2/,N3/3/,N4/4/,N5/5/,N6/6/,N7/7/,N8/8/
      DATA N9/9/,N10/10/

      DO 10 J=1,N1
      DO 10 I=1,2011
        A(I,J)=B(I,J)+2.5
10    CONTINUE

      DO 20 J=N2,N3
      DO 20 I=1,2011
        B(I,J)=A(I,J)+5.0+I
20    CONTINUE

      DO 30 J=N4,N6
      DO 30 I=1,2011
        A(I,J)=B(I,J)+A(I,J)+I+2
30    CONTINUE

      DO 40 J=N7,N10
      DO 40 I=1,2011
        A(I,J)=B(I,J)-A(I,J)+I+2
40    CONTINUE

      DO 50 J=N3,N7
      DO 50 I=1,2011,2
        A(I,J)=B(I,1)+A(I,J+1)+I+B(1,J)
50    CONTINUE

      DO 60 J=N1,N6
      DO 60 I=8,2011
        B(I,J)=A(I,J)+1.5+B(I-3,7)+B(I,7)+B(1,J)
60    CONTINUE

      DO 70 J=N1,N7
      DO 70 I=2011,1,-2
        A(I,J)=B(I,J)+1.0
70    CONTINUE

      DO 80 J=N2,N9
      DO 80 I=1,2011,2
        A(I,J)=B(I,J)+A(I,J)+1.
80    CONTINUE

      DO 90 J=N1,N9
      DO 90 I=1,2011,9
        A(I,J)=B(J,J)+A(I,J)
90    CONTINUE

      DO 100 J=N1,N10
      DO 100 I=10,19
        A(I,J)=B(I+N10,J)*N10+A(I+10,J)+N10
100   CONTINUE

      WRITE(6,*) ' ITEM2 '
      WRITE(6,*) A,B
      RETURN
      END

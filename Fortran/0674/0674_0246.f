      PROGRAM MAIN
      REAL*4  A(2011,10)
      REAL*8 B(2011,10)
      DO 1 J=1,10
      DO 1 I=1,2011
        A(I,J)=I
1       B(I,J)=I+1.0
      CALL SUB1(A,B)

      STOP
      END
      SUBROUTINE SUB1(A,B)
      REAL*4 A(2011,10)
      REAL*8 B(2011,10)

      DO 10 J=1,1
      DO 10 I=1,2011
        A(I,J)=B(I,J)+2.5+B(I+0,J+0)+0.0
10    CONTINUE
      WRITE(6,*) A(1,1),A(2011,1),A(1000,1),A(2,2)

      DO 20 J=2,3
      DO 20 I=1,2011
        B(I,J+2)=A(I,J)+5.0+I+B(I,J+1)+A(I,J+1)
20    CONTINUE
      WRITE(6,*) B(2,1),B(2011,2),B(1000,2)
      WRITE(6,*) B(3,1),B(2011,3),B(1000,3)

      DO 30 J=4,6
      DO 30 I=1,2011
        A(I,J)=B(I,J)+A(I,J)+I+2+B(I,J+1)+B(I,J+2)+B(I,J+3)+A(I,J+2)
30    CONTINUE
      WRITE(6,*) A(1,2),A(2011,4),A(1001,4)
      WRITE(6,*) A(1,3),A(2011,5),A(1001,5)
      WRITE(6,*) A(1,4),A(2011,6),A(1001,6)

      DO 40 J=2,5
      DO 40 I=1,2011
        A(I,J)=B(I,J)-A(I,J)+I+2+A(I,J+1)+A(I,J+2)+A(I,J+3)+
     1         B(I,J)*0.5+B(I,J+1)+B(I,J+2)+B(I,J+3)-B(I,J+4)
40    CONTINUE
      WRITE(6,*) A(4,1),A(2011,4),A(1000,4)
      WRITE(6,*) A(5,1),A(2011,5),A(1000,5)
      WRITE(6,*) A(6,1),A(2011,6),A(1000,6)

      DO 50 J=3,7
      DO 50 I=1,2011,2
        A(I,J)=B(I,1)+A(I,J+1)+I+B(1,J)+B(I,J+1)+A(I,J-1)+A(I,J+1)+
     1         A(I,J+2)+A(I,J+3)-A(I,J-2)+B(I,J-2)+B(I,J+0)
50    CONTINUE
      WRITE(6,*) A(1,1),A(2011,3),A(1001,3)
      WRITE(6,*) A(1,2),A(2011,4),A(1001,4)
      WRITE(6,*) A(1,3),A(2011,5),A(1001,5)
      WRITE(6,*) A(1,4),A(2011,6),A(1001,6)
      WRITE(6,*) A(1,5),A(2011,7),A(1001,7)

      DO 60 J=1,6
      DO 60 I=8,2011
        B(I,J)=A(I,J)+1.5+B(I-3,7)+B(I,7)+B(1,J)
     1         +B(1,J+1)+B(1,J+2)+B(2,J+2)+B(1,J+3)+B(1,J+4)
     2                  +A(I,J+1)+A(I,J+2)+A(I,J+3)+A(I,J+4)
60    CONTINUE
      WRITE(6,*) (B(8,I),I=1,6)
      WRITE(6,*) (B(118,I),I=1,6)
      WRITE(6,*) (B(2010,I),I=1,6)
      WRITE(6,*) (B(2011,I),I=1,6)

      DO 70 J=1,4
      DO 70 I=2011,1,-2
        A(I,J)=B(I,J)+1.0+
     1         A(I,J+1)+B(I,J+1)+
     1         A(I,J+2)+B(I,J+2)+
     1         A(I,J+3)+B(I,J+3)+
     1         A(I,J+4)+B(I,J+4)+
     1         A(I,J+5)+B(I,J+5)+
     1         A(I,J+6)+B(I,J+6)+
     1         (I+1)+(I+2)+(I+3)+(I+4)+(I+5)+(I+6)
70    CONTINUE
      WRITE(6,*) (A(2011,I),I=1,7),A(2009,3)

      DO 80 J=2,4
      DO 80 I=1,2011,2
        A(I,J)=B(I,J)+A(I,J)+1.+(
     1         A(I,J+1)+B(I,J+1)+
     1         A(I,J+2)+B(I,J+2)+
     1         A(I,J+3)+B(I,J+3)+B(I,J)+
     1         A(I,J+4)+B(I,J+4)+
     1         A(I,J+5)+B(I,J+5)+
     1         A(I,J+6)+B(I,J+6)+
     1         A(I,J+6)+B(I,J+6))
80    CONTINUE
81    WRITE(6,*)A

      DO 90 J=1,2
      DO 90 I=1,2011,9
        A(I,J)=B(J,J)+A(I,J)
        A(I,J+1)=B(J+1,J+1)+A(I,J+8)
        A(I,J+2)=B(J+2,J+1)+A(I,J+7)
        A(I,J+3)=B(J+3,J+1)+A(I,J+6)
        A(I,J+4)=B(J+4,J+1)+A(I,J+5)
        A(I,J+5)=B(J+5,J+1)+A(I,J+4)
        A(I,J+6)=B(J+6,J+1)+A(I,J+3)
        A(I,J+7)=B(J+7,J+1)+A(I,J+2)
        A(I,J+8)=B(J+8,J+1)+A(I,J+1)
90    CONTINUE
         WRITE(6,*) A

      DO 100 J=2,3
      DO 100 I=10,19
        A(I,J+7)=B(I+7,J)*7+A(I+7,J+7)+7
        A(I,J+6)=B(I+6,J)*6+A(I+6,J+6)+6
        A(I,J+5)=B(I+5,J)*5+A(I+5,J+5)+5
        A(I,J+4)=B(I+4,J)*4+A(I+4,J+4)+4
        A(I,J+3)=B(I+3,J)*3+A(I+3,J+3)+3
        A(I,J+2)=B(I+2,J)*2+A(I+2,J+2)+2
        A(I,J+1)=B(I+1,J)*1+A(I+1,J+1)+1
100   CONTINUE

      WRITE(6,*) ' ITEM1 '
      WRITE(6,*) A,B
      RETURN
      END
      SUBROUTINE SUB2(A,B)
      REAL*4 A(2011,10)
      REAL*8 B(2011,11)
      DATA N1/1/,N2/2/,N3/3/,N4/4/,N5/5/,N6/6/,N7/7/,N8/8/
      DATA N9/9/,N10/10/

      DO 10 J=1,N1
      DO 10 I=1,2011
        A(I,J)=B(I,J)+2.5+B(I+0,J+0)+0.0
10    CONTINUE
      WRITE(6,*) A(1,1),A(2011,1),A(1000,1),A(2,2)

      DO 20 J=N2,N3
      DO 20 I=1,2011
        B(I,J)=A(I,J)+5.0+I+B(I,J+1)+A(I,J+1)
20    CONTINUE
      WRITE(6,*) B(1,2),B(2011,2),B(1000,2)
      WRITE(6,*) B(1,3),B(2011,3),B(1000,3)

      DO 30 J=N4,N6
      DO 30 I=1,2011
        A(I,J)=B(I,J)+A(I,J)+I+2+B(I,J+1)+B(I,J+2)+B(I,J+3)+A(I,J+2)
30    CONTINUE
      WRITE(6,*) A(1,4),A(2011,4),A(1000,4)
      WRITE(6,*) A(1,5),A(2011,5),A(1000,5)
      WRITE(6,*) A(1,6),A(2011,6),A(1000,6)

      DO 40 J=N3,N6
      DO 40 I=1,2011
        A(I,J)=B(I,J)-A(I,J)+I+2+A(I,J+1)+A(I,J+2)+A(I,J+3)+
     1         B(I,J)*0.5+B(I,J+1)+B(I,J+2)+B(I,J+3)-B(I,J+4)
40    CONTINUE
      WRITE(6,*) A(1,4),A(2011,4),A(1000,4)
      WRITE(6,*) A(1,5),A(2011,5),A(1000,5)
      WRITE(6,*) A(1,6),A(2011,6),A(1000,6)

      DO 50 J=N3,N7
      DO 50 I=1,2011,N2
        A(I,J)=B(I,1)+A(I,J+1)+I+B(1,J)+B(I,J+1)+A(I,J-1)+A(I,J+1)+
     1         A(I,J+2)+A(I,J+3)-A(I,J-2)+B(I,J-2)+B(I,J+0)
50    CONTINUE
      WRITE(6,*) A(1,1),A(2011,3),A(1001,3)
      WRITE(6,*) A(1,2),A(2011,4),A(1001,4)
      WRITE(6,*) A(1,3),A(2011,5),A(1001,5)
      WRITE(6,*) A(1,4),A(2011,6),A(1001,6)
      WRITE(6,*) A(1,5),A(2011,7),A(1001,7)

      DO 60 J=N1,N3+1
      DO 60 I=8,2011
        B(I,J)=A(I,J)+1.5+B(I-3,6)+B(I,6)+B(1,J)
     1         +B(1,J+1)+B(1,J+2)+B(2,J+2)+B(1,J+3)+B(1,J+4)
     2         +B(1,J+5)+A(I,J+1)+A(I,J+2)+A(I,J+3)+A(I,J+4)+A(I,J+5)
60    CONTINUE
      WRITE(6,*) (B(8,I),I=1,6)
      WRITE(6,*) (B(118,I),I=1,6)
      WRITE(6,*) (B(2010,I),I=1,6)
      WRITE(6,*) (B(2011,I),I=1,6)

      DO 70 J=N2-1,N2
      DO 70 I=2011,1,-2
        A(I,J)=B(I,J)+1.0+
     1         A(I,J+1)+B(I,J+1)+
     1         A(I,J+2)+B(I,J+2)+
     1         A(I,J+3)+B(I,J+3)+
     1         A(I,J+4)+B(I,J+4)+
     1         A(I,J+5)+B(I,J+5)+
     1         A(I,J+6)+B(I,J+6)+
     1         (I+1)+(I+2)+(I+3)+(I+4)+(I+5)+(I+6)
70    CONTINUE
      WRITE(6,*) (A(2011,I),I=1,7),A(2009,3)

      DO 80 J=N10-N8,N2+1
      DO 80 I=1,2011,2
        A(I,J)=B(I,J)+A(I,J)+1.+(
     1         A(I,J+1)+B(I,J+1)+
     1         A(I,J+2)+B(I,J+2)+
     1         A(I,J+3)+B(I,J+3)+B(I,J)+
     1         A(I,J+4)+B(I,J+4)+
     1         A(I,J+5)+B(I,J+5)+
     1         A(I,J+6)+B(I,J+6)+
     1         A(I,J+7)+B(I,J+7))
80    CONTINUE
81    WRITE(6,*)A

      DO 90 J=N1,N9+1-N1
      DO 90 I=1,2011,9
        A(I,J)=B(J,J)+A(I,J)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
        A(I,J+1)=B(J+1,J+1)+A(I,J+1)
90    CONTINUE
         WRITE(6,*) A

      DO 100 J=N10-N9,N1+N2+N3+N4
      DO 100 I=10,19
        A(I,10)=B(I+10,J)*10+A(I+10,10)+10
        A(I,9)=B(I+9,J)*9+A(I+9,9)+9
        A(I,8)=B(I+8,J)*8+A(I+8,8)+8
        A(I,7)=B(I+7,J)*7+A(I+7,7)+7
        A(I,6)=B(I+6,J)*6+A(I+6,6)+6
        A(I,5)=B(I+5,J)*5+A(I+5,5)+5
        A(I,4)=B(I+4,J)*4+A(I+4,4)+4
        A(I,3)=B(I+3,J)*3+A(I+3,3)+3
        A(I,2)=B(I+2,J)*2+A(I+2,2)+2
        A(I,1)=B(I+1,J)*1+A(I+1,1)+1
100   CONTINUE

      WRITE(6,*) ' ITEM2 '
      WRITE(6,*) A,B
      RETURN
      END

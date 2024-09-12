      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/,K/5/,L/8/
      DATA A/400*3/,B/400*1/,C/400*5/
      CALL INIT(A,400,B,400,C,400)
      DO 10 J=1,10
       DO 10 I=1,N
        B(I,J)=C(I,J)+2.
  10   CONTINUE
      DO 11 J=1,11
       DO 11 I=1,10,2
        B(I,J)=C(I,J)+3.
  11   CONTINUE
100   CONTINUE
101   DO 12 J=1,N
102    DO 12 I=1,N
103     A(I,J)=C(I,J)+0.
  12   CONTINUE
104   CONTINUE
      IF(A(1,1).GT.-100.) GOTO 200
      IF(A(2,2).GT.-100.) GOTO 201
      IF(A(2,1).GT.-101.) GOTO 204
200   CONTINUE
201   DO 13 J=1,N,3
202    DO 13 I=1,N,2
203     A(I,J)=C(I,J)+1.
  13   CONTINUE
204   CONTINUE
300   CONTINUE
301   DO 14 J=1,N,2
302    DO 14 I=1,N,3
303     A(I,J)=C(I,J)+2.
  14   CONTINUE
304   CONTINUE
      IF(B(1,1).LE.-100.) GOTO 300
      IF(B(2,2).LE.-100.) GOTO 301
      IF(B(2,1).LE.-101.) GOTO 304
      WRITE(6,*) A,B,C
      STOP
      END
      SUBROUTINE INIT(A,N1,B,N2,C,N3)
      REAL*4 A(N1),B(N2),C(N3)
      DO 10 I=1,N1
10    A(I)=FLOAT(I)
      DO 20 I=1,N2
20    B(I)=FLOAT(I/10)
      DO 30 I=1,N3
30    C(I)=FLOAT(I*10)
      RETURN
      END

      PROGRAM MAIN
      IMPLICIT REAL*8(A-D),LOGICAL*4(L)
      DIMENSION  DA10(50,50),DA20(50,50),DA30(50,50),DA40(50,50),
     *           LD10(50,50),LD20(50,50)
      DATA     DA10/2500*1.0D0/,DA20/2500*2.0D0/
      DATA     DA30/2500*3.0D0/,DA40/2500*4.0D0/
      DATA     LD10/2500*.FALSE./,LD20/2500*.FALSE./
      DATA     NN/50/
      DO 10 J=1,10
      DO 11 I=1,10
11     DA10(I,J)=J
10    CONTINUE
      DO 20 J=11,20
      DA10(15,21)=1.
      DO 21 I=11,20
21     DA10(I,J)=DA10(I,J)+1.
20    CONTINUE
      DO 30 J=21,30
      DA10(25,11)=1.
      DO 31 I=21,30
31     DA10(I,J)=DA10(I,J)+1.
      DA10(25,11)=2.
30    CONTINUE
      DO 40 J=41,50
      DO 41 I=41,50
41     DA10(I,J)=J
      DO 42 I=41,50
42     DA10(I,J)=DA10(I,J)+1.
40    CONTINUE
      DO 50 J=1,10
      DO 51 I=1,10
51     DA10(I,J)=DA10(I,J)+1.
      DO 52 I=1,10
52     DA20(I,J)=DA20(I,J)+1.
50    CONTINUE
      DO 60 J=11,20
      DA20(15,21)=2.
      DO 61 I=11,20,2
61     DA10(I,J)=DA10(I,J)+2.
      DO 62 I=11,20
62     DA20(I,J)=DA20(I,J)+2.
60    CONTINUE
      WRITE(6,*) ' ITEM 1 ',DA10,DA20
      DO 70 J=1,10
      IF(DA30(2,1).GT.5.0) THEN
      DO 71 I=1,10,2
71     DA10(I,J)=DA10(I,J)+2.
      ENDIF
      DO 72 I=1,10
72     DA20(I,J)=DA20(I,J)+2.
70    CONTINUE
      DO 80 J=11,20
      IF(J+DA20(13,21).GT.17)          THEN
      DO 81 I=11,20
81     DA10(I,J)=DA20(11,18)
      ENDIF
      DO 82 I=11,20
82     DA20(I,J)=DA20(I,J)+2.
      DO 83 I=11,20,2
83     DA20(I,J)=DA20(I,J)+3.
80    CONTINUE
      WRITE(6,*) ' ITEM 2 ',DA10,DA20
      DO 100 J=1,20
      DO 101 I=1,20
       DA20(I,1)=DA20(I,1)-5.
       DA20(I,2)=DA20(I,1)-5.
       DA20(I,3)=DA20(I,1)-5.
       DA20(I,4)=DA20(I,1)-5.
       DA20(I,2)=DA20(I,1)-5.
101    DA20(I,3)=DA20(I,1)-5.
      DO 102 I=1,20
102    DA20(I,J)=DA20(I,J)+100.
100   CONTINUE
      DO 110 J=1,20
      DO 111 I=1,20
       DA20(I,1)=DA20(I,5)-5.
       DA20(I,2)=DA20(I,1)-5.
       DA20(I,3)=DA20(I,6)-5.
       DA20(I,4)=DA20(I,7)-5.
       DA20(I,2)=DA20(I,8)-5.
111    DA20(I,3)=DA20(I,9)-5.
      DO 112 I=21,30
112    DA20(I,J)=DA20(I,J)+100.
110   CONTINUE
      WRITE(6,*) ' ITEM 3 ',DA10,DA20
      STOP
      END

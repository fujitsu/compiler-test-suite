      PROGRAM MAIN
      IMPLICIT REAL*8(A-D),LOGICAL*4(L)
      DIMENSION  DA10(50,50),DA20(50,50),DA30(50,50),DA40(50,50),
     *           LD10(50,50),LD20(50,50)
      DATA     DA10/2500*1.0D0/,DA20/2500*2.0D0/
      DATA     DA30/2500*3.0D0/,DA40/2500*4.0D0/
      DATA     LD10/2500*.FALSE./,LD20/2500*.FALSE./
      DATA     NN/50/
      CALL SUB(DA10(1,1))
      J=1
      DO 11 I=1,10
11     DA10(I,J)=J
      DO 21 I=11,20
21     DA10(I,J)=DA10(I,J)+1.
      DO 31 I=21,30
31     DA10(I,J)=DA10(I,J)+1.
      CALL SUB(DA10(1,1))
      DA10(25,11)=2.
      DO 40 J=1,10
41     DA10(I,1)=J+DA20(I,1)
42     DA10(I,2)=DA10(I,2)+1.
40    CONTINUE
      DO 51 I=1,10
51     DA10(I,2)=DA10(I,3)+1.
      DO 52 I=1,10
52     DA20(I,1)=DA20(I,2)+1.
50    CONTINUE
        CALL  SUB(DA20(10,10))
      DO 60 J=11,20
      CALL SUB(DA20(1,12))
      CALL SUB(DA10(1,12))
      DO 61 I=11,20,2
61     DA10(I,J)=DA20(I,J)+2.
      DO 62 I=11,20
62     DA20(I,J)=DA10(I,J)+1.5
60    CONTINUE
      WRITE(6,*) ' ITEM 1 ',DA10,DA20
      DO 70 J=1,10
      CALL SUB(DA20(1,10))
      CALL SUB(DA10(1,10))
      IF(DA30(2,1).GT.5.0) THEN
      DO 71 I=1,10,2
71     DA10(I,J)=DA10(I,J)+2.
      ENDIF
      DO 72 I=1,10
72     DA20(I,J)=DA20(I,J)+2.
70    CONTINUE
      DO 80 J=11,20
      CALL SUB(DA20(1,15))
      CALL SUB(DA10(1,15))
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
      CALL SUB(DA20(1,15))
      CALL SUB(DA10(1,15))
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
      CALL SUB(DA20(1,15))
      CALL SUB(DA10(1,15))
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
      SUBROUTINE SUB(A)
      REAL*8 A
      A=1.
      RETURN
      END
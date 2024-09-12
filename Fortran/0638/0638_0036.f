       INTEGER * 4 G(20,20)/400*1/ ,N/1/
       REAL    * 4 L(20,20)/400*2.0/
       REAL    * 8 S(20,2000)/40000*1.0/
       COMMON /BLK1/ BS2
       COMMON /BLK2/ BS3
       COMMON /BLK3/ BS4
       COMMON /BLK4/ BS5
       COMMON /BLK5/ BS6
       COMMON /BLK6/ BS7
       COMMON /BLK7/ BS8
       COMMON /BLK8/ BS9
       COMMON /BLK9/ BS10
       COMMON /BLK10/ BG1,BG2
       INTEGER*4 BG1(20),BG2(20)
       INTEGER * 4 BS2(20),BS3(20),BS4(20),BS5(20)
       INTEGER * 4 BS6(20),BS7(20),BS8(20),BS9(20),BS10(20),BS1(20)
       INTEGER * 4 BS(20,20,5)/2000*2/
       REAL    * 8 NB(10,10)/100*1/
       DATA BS1/20*2/
       DO 10 J=1,20,2
       DO 10 I=1,20,2
         G(I,J)=0
10     CONTINUE
       DO 21 K=15,20
       DO 21 J=10,12
       DO 20 I=1 ,20
         KK=1+N+J
         L(I,KK)=0.0
20     CONTINUE
         WRITE(6,*) K,KK
21     CONTINUE
       DO 30 J=10,20
         I1=J*2
         I2=J+2
         I3=J-2
         I4=J/2
         DO 30 I=1,20,5
           S(I,I)=I1+I2+I3+I4+J
30     CONTINUE
         DO 40 J=1,5
         DO 40 I=1,20,3
           BG2(I)=(BG1(I)+I)+BG1(I)+J
40       CONTINUE
         DO 50 J=1,20
           DO 50 I=1,20
              BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)+
     *                  BS1(I)-BS2(I)+BS3(I)**I-BS4(I)*BS5(I)  +
     *                  BS6(I)-BS7(I)+BS8(I)**I-BS9(I)*BS10(I)
50      CONTINUE
        DO  60 J=6,10
        DO  60 I=1,10,2
           NB(I,J)=0
 60     CONTINUE
        WRITE(6,*) G,L,S(1,1),S(20,2000),S(10,1),BG1,BG2,BS,NB
       STOP
       END
       BLOCK DATA
       COMMON /BLK1/ BS2
       COMMON /BLK2/ BS3
       COMMON /BLK3/ BS4
       COMMON /BLK4/ BS5
       COMMON /BLK5/ BS6
       COMMON /BLK6/ BS7
       COMMON /BLK7/ BS8
       COMMON /BLK8/ BS9
       COMMON /BLK9/ BS10
       COMMON /BLK10/ BG1,BG2
       INTEGER * 4 BG1(20),BG2(20),BS3(20),BS4(20),BS5(20),BS2(20)
       INTEGER * 4 BS6(20),BS7(20),BS8(20),BS9(20),BS10(20)
       DATA BG1/20*100/,BG2/20*1/,BS2/20*9/
       DATA BS3/20*100/,BS4/20*1/,BS5/20*2/,BS6/20*9/
       DATA BS7/20*100/,BS8/20*1/,BS9/20*2/,BS10/20*9/
       END

       INTEGER * 4 G(20,20)/400*1/ ,N/1/ ,INC/20/
       REAL    * 4 L(20,20)/400*2.0/
       REAL    * 8 S(20,20)/400*1.0/
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
       DATA BS1/20*5/
       DO 10 J=1,2
       DO 10 I=1,20,2
         BG1(I)=BG1(I)+(BG2(I)+1)
10     CONTINUE
       DO 20 I=1,INC
        BS2(I)=BS3(I)+BS4(I)+BS5(I)+BS6(I)+BS7(I)+BS8(I)+BS9(I)/BS10(I) 
20     CONTINUE
       WRITE(6,*) 'ITEM1'
       WRITE(6,*)  BG1,BS2

       DO 11 J=1,20,2
       DO 11 I=1,20,2
         G(I,J)=0
11     CONTINUE
       DO 22 K=15,20
       DO 22 J=10,12
       DO 21 I=1 ,20
         KK=1+N+J
         L(I,KK)=0.0
21     CONTINUE
         WRITE(6,*) K,KK
22     CONTINUE
       DO 31 J=10,20
         I1=J*2
         I2=J+2
         I3=J-2
         I4=J/2
         DO 31 I=1,20,I4
           S(I,I)=I1+I2+I3+I4+J
31     CONTINUE
         DO 41 J=1,1
         DO 41 I=1,20,3
           BG2(I)=(BG1(I)+I)+BG1(I)+J
41       CONTINUE
         DO 51 J=1,2
           DO 51 I=1,20
              BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)+
     *                  BS1(I)-BS2(I)+BS3(I)**I-BS4(I)*BS5(I)  +
     *                  BS6(I)-BS7(I)+BS8(I)**I-BS9(I)*BS10(I)
51      CONTINUE
        DO  61 J=6,10
        DO  61 I=1,10,2
           NB(I,J)=0
 61     CONTINUE
        WRITE(6,*) 'ITEM2'
        WRITE(6,*) G,L,S,BG1,BG2,BS,NB,BS2
       DO 310 JJ=1,2
       DO 310 J=1,10,2
       DO 310 I=1,20,2
         G(I,J)=(G(I,J)+10)/I
310    CONTINUE
       DO 330 J=10,20
         I1=J*2
         I2=J+2
         I3=J-2
         I4=J/2
         DO 330 I=1,20,I4
           S(I,I)=(I1+I2+I3+I4+J)/I
330     CONTINUE
         DO 340 J=1,1
         DO 340 I=1,20,3
           BG2(I)=((BG1(I)+I)+BG1(I)+J)/I
340       CONTINUE
         DO 350 J=1,20
           DO 350 I=1,20
              BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)+
     *                  BS1(I)-BS2(I)+BS3(I)**I-BS4(I)*BS5(I)  +
     *                  BS6(I)-BS7(I)+BS8(I)**I-BS9(I)*BS10(I)*J/I
350      CONTINUE
        DO  360 J=6,10
        DO  360 I=1,10,2
           NB(I,J)=J/I
360     CONTINUE
        WRITE(6,*) 'ITEM3'
        WRITE(6,*) G,L,S,BG1,BG2,BS,NB
       DO 410 JJ=1,2
       DO 410 J=1,20,2
       DO 410 I=1,20,2
         G(I,J)=(G(I,J)+10)
410    CONTINUE
       DO 430 J=10,20
         I1=J*2
         I2=J+2
         I3=J-2
         I4=J/2
         DO 430 I=1,20,3
           S(I,I)=(I1+I2+I3+I4+J)
430     CONTINUE
         DO 440 J=1,5
         DO 440 I=1,20,3
           BG2(I)=((BG1(I)+I)+BG1(I)+J)
440       CONTINUE
         DO 450 J=1,20
           DO 450 I=1,20
              BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)+
     *                  BS1(I)-BS2(I)+BS3(I)**I-BS4(I)*BS5(I)  +
     *                  BS6(I)-BS7(I)+BS8(I)**I-BS9(I)*BS10(I)*J
450      CONTINUE
        DO  460 J=6,10
        DO  460 I=1,10,2
           NB(I,J)=J/I
460     CONTINUE
        WRITE(6,*) 'ITEM4'
        WRITE(6,*) G,L,S,BG1,BG2,BS,NB
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

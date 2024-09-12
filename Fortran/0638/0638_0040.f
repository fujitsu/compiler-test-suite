       INTEGER * 4 G(20,20)/400*1/ ,N/20/
       REAL    * 4 L(20,20)/400*2.0/
       REAL    * 8 S(20,20)/400*1.0/
       COMMON /BLK1/ BG1,BG2
       COMMON /BLK2/ BS1
       COMMON /BLK3/ BS2
       COMMON /BLK4/ BS3
       COMMON /BLK5/ BS4
       COMMON /BLK6/ BS5
       COMMON /BLK7/ BS6
       COMMON /BLK8/ BS7
       COMMON /BLK9/ BS8
       COMMON /BLK10/ BS9,BS10
       INTEGER * 4 BG1(20),BG2(20)
       INTEGER*4 BS1(20),BS2(20),BS3(20),BS4(20),BS5(20),BS6(20)
       INTEGER*4 BS7(20),BS8(20),BS9(20),BS10(20)
       REAL    * 4 BS(20,20,5)/2000*2.0/
       REAL    * 8 NB(10,10)/100*1/
       DO 10 J=1,20,2
       DO 10 I=1,N,2
         G(I,J)=G(I,J)+2
10     CONTINUE
       DO 30 J=10,20
         I1=J*2
         I2=J+2
         I3=J-2
         I4=J/2
         DO 30 I=1,N,2
           S(I,J)=S(I,J)*3+S(I,J)+3+S(I,J)+I4+S(I,J)+I1+I2+I3
30     CONTINUE
         DO 40 I=1,20,3
           BG2(I)=(BG1(I)+I)+BG2(20)
40       CONTINUE
         DO 50 J=1,5
           DO 50 I=1,N
              BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)-
     *                  BS1(I)+BS2(I)-BS3(I)+BS4(I)+BS5(I)+
     *                  BS6(I)+BS7(I)-BS8(I)+BS9(I)+BS10(I)
50      CONTINUE
        DO  60 J=6,10
        DO  60 I=1,N-10,2
           NB(I,J)=NB(I,J)+1
 60     CONTINUE
        WRITE(6,*) G,L,S,BG1,BG2,BS,NB
       STOP
       END
       BLOCK DATA
       COMMON /BLK1/ BG1,BG2
       COMMON /BLK2/ BS1
       COMMON /BLK3/ BS2
       COMMON /BLK4/ BS3
       COMMON /BLK5/ BS4
       COMMON /BLK6/ BS5
       COMMON /BLK7/ BS6
       COMMON /BLK8/ BS7
       COMMON /BLK9/ BS8
       COMMON /BLK10/ BS9,BS10
       INTEGER * 4 BG1(20),BG2(20)
       INTEGER*4 BS1(20),BS2(20),BS3(20),BS4(20),BS5(20),BS6(20)
       INTEGER*4 BS7(20),BS8(20),BS9(20),BS10(20)
       DATA BG1/20*1/,BG2/20*1/,BS1/20*1/,BS2/20*2/,BS3/20*10/
       DATA BS4/20*1/,BS5/20*1/,BS6/20*1/,BS7/20*2/,BS8/20*10/
       DATA BS9/20*1/,BS10/20*1/
       END

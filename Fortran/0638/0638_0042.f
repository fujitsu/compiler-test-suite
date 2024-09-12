       INTEGER*4   IL(10)/2,4,5,7,9,10,1,3,6,8/
       INTEGER * 4 G1(10)/1,2,3,4,5,6,7,8,9,10/
       INTEGER * 4 G2(10)/1,2,3,4,5,6,7,8,9,10/
       INTEGER * 4 S1(10)/1,2,3,4,5,6,7,8,9,10/
       INTEGER*4   N/10/
       REAL*4      S2(10)/10*4.0/
       REAL*8      S3(10)/10*10.0/
       COMPLEX*8   S4(10)/10*(1.0,1.0)/
       COMPLEX*16  S5(10)/10*(2.0,2.0)/
       INTEGER * 4 S9(10)/1,2,3,4,5,6,7,8,9,10/
       COMMON /BLK/ BG2,BG1
       INTEGER * 4 BG1(10),BG2(10)
       COMMON /BLK1/ SB1,SB2,SB3,SB4,SB5,SB6,SB7,SB8,SB9,SB10
       REAL    * 8 NB(10)/10*1/
       INTEGER*4 SB1(10),SB2(10),SB3(10),SB4(10),SB5(10)
       INTEGER*4 SB6(10),SB7(10),SB8(10),SB9(10),SB10(10)

       DO 1  I=1,10
         BG1(I)=I
         BG2(I)=I
         SB1(I)=I
         SB2(I)=I
         SB3(I)=I
         SB4(I)=I
         SB5(I)=I
         SB6(I)=I
         SB7(I)=I
         SB8(I)=I
         SB9(I)=I
         SB10(I)=I
1      CONTINUE

       DO 10 J=1,20,2
       DO 10 I=2,N,2
         G1(IL(I))=I
         G2(IL(I))=G2(IL(I))
10     CONTINUE
       DO 20 J=2,N,2
       DO 20 I=2,N,2
         S1(IL(I))=S2(IL(I))+2
         S2(IL(I))=FLOAT(I)+2
         S3(IL(I))=DFLOAT(J)+2
         S4(IL(I))=S2(IL(I))
         S5(IL(I))=S2(IL(I))
20     CONTINUE
       DO 40 J=1,20,2
       DO 40 I=2,N,2
         G1(BG1(I))=G1(BG1(I))+1
         G2(BG1(I))=G2(BG2(I))+2
40     CONTINUE
       DO 50 J=2,N,2
       DO 50 I=2,N,2
         S1(SB1(I))=S2(IL(I))+2+S1(SB1(I))
         S2(SB2(I))=FLOAT(I)+2 +S2(SB2(I))
         S3(SB3(I))=DFLOAT(J)+2+S3(SB3(I))
         S4(SB4(I))=S4(SB4(I))+SB10(I)
         S5(SB5(I))=S5(SB5(I))+SB6(I)+SB7(I)+SB8(I)+SB9(I)+S9(I)
50     CONTINUE
        DO  60 I=1,N-10,2
           NB(IL(I))=NB(IL(I))+1
 60     CONTINUE
        WRITE(6,*)       BG1,BG2,   NB
        WRITE(6,*) SB1,SB2,SB3,SB4,SB5,SB6,SB7,SB8,SB9,SB10
       STOP
       END

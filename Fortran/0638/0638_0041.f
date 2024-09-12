       INTEGER * 4 G ,N/20/
       REAL    * 4 L(20,20)/400*2.0/
       REAL    * 8 SS,S(20,20)/400*1.0/
       COMMON /BLK/ BG2,BG1
       INTEGER * 4 BG1,BG2
       COMMON /BLK1/ BS1,BS2,BS3,BS4,BS5,BS6,BS7,BS8,BS9,BS10
       REAL    * 4 BS(20,20,5)/2000*2.0/
       REAL    * 8 NB/1./
       BG1=N-1

       BG2=N
       G=0
       DO 10 J=1,20,2
       DO 10 I=2,N,2
         G=G+I
10     CONTINUE

       DO 20 J=2,N,2
         L(1,J)=0.
       DO 20 I=2,N,2
         L(1,J)=L(I,J)+FLOAT(I)
20     CONTINUE
       DO 30 J=10,20
         I1=J*2
         I2=J+2
         I3=J-2
         I4=J/2
         SS=0.
         DO 30 I=1,N,N/10
           S(I,J)=S(I,J)*3+S(I,J)+3+S(I,J)+I4+S(I,J)+I1+I2+I3
           SS=SS+DFLOAT(N)
30     CONTINUE
         DO 42 K=1,20,3
         DO 41 J=1,20,3
         DO 40 I=1,20,3
           BG2=BG2+BG1
40       CONTINUE
         WRITE(6,*) BG2
41       CONTINUE
42       CONTINUE
         DO 50 J=1,5
           IF(J.GT.3) THEN
             K=J**2-5
           ELSE
             K=J*2
           ENDIF
           BS1=0
           BS2=0
           BS3=0
           BS4=0
           BS5=0
           BS6=0
           BS7=0
           BS8=0
           BS9=0
           BS10=0
           DO 50 I=1,N
              BS(I,K,1)=BS(I,K,2)+BS(I,K,3)+BS(I,K,4)+BS(I,K,5)
              BS1=BS1+I
              BS2=BS2+I
              BS3=BS3+I
              BS4=BS4+I
              BS5=BS5+I
              BS6=BS6+I
              BS7=BS7+I
              BS8=BS8+I
              BS9=BS9+I
              BS10=BS10+I
50      CONTINUE
        NB=0.0
        DO  60 I=1,N-10,2
           NB=NB+FLOAT(I)
 60     CONTINUE
        WRITE(6,*) G,L,S,BG1,BG2,BS,NB
        WRITE(6,*) BS1,BS2,BS3,BS4,BS5,BS6,BS7,BS8,BS9,BS10
       STOP
       END

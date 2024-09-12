       INTEGER * 4 G(20,20)/400*1/ ,N/20/
       REAL    * 4 L(20,20)/400*2.0/
       REAL    * 8 S(20,20)/400*1.0/
       COMMON /BLK/ BG2
       INTEGER * 4 BG1(20)/20*100/,BG2(20)
       REAL    * 4 BS(20,20,5)/2000*2.0/
       REAL    * 8 NB(10,10)/100*1/
       DO 10 J=1,20,2
          BG2(J)=20
          BG2(J+1)=20
       DO 10 I=1,N,2
         G(I,J)=G(I,I)**I+G(I,I)/I
10     CONTINUE
       DO 30 J=10,20
         I1=J*2
         I2=J+2
         I3=J-2
         I4=J/2
         DO 30 I=1,N,3
           S(I,J)=S(I,J)**J+I1+I2*I3-I4+(S(I,J)/I)+2+(I*3)
30     CONTINUE
         DO 40 I=1,N,3
           BG2(I)=(BG1(I)+I)+BG1(I)/I
40       CONTINUE
         DO 50 J=1,5
           IF(J.GT.3) THEN
             K=J**2-5
           ELSE
             K=J*2
           ENDIF
           DO 50 I=1,N
              BS(I,K,1)=BS(I,K,2)+BS(I,K,3)+BS(I,K,4)+BS(I,K,5)
50      CONTINUE
        DO  60 J=6,10
        DO  60 I=1,N-10,2
           NB(I,J)=0
 60     CONTINUE
        WRITE(6,*) N,G,L,S,BG1,BG2,BS,NB
       STOP
       END

       REAL * 8 DATA1(50),DATA2(50),DATA3(50),DATA4(50),DATA5(50)
       REAL * 8 ANS1(50),ANS2(50),ANS3(50),ANS4(50),ANS5(50)
       LOGICAL * 4 LDATA1(50),LDATA2(50)
       DATA LDATA1/20*.TRUE.,10*.FALSE.,20*.TRUE./
       DATA LDATA2/20*.FALSE.,10*.TRUE.,20*.FALSE./

       DO 10 I=1,50
         DATA1(I) = 1.0
         DATA2(I) = DATA1(I) + 1.0
         DATA3(I) = DATA2(I) + 1.0
         DATA4(I) = DATA3(I) + 1.0
         DATA5(I) = DATA4(I) + 1.0
         NN = I
  10   CONTINUE
       DO 20 I=1,NN
         ANS1(I) = DATA1(I) +DATA2(I)*DATA3(I)/DATA4(I)
         ANS2(I) = (ANS1(I)+DATA1(I))*(ANS1(I)/DATA2(I))
         ANS1(I) = ANS2(I)+ANS1(I)*DATA3(I)
         ANS2(I) = ANS1(I)/ANS1(I)/ANS2(I)/ANS1(I)
  20   CONTINUE
       WRITE(6,*) ANS1,ANS2

       DO 40 I=1,50
         A=I
         DO 50 J=1,50
           ANS1(I) = DATA1(J) + DATA2(J)
           ANS2(J) = DATA3(J) - DATA4(J)
           IF (J.GT.A) GOTO 50
             ANS1(J) = DATA2(J) * DATA3(J)
             ANS2(J) = DATA1(J) / DATA4(J)
   50    CONTINUE
         DO 60 K=1,25,2
           ANS1(K) =  DATA1(K) /DATA2(K) + DATA3(K)
           LDATA2(K) = .NOT.LDATA1(K)
           IF (K.EQ.A)  GOTO 60
             ANS2(K) = DATA3(K) * DATA4(K) * DATA5(K)
             IF (K.EQ.A) GOTO 60
               LDATA2(K) = LDATA1(K)
   60    CONTINUE
   40  CONTINUE
       WRITE(6,*) ANS1,ANS2,LDATA2

       DO 70 I=1,50
         DATA1(I) = DATA1(I) + DATA2(I) + DATA3(I) + DATA4(I)
         ANS1(I) =  DATA1(I)
         DATA2(I) =  DATA1(I) + DATA2(I) + DATA3(I) + DATA4(I)
         IF ( LDATA1(I)) THEN
           ANS3(I) = DATA1(I) / DATA1(I)
         ELSE
           ANS3(I) = DATA2(I) + DATA1(I)
         ENDIF
         IF (LDATA2(I)) THEN
           LDATA2(I) = .NOT.LDATA2(I)
         ENDIF
  70   CONTINUE
       WRITE(6,*) ANS1,ANS2,ANS3

       DO 80 I=1,3
         DO 90 J=1,50
           ANS1(J) = 1.0 + 2.0 + 3.0 + 4.0
           ANS2(J) = ANS1(J) -10.0
           ANS3(J) = ANS2(J) * ANS1(J)
           IF (J.EQ.50) GOTO 90
             ANS1(J) = ANS1(J) + ANS2(J)
             ANS2(J) = ANS1(J) + ANS2(J) - ANS3(J)
               IF (I.EQ.2) GOTO 90
  90    CONTINUE
  80   CONTINUE
       DO 101 I=1,50
         IF (ANS1(I).GT.0.0) GOTO 101
         IF (ANS2(I).GE.1.0) GOTO 102
         IF (ANS3(I).EQ.0.0) GOTO 103
         ANS1(I) = ANS2(I) + 1.0
         ANS2(I) = ANS2(I) - 0.5
         ANS3(I) = ANS1(I) + ANS2(I)
 102     ANS1(I)=DATA1(I)
 103     ANS2(I)=DATA2(I)
 101   CONTINUE
       WRITE(6,*) ANS1,ANS2,ANS3
       STOP
       END

      PROGRAM MAIN
      INTEGER*4  IA(10,10)/100*1./,IB(10)/1,2,3,4,5,6,7,8,9,10/
      REAL   *4  RA(10,10)/100*1./,RB(10,10,10)/1000*1./
      REAL   *8  DA(10,10)/100*1./

      ID=0
      DO 1 I=1,10
 10     IF(IB(I).LE.8) THEN
          GO TO 1
        ELSE
          IF(IB(I).EQ.5) GO TO 1
        ENDIF
        ID=ID+1
        DO 2 J=1,10
 13       IF(IA(I,J).GE.3) GO TO 14
 14         IA(I,J)=I+J+ID
 15         RA(I,J)=IA(I,J)-RA(I,J)
          DO 2 K=1,10
 16         RB(I,J,K)=I+J+K
 18         IF(I.GE.8) GO TO 21
            IF(K.GE.3) GO TO 2
 17         RB(I,J,K)=RB(I,J,K)+1.
  2       IF(K.EQ.5.OR.RB(I,J,K).LE.3.) GO TO 17
             IB(I)=I-1
             GO TO 1
 21       IF(I.EQ.3) GO TO 10
          DA(I,I)=I*I
  1    CONTINUE
 30    WRITE(6,*) 'IA=',IA
       WRITE(6,*) 'IB=',IB
       WRITE(6,*) 'RA=',RA
       WRITE(6,*) 'RB=',RB
       WRITE(6,*) 'DA=',DA

      ID=0
 201  GO TO 100
 200  IF(ID.EQ.5) GO TO 300
        ID=ID+1
        DO 110 I=1,10
          DO 110 J=1,10
            RA(I,J)=2+I+J
110     CONTINUE
       GO TO 200
100   CONTINUE
300   IF(ID.NE.0) GO TO 400
        DO 350 I=1,10
          IF(IB(I).GE.5) THEN
            WRITE(6,*) 'LOOP2'
          ELSE
            GO TO 360
          ENDIF
 310      CONTINUE
          IB(I)=I-1
          GO TO 350
 360      DO 340 J=1,10
            RA(I,J)=RA(I,J)+IB(J)
            IF(J.GE.3) GO TO 322
            GO TO 310
 322        RA(I,J)=0
 340     CONTINUE
         IF(I.EQ.3) GO TO 350
         GO TO 120
 350    CONTINUE

 400   WRITE(6,*) 'IA=',IA
       WRITE(6,*) 'IB=',IB
       WRITE(6,*) 'RA=',RA
       WRITE(6,*) 'RB=',RB
       WRITE(6,*) 'DA=',DA
 120    STOP
        END

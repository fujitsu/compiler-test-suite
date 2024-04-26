      PROGRAM MAIN
      REAL   *4  S1,RA(10),RB(10),S,Y,S3,RC(10),Y1,S4,RD(10),RE(10)
      REAL   *8  DA(10),DB(10)
      INTEGER*4  IA(10)
      REAL   *4  RG(10)
      EQUIVALENCE (RA(1),RB(1),S1),(S,Y),(DIF,RS),(RE(1),RG(1)),
     +            (S3,RC(1)),(Y1,RC(3)),(S4,RD(1))
      DATA RA/10*1.0/,RC/10*1.0/,RD/10*1.0/,RE/10*1./
     +    ,DA/10*1./,DB/10*1./,IA/10*1/
C
      RMX=0.0
      S=S1-1.
      DO 10 I=1,10
         RE(I)=DA(I)*(1.,1.)+DB(I)
         S=S+RE(I)
         IF(Y-5.0) 11,12,13
   11       IA(I)=-1
            GO TO 14
   12       IA(I)=0
            GO TO 14
   13       IA(I)=1
   14    DIF=RE(I)-RMX
         IF(DIF.GT.0) THEN
            RMX=RE(I)
         ENDIF
         IF(RS.EQ.2) THEN
            RE(I)=0.0+DA(I)
         ENDIF
   10 CONTINUE
C
      WRITE(6,*) 'RE=',RE
      WRITE(6,*) 'IA=',IA
      WRITE(6,*) 'S=',S
      WRITE(6,*) 'RMX=',RMX
      STOP
      END

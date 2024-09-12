      PROGRAM MAIN
      LOGICAL*4 LA(10),LB(10)
      INTEGER*4 IA(10),IB(10)
      REAL   *4 RA(10),RB(10),RC(10)
      DATA  LA/10*.TRUE./,LB/10*.TRUE./
      DATA  IA/1,3,4,2,5,6,8,7,9,10/,IB/10*1/
      DATA  RA/10*1./,RB/10*1./,RC/10*1./

      S=0
      DO  10  I= 1,100
        IF(I.LE.10) THEN
          S=S+RC(I)
          RA(IA(I))=RB(I)
          LA(I)=RC(I).GE.RB(I)
          LB(IA(I))=LA(I)
        ENDIF
 10   CONTINUE
      WRITE(6,*) 'LA= ',LA
      WRITE(6,*) 'LB= ',LB
      WRITE(6,*) 'RA= ',RA
      WRITE(6,*) 'RB= ',RB
      WRITE(6,*) 'RC= ',RC
      WRITE(6,*) 'S = ',S
      STOP
      END

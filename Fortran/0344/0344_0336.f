      PROGRAM MAIN
      INTEGER    N/20/,S/-1/,J/2/,JJ/1/,K/2/
      COMPLEX*8  CA(30),CB(30),CC(30)
      COMPLEX*16 CDA(30,30),CDC(30),CDD(30),CDE(30,30),CDF(30),
     +           CDG(30),CDH(30),CDI(30),CDS1
      DATA   CA,CB/30*(1.00,1.00),30*(0.33,0.99)/
      DATA   CDA,CDC,CDD,CDE,CDF,CDG,CDH,CDI/1980*(1.00,1.00)/
      DATA   CDS1/(0.77,0.13)/,CC/30*(1.,1.)/
C
      DO 10 I=2,N
         CDA(J,I) = CDA(J,I+S) ** CDA(J,I+1)
         CDC(I) = CDSIN(CDA(K,K))
         CDI(J) = CDA(J,J)** CDS1
         CDD(I) = CDCOS(CDA(K,K))
         IF(CDE(J,J).EQ.CDA(J,I)) THEN
            CDE(JJ,JJ) = CDE(I,I)
            JJ = JJ + 1
            CDH(I) = CDH(I+K) ** JJ
         ENDIF
         CC(I) = CA(I-1) ** CA(I+1) + CB(I)
         CDF(J) = CDD(I)
         J = J + 1
         CDG(J) = CDE(J,J-K) * CDF(J-1)
   10 CONTINUE
      WRITE(6,*) 'CDC => '
      WRITE(6,100) CDC
      WRITE(6,*) 'CDI => '
      WRITE(6,100) CDI
      WRITE(6,*) 'CDG => '
      WRITE(6,100) CDG
      WRITE(6,*) 'CDH => '
      WRITE(6,100) CDH
      WRITE(6,*) 'CC => '
      WRITE(6,200) CC
  100 FORMAT(1H ,5E15.5)
  200 FORMAT(1H ,5F15.5)
      STOP
      END

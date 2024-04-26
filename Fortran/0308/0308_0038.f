      COMPLEX*8 CA(5),CB(5),CC(5),CD
      COMPLEX*8 CE(5),CF(5),CG(5),CH
      DATA (CA(I),I=1,5)/5*(0.0,0.0)/
     .     ,CB/(1.0,0.1),(2.0,0.2),(3.0,0.3),(4.0,0.4),(5.0,0.5)/
C
      CALL SUB(CE,CF,CG,CH,I,5)
      CC=CSQRT(CMPLX(1.0,0.1))
      CA=CB+CC
      CD=CA(I)
C
      DO 10 I=1,5
        IF(ABS(CA(I) - CE(I)) > 0.1E-7) GOTO 20
        IF(ABS(CB(I) - CF(I)) > 0.1E-7) GOTO 30
   10   IF(ABS(CC(I) - CG(I)) > 0.1E-7) GOTO 40
C
      IF(CD .NE. CH) GOTO 50
C
      WRITE(6,*) 'OK'
      GOTO 60
   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'CA=',CA
      WRITE(6,*) 'CE=',CE
      GOTO 60
   30 WRITE(6,*) 'NG'
      WRITE(6,*) 'CB=',CB
      GOTO 60
   40 WRITE(6,*) 'NG'
      WRITE(6,*) 'CC=',CC
      GOTO 60
   50 WRITE(6,*) 'NG'
      WRITE(6,*) 'CD=',CD
C
   60 STOP
      END
C
      SUBROUTINE SUB(CE,CF,CG,CH,I,K)
      INTEGER*4 I,K
      COMPLEX*8 CE(K),CF(K),CG(K),CH
C
        CE=(0.0,0.0)
        CF(1)=(1.0,0.1)
        CF(2)=(2.0,0.2)
        CF(3)=(3.0,0.3)
        CF(4)=(4.0,0.4)
        CF(5)=(5.0,0.5)
        I=3
C
        CG=CSQRT(CMPLX(1.0,0.1))
        CE=CF+CG
        CH=CE(I)
C
      RETURN
      END

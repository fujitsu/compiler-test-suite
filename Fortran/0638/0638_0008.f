       REAL * 8 DATA1(50),DATA2(50),DATA3(50),DATA4(50),DATA5(50)
       COMPLEX * 16 CDATA1(50),CDATA2(50)
       LOGICAL * 4 LDATA(50)
       DATA DATA2/50*1.1/,DATA3/50*1.3/,DATA4/50*1.5/,DATA5/50*1.1/
       DATA CDATA1/50*(1.5,1.1)/,CDATA2/50*(1.1,3.6)/
       DATA LDATA/20*.TRUE.,30*.FALSE./
       AA = 0
       DO 20 I=1,50
         DATA1(I) = DATA2(I) + DATA3(I) + DATA4(I) + DATA5(I)
         DATA2(I) = DATA1(I) ** 2
         DATA3(I) = DATA2(I)
         DATA4(I) = DATA3(I)
         DATA5(I) = DATA4(I)
  20   CONTINUE
       DO 30 I=1,50
         DATA4(I) = SIN(DATA3(I))
         DATA5(I) = SIN(DATA4(I))
         DATA3(I) = SIN(DATA5(I))
         DATA4(I) = SIN(DATA4(I))
         DATA5(I) = SIN(DATA5(I))
         CDATA1(I)= COS(CDATA1(I))
         CDATA2(I)= COS(CDATA2(I))
 30    CONTINUE
       WRITE(6,999) DATA1,DATA2,DATA3,DATA4,DATA5
       do 998 i=1,50
       WRITE(6,999) real(CDATA1(i)),real(CDATA2(i))
998    WRITE(6,999) imag(CDATA1(i)),imag(CDATA2(i))
       DO 40 I=1,50
         IF(.NOT.LDATA(I)) GOTO 40
         AA=MAX(AA,DATA1(I))
  40     CONTINUE
      WRITE(6,999) AA
999   format(10g20.6)
      STOP
      END

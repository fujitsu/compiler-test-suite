C
      INTEGER       TOTAL
      REAL          R1,R2,RA(10),RW(10)
      COMPLEX       CX1
      WRITE (6,5)
    5 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER  /  )
C
      WRITE (6,10)
   10 FORMAT(1H0 / 11X,39H*** TEST (01) ***   .....  OUTPUT  .... / )
      WRITE (6,15)
   15 FORMAT(1H0,/, 21X,44H(01)     FORMAT(T40,21H1970 INVENTORY REPORT,
     *      40H,80T,9HDECEMBER ,T1,15H  PRT N0. 10095 ) / )
      WRITE (6,20)
   20 FORMAT(T40,21H1970 INVENTORY REPORT,T80,9HDECEMBER ,T1,
     *    15H  PRT NO. 10095 )
      WRITE (6,25)
   25 FORMAT(15H  PRT NO. 10095,24X,21H1970 INVENTORY REPORT,19X,
     *       9HDECEMBER  / )
C
      WRITE (6,30)
   30 FORMAT(1H0 / 21X,44H(02)     FORMAT(1H0,T21,     26HTEST PROGRAM,
     *      55H NUMBER  =  FC,I5,T75,11HCPTOTAL = (,2E15.7,1H),T12, 8H,
     *       9HFORTRAN ) / )
      CX1= (0.1234567E-18,-0.4396E+13)
      TOTAL =21401
      WRITE (6,35) TOTAL,CX1
   35 FORMAT(1H0,T21,24HTEST PROGRAM NUMBER  =  I5,T75,
     *      11HCPTOTAL = (,2E15.7,1H),T12,8HFORTRAN  )
      WRITE (6,40) TOTAL,CX1
   40 FORMAT(11X,33HFORTRAN  TEST PROGRAM NUMBER  =  I5,23X,
     *       11HCPTOTAL = (,2E15.7,1H),15X,1HG / )
C
      WRITE (6,45)
   45 FORMAT(1H0 / 21X,45H(03)     FORMAT(1H0,T36,F15.7,E15.3,21T,E15.7,
     *       1H)  /  )
      R1 =-1.874536
      R2 = 0.4196E+21
      WRITE (6,50) R1,R2,R1
   50 FORMAT(1H0,T36,F15.7,E15.3,T21,E15.7 )
      WRITE (6,55) R1,R1,R2
   55 FORMAT(1H ,19X,E15.7,F15.7,E15.3 )
      WRITE (6,60)
   60 FORMAT(1H1 / )
C
      WRITE (6,65)
   65 FORMAT(1H0,20X,11H+ JUSTICE +,5X,8H+ ITEM +,10X,10H+ ANSWER +,
     *       10X,17H+ COMPARE VALUE + / )
      WRITE (6,70)
   70 FORMAT(1H0,10X,36H*** TEST(02) ***     .... INPUT .... / )
C
      WRITE (6,75)
   75 FORMAT(1H0 / 11X,41H(01)     FORMAT(T1,F5.2,T30,E10.6,T80,I1) / )
      READ (5,82) RW1,RW2,IW1
      CALL  RCHECK (1,RW1,-12.34  )
      CALL  RCHECK (2,RW2,0.876503E+20)
      CALL  ICHECK (3,IW1,3 )
   82 FORMAT (T1,F5.2,T30,E10.6,T80,I1 )
      WRITE (6,80)
   80 FORMAT(1H0 / 11X,44H(02)     FORMAT( T80,T15,F15.6,T3,E10.2 / I5,
     *      11HT20,F10.6 ) / )
      READ (5,85) RW1,RW2,IW1,RW3
   85 FORMAT(T80,T15,F15.6,T3,E10.2 / I5,T20,F10.6 )
      CALL  RCHECK (1,RW1,-0.400602 )
      CALL  RCHECK (2,RW2,0.41628E-15)
      CALL  ICHECK (3,IW1,-76 )
      CALL  RCHECK (4,RW3,0.001003)
C
      WRITE (6,90)
   90 FORMAT(1H0 / 11X,43H(03)     FORMAT(T7,I4,20X,F10.3,T30,F10.4 ) /)
      READ (5,95) IW1,RW1,RW2
   95 FORMAT(T7,I4,20X,F10.3,T30,F10.4 )
      CALL  ICHECK (1,IW1,777 )
      CALL  RCHECK (2,RW1,4653.018)
      CALL  RCHECK (3,RW2,46.5301 )
C
      WRITE (6,100)
  100 FORMAT(1H0 / 11X,39H(04)     FORMAT(T40,'          ' I5,T30,
     *      21H10H          T58,A4 ) / )
      READ (5,105) IW,RW1
  105 FORMAT( T40,10X,I5,T30,10X,T58,A4 )
      WRITE (6,110)
  110 FORMAT(1H0,28X,28H JOB STEP TOTAL  =  12345     )
      WRITE (6,105) IW,RW1
C
      WRITE (6,120)
  120 FORMAT(1H0 / 6X,23H*FORTRAN*          EXIT )
      STOP
      END
      SUBROUTINE  ICHECK (ITEM,IA,IC)
      IF ( IA.EQ.IC ) GO TO 10
      WRITE (6,100) ITEM,IA,IC
      RETURN
   10 WRITE (6,50) ITEM,IA,IC
      RETURN
   50 FORMAT(1H0,22X,7H*OK*   ,9X,1H(,I2,1H),14X,I7,16X,I7 )
  100 FORMAT(1H0,22X,7H*ERROR*,9X,1H(,I2,1H),14X,I7,16X,I7 )
      END
      SUBROUTINE  RCHECK (ITEM,RA,RC)
      DIFF=1.0E-6
      IF (ABS(RC-RA)-ABS(RC)*DIFF) 10,20,20
   10 WRITE (6,50) ITEM,RA,RC
      RETURN
   20 WRITE (6,100) ITEM,RA,RC
      RETURN
   50 FORMAT(1H0,22X,7H*OK*   ,9X,1H(,I2,1H),10X,E14.7,10X,E14.7 )
  100 FORMAT(1H0,22X,7H*ERROR*,9X,1H(,I2,1H),10X,E14.7,10X,E14.7 )
      END
      SUBROUTINE  DCHECK (N,EXEC,ANS )
C
C
      DOUBLE PRECISION  EXEC,ANS,DIFF
      DIFF=1.0D-15
      IF ( N ) 10,100,10
   10 IF ( DABS(ANS-EXEC)-DABS(ANS)*DIFF ) 50,60,60
  100 IF ( DABS(ANS-EXEC)-DIFF ) 50,60,60
   60 WRITE (6,65) EXEC,ANS
   65 FORMAT(1H+,5X,7H*ERROR*,60X,D24.17,3X,D24.17 )
      GO TO 99
   50 WRITE (6,55) EXEC,ANS
   55 FORMAT(1H+,5X,7H*OK*   ,57X,2(3X,D24.17) )
   99 RETURN
      END
C
      DOUBLE PRECISION   DIFF,DX1,DX2,DX3,DX4,DX5,DX6,DX7,W1,W2,W3,W4,
     *         W5,W6,W7,W8,DX8,DX10,DX20,DX30,DX40,DX50,DX60,DX70,DX80
      DIFF=1.0E-15
      WRITE (6,10)
   10 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER  /  )
      WRITE (6,20)
   20 FORMAT(1H0,3X,11H+ JUSTICE +,3X,8H+ ITEM +,5X,
     *      15H+ SOURCE DATA +,5X,20H+ FIELD DESCRIPTOR +,5X,
     *      20H     + ANSWER +     ,5X,17H+ COMPARE VALUE + / )
C
C
      DX1 =0.12345678910123456 D+15
      DX2 =-0.8765432109876543 D-20
      DX3 = 0.8174110030025394D-51
      DX4 = 0.0D 00
      DX5 =-12.34560004251459D-50
      DX6 = 0.77143D+25
      DX7 = -9987123.0D-45
      ITEM=1
      READ (5,25) W1,W2,W3,W4,W5,W6,W7
   25 FORMAT (D23.17,6X,D23.16 / 3X,D22.16,D8.1,5X,D22.14,5X,D13.7 /
     *        66X,D14.0  )
      WRITE (6,30) ITEM
   30 FORMAT(1H0,19X,1H(,I2,1H),2X,25H  0.12345678910123456D+15,
     *      7X,6HD23.17 )
      IF ( DABS(DX1-W1)-DABS(DX1)*DIFF ) 35,40,40
   35 WRITE (6,100) W1,DX1
      GO TO 45
   40 WRITE (6,110) W1,DX1
C
   45 ITEM=ITEM+1
      WRITE (6,48) ITEM
   48 FORMAT(1H0,19X,1H(,I2,1H),2X,25H  -0.8765432109876543D-20,
     *      7X,6HD23.16  )
      IF ( DABS(DX2-W2)-DABS(DX2)*DIFF ) 55,50,50
   50 WRITE (6,110) W2,DX2
      GO TO 60
   55 WRITE (6,100) W2,DX2
C
   60 ITEM=ITEM+1
      WRITE (6,63) ITEM
   63 FORMAT(1H0,19X,1H(,I2,1H),2X,25H   0.8174110030025394D-51,7X,
     *       6HD22.16 )
      IF ( DABS(DX3-W3)-DABS(DX3)*DIFF ) 65,70,70
   65 WRITE (6,100) W3,DX3
      GO TO 75
   70 WRITE (6,110) W3,DX3
C
   75 ITEM=ITEM+1
      WRITE (6,78) ITEM
   78 FORMAT(1H0,19X,1H(,I2,1H),17X,10H  -0.0D-00,7X,6H  D8.1 )
      IF ( DABS(DX4-W4)-DIFF ) 80,85,85
   80 WRITE (6,100) W4,DX4
      GO TO 90
   85 WRITE (6,110) W4,DX4
C
   90 ITEM=ITEM+1
      WRITE (6,93) ITEM
   93 FORMAT(1H0,19X,1H(,I2,1H),2X,25H   -12.34560004251459D-50,
     *       7X,6HD22.14  )
      IF ( DABS(DX5-W5)-DABS(DX5)*DIFF ) 95,105,105
   95 WRITE (6,100) W5,DX5
      GO TO 115
  105 WRITE (6,110) W5,DX5
C
  115 ITEM=ITEM+1
      WRITE (6,118) ITEM
  118 FORMAT(1H0,19X,1H(,I2,1H),2X,25H              0.77143D+25,7X,
     *       6H D13.7  )
      IF ( DABS(DX6-W6)-DABS(DX6)*DIFF ) 120,125,125
  120 WRITE (6,100) W6,DX6
      GO TO 130
  125 WRITE (6,110) W6,DX6
C
  130 ITEM=ITEM+1
      WRITE (6,133) ITEM
  133 FORMAT(1H0,19X,1H(,I2,1H),2X,25H            -9987123.D-45,7X,
     *       6H D14.0 )
      IF ( DABS(DX7-W7)-DABS(DX7)*DIFF ) 135,140,140
  135 WRITE (6,100) W7,DX7
      GO TO 145
  140 WRITE (6,110) W7,DX7
  100 FORMAT(1H+,5X,7H*OK*   ,60X,D24.17,3X,D24.17 )
  110 FORMAT(1H+,5X,7H*ERROR*,60X,D24.17,3X,D24.17 )
C
C
  145 READ (5,150) W1,W2,W3,W4,W5,W6,W7,W8
  150 FORMAT(/ D25.19,D23.10 /10X,D23.15 / D10.3,10X,D25.18 / D15.10,
     *    D18.13 / 69X,D11.3 )
      DX10=-0.11122233344455566D35
      DX20= 1.9832145301D-61
      DX30=-7.6543210999407D+00
      DX40=0.23035196374000021D 13
      DX50=0.6917592438D-16
      DX60=99999.99999D0
      DX70=-21.41659311101D-56
      DX80=-7.64D50
      ITEM=ITEM+1
      WRITE (6,155)
  155 FORMAT(1H   )
      WRITE (6,160) ITEM
  160 FORMAT(1H0,19X,1H(,I2,1H),2X,25H  +12345678910.123456D 04,7X,
     *       6HD25.19 )
      CALL DCHECK( 1,W1,DX1 )
C
      ITEM=ITEM+1
      WRITE (6,165) ITEM
  165 FORMAT(1H0,19X,1H(,I2,1H),2X,25H   -8.765432109876543D-21,7X,
     *       6HD23.10 )
      CALL DCHECK( 1,W2,DX2 )
C
      ITEM=ITEM+1
      WRITE (6,170 ) ITEM
  170 FORMAT(1H0,19X,1H(,I2,1H),2X,25H   + 8174110030025394D-52,7X,
     *       6HD23.15 )
      CALL DCHECK (1,W3,DX3 )
C
      ITEM=ITEM+1
      WRITE (6,175) ITEM
  175 FORMAT(1H0,19X,1H(,I2,1H),2X,25H                  -0.D  0,7X,
     *       6H D10.3 )
      CALL DCHECK (0,W4,DX4 )
C
      ITEM=ITEM+1
      WRITE (6,180) ITEM
  180 FORMAT(1H0,19X,1H(,I2,1H),2X,25H -0.111222333444555666+35,7X,
     *       6HD25.18 )
      CALL DCHECK(1,W5,DX10)
C
      ITEM=ITEM+1
      WRITE (6,185) ITEM
  185 FORMAT(1H0,19X,1H(,I2,1H),2X,25H         1.9832145301 -61,7X,
     *       6HD15.10  )
      CALL DCHECK(1,W6,DX20)
C
      ITEM=ITEM+1
      WRITE (6,190) ITEM
  190 FORMAT(1H0,19X,1H(,I2,1H),2X,25H       -7.6543210999407+0,7X,
     *       6H       )
      CALL DCHECK (1,W7,DX30)
C
      ITEM=ITEM+1
      WRITE (6,195) ITEM
  195 FORMAT(1H0,19X,1H(,I2,1H),2X,25H               +0.000+ 00,7X,
     *       6H D11.3 )
      CALL DCHECK ( 0,W8,DX4 )
C
C
      WRITE (6,200)
  200 FORMAT (1H1 /  )
      WRITE (6,20 )
      ITEM=ITEM+1
      WRITE (6,205) ITEM
  205 FORMAT(1H0,19X,1H(,I2,1H),2X,25H    23035196374000021D 13,7X,
     -       6HD24.17 )
      READ (5,250) W1,W2,W3,W4,W5,W6,W7,W8
  250 FORMAT(1X,D24.17,D14.7,1X,D20.5 // 15X,D23.17,2X,D10.0,5X,D19.3
     *       / D14.0,1X,D6.0   )
      CALL DCHECK (1,W1,DX40)
C
      ITEM=ITEM+1
      WRITE (6,210) ITEM
  210 FORMAT(1H0,19X,1H(,I2,1H),2X,25H           6917592438D-19,7X,
     *       6H D14.7 )
      CALL DCHECK (1,W2,DX50)
C
      ITEM=ITEM+1
      WRITE (6,215) ITEM
  215 FORMAT(1H0,19X,1H(,I2,1H),2X,25H            9999999999+00,7X,
     *       6H D20.5 )
      CALL DCHECK (1,W3,DX60 )
C
      ITEM=ITEM+1
      WRITE (6,220)  ITEM
  220 FORMAT(1H0,19X,1H(,I2,1H),2X,25H    -    2141659311101-50,7X,
     *       6HD23.17 )
      CALL DCHECK (1,W4,DX70 )
C
      ITEM=ITEM+1
      WRITE (6,225) ITEM
  225 FORMAT(1H0,19X,1H(,I2,1H),2X,25H                 -7.64D50,7X,
     *       6H D10.0 )
      CALL DCHECK (1,W5,DX80)
C
      ITEM=ITEM+1
      WRITE (6,230) ITEM
  230 FORMAT(1H0,19X,1H(,I2,1H),2X,25H      -.76543210999407+ 1,7X,
     *       6H D19.3 )
      CALL DCHECK (1,W6,DX30)
C
      ITEM=ITEM+1
      WRITE (6,235) ITEM
  235 FORMAT(1H0,19X,1H(,I2,1H),2X,25H              .  77143+25,7X,
     *       6HD14.0,1X  )
      CALL DCHECK(1,W7,DX6 )
C
      ITEM=ITEM+1
      WRITE (6,240) ITEM
  240 FORMAT(1H0,19X,1H(,I2,1H),2X,25H                      0+0,7X,
     *       6H  D6.1 )
      CALL DCHECK (0,W8,DX4 )
C
      WRITE (6,300)
  300 FORMAT(1H0 / 6X,23H*FORTRAN*          EXIT  )
      STOP
      END

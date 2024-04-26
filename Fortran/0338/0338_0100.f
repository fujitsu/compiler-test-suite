      PROGRAM MAIN
      INTEGER MIN,MAX
      CHARACTER CH1*16,CH2*4,CH3*6
      WRITE(6,*)'#### START ####'
      CH1='ABCDIJKLEFGHXXXX'
      CH2=CH1(5:8)
      CH3='XXMNOP'
      CH1(5:12)=CH1(9:12)//CH2
      MIN=13
      MAX=16
      CH1(MIN:MAX)=CH3(MIN-10:MAX-10)
      IF(CH1.EQ.'ABCDEFGHIJKLMNOP') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

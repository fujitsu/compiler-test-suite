      PROGRAM MAIN
      CHARACTER*16 CHR,RES
      CHARACTER*4 CH1
      CHARACTER CH2(3)
      INTEGER ELM
      WRITE(6,*)'#### START ####'
      ELM=3
      CH1='FORT'
      CH2(1)='R'
      CH2(2)='A'
      CH2(3)='N'
      RES=CHR(CH1,CH2,ELM)
      IF(RES.EQ.'FORTRAN 77 TEST1') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      CHARACTER*(*) FUNCTION CHR(X,Y,N)
      CHARACTER*(*) X,Y(N),Z*5
      Z='TEST1'
      CHR=X//Y(1)//Y(2)//Y(3)//' 77 '//Z
      END

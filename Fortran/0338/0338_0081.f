      BLOCK DATA BLK
      INTEGER A,I4(10,10)
      REAL    B,R4(10)
      COMPLEX C,C8(10)
      LOGICAL D,L1(10,10)
      CHARACTER CH*2
      COMMON /COM/A,B,D,I4,R4,L1/COM2/C,C8/COM3/CH
      DATA A,I4/10,100*10/
      DATA B,R4/7.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      DATA C,C8(1),C8(10)/(10.0,10.0),(0.0,0.0),(10.0,10.0)/
      DATA D,((L1(I,J),I=1,10),J=1,10)/.FALSE.,100*.TRUE./
      DATA CH/'OK'/
      END

      PROGRAM MAIN
      INTEGER A,I4(10,10)
      REAL    B,R4(10)
      COMPLEX C,C8(10)
      LOGICAL D,L1(10,10),F(6),RES
      CHARACTER CH*2
      COMMON /COM/A,B,D,I4,R4,L1/COM2/C,C8/COM3/CH
      WRITE(6,*)'#### START ####'
      F(1)=(A.EQ.10).AND.(A.EQ.I4(10,5))
      F(2)=(B.EQ.7.0).AND.(B.EQ.R4(7))
      F(3)=(C.EQ.(10.0,10.0)).AND.(C.EQ.C8(10))
      F(4)=D.NEQV.L1(5,10).EQV..TRUE.
      F(5)=.TRUE.
      F(6)=CH.EQ.'OK'
      RES=F(1).AND.F(2).AND.F(3).AND.F(4).AND.F(5).AND.F(6)

      IF(RES) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

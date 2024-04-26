      PROGRAM MAIN
      INTEGER A,I4(10,10)
      REAL    B,R4(10)
      COMPLEX C,C8(10)
      LOGICAL D,L1(10,10),F(5),RES
      CHARACTER CH*2
      DATA A,I4/10,100*10/
      DATA B,R4/7.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      DATA C,C8(1),C8(10)/(10.0,10.0),(0.0,0.0),(10.0,10.0)/
      DATA D,((L1(I,J),I=1,10),J=1,10)/.FALSE.,100*.TRUE./
      DATA CH/'OK'/
      WRITE(6,*)'#### START ####'
      F(1)=(A.EQ.10).AND.(A.EQ.I4(10,5))
      F(2)=(B.EQ.7.0).AND.(B.EQ.R4(7))
      F(3)=(C.EQ.(10.0,10.0)).AND.(C.EQ.C8(10))
      F(4)=D.NEQV.L1(5,10).EQV..TRUE.
      F(5)=CH.EQ.'OK'
      RES=F(1).AND.F(2).AND.F(3).AND.F(4).AND.F(5)

      IF(RES) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

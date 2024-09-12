      REAL*4 R4A(-9:20),R4B(-9:20),RMIN,RDIF,RS(-9:20),RA
      INTEGER*4 IMN,ID,IL,IK,IJ
      COMPLEX*8 CES(-9:20),CES1(-9:20),CES2(-9:20),C8A(-9:20),CEA
      DATA R4A/30*1./,R4B/30*1./,RS/30*1/
      DATA CES/30*(1.,1.)/,CES1/30*(1.,1.)/
      DATA CES2/30*(1.,1.)/,C8A/30*(1.,1.)/
      DATA IMN/0/,ID/1/,IL/10/,IK/8/,IJ/1/
      DATA J1/1/,J2/2/,J3/3/
      DATA RMIN/-110/,RDIF/0./

      DO 100 I0=1,6
      ID=I0*2-(I0-1)*2
        DO 10 I1=-J2*J1*J3-J3,5,2
          ID=ID+1
          IJ=I0+1
          IK=ID+1
          IL=3+1+I1
          CALL SUBTST(ID,ID+1,IJ,IK,IL,R4A,C8A)
   10 CONTINUE
      WRITE(6,*) 'R4A=',R4A,'C8A=',C8A
        DO 20 I2=-J2*J1*J3*J3+J3*J3,5,2
          R4B(I2)=R4A(I2)+R4A(I2)**2
          RDIF = RMIN - R4B(I2)
          IF (RDIF) 20,20,1
    1     RMIN=R4B(I2)
          IMN=I2
   20     CONTINUE
          WRITE(6,*) 'RMIN=',RMIN,'IMN=',IMN
  100 CONTINUE
      STOP
      END

      SUBROUTINE SUBTST(N,I,J,K,L,RS,CES)
      INTEGER*4  IS1,I
      REAL*4     RS(J:K)
      COMPLEX*8  CES(L)

      DO 20 IS1=J,K
   20   RS(IS1)=IS1
      DO 30 IS1=1,L
   30   CES(IS1)= IS1 + IS1*(0.,1.)

      DO 40 IS1=1,N
        IF(N.GT.MIN(I,K,L)) GO TO 40
        IF(IS1.LT.J) GO TO 40
          RS(IS1)=RS(IS1)*RS(IS1)
          CES(IS1)=CES(IS1)*CES(IS1)
          RS(IS1)=REAL(CES(IS1))
   40 CONTINUE
      RETURN
      END

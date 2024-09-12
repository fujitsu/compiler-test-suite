      REAL*4  R4A(-9:10)
      REAL*8  R8A(-9:10)
      INTEGER*4 I1,ID1,J1,J2
      LOGICAL*4 L4A(-9:10)
      REAL*4 R4B(-9:10)
      REAL*8 R8B(-9:10)
      COMPLEX*8 C8B(-9:10)
      COMPLEX*16 C16B(-9:10)
      INTEGER*4 IN,I2
      INTEGER*4 I3
      REAL*4 RSUM,RMAX,RST

      DATA L4A/5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE./
      DATA R4A/20*1.0/,R8A/20*2.0/,ID/1/
      DATA J1/2/,J2/3/,J3/1/
      DATA IN/20/
      DATA R4B/20*1./,R8B/20*0./
      DATA C8B/20*(1.,1.)/,C16B/20*(0.,1.)/
      DATA RMAX/-100./,ID3/-3/,RSUM/0.0/

      ID=0
      DO 10 I1=-J1*J2*J3-J2*J3,0,1
        ID=ID+1
        IF(L4A(I1).AND.L4A(I1+1)) THEN
          L4A(I1)=.FALSE.
          R4A(I1)=R4A(I1+1)
        ENDIF
        IF(L4A(I1)) GO TO 10
          R8A(ID)=INT(5.*SIN(R4A(I1)+ID))
          IF(R8A(ID).GT.4.) THEN
            R8A(ID)=R8A(ID)*R8A(ID)
            R4A(I1)=R4A(I1)*R4A(I1)
          ENDIF
   10 CONTINUE
      WRITE(6,*) 'R8A=',R8A
      WRITE(6,*) 'R4A=',R4A

      ID=-5
      DO 20 I2=-J2*J1,J1*J1+J3+J2*J3,J1*J2+J1-J2
        ID=ID+1
        IF(.NOT.L4A(ID).OR.L4A(I2)) THEN
          R8B(I2)=R8A(ID)
          R4B(I2)=R4A(ID)
          IF(R8A(ID).LE.3.) THEN
            R8B(I2)=R8A(ID)*2.0
            R4B(I2)=R4A(ID)*4.0
            IF(R8A(ID).LE.0.) THEN
              C8B(I2)=CMPLX(R4A(ID),R4B(I2))
              C16B(I2)=DCMPLX(R8A(ID),R8B(I2))
            ENDIF
          ENDIF
        ENDIF
   20 CONTINUE
      WRITE(6,*) 'C8B=',C8B
      WRITE(6,*) 'C16B=',C16B

      DO 30 I3=-J3*J1-1,J2*J3+J1,J1*J3-J2
        IF(RMAX.LT.R4A(I3)) THEN
          RMAX=R4A(I3)
        ENDIF
        ID3=ID3+J2*J1-J1
        RST=R4A(ID3)+R4B(I3)
        RSUM=RSUM+RST
   30 CONTINUE
      WRITE(6,*) 'RMAX=',RMAX
      WRITE(6,*) 'RSUM=',RSUM
      STOP
      END

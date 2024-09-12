      PROGRAM MAIN
      LOGICAL*4 LOV(-4:30)
      INTEGER*4 I,I1,I2,J1,J2
      REAL*4 RSIV,RCOV,RA(-4:30),B(-4:30),C(-4:30),D(-4:30),RMIN,RDIF
      LOGICAL*4 LOV1(-4:30),LO
      INTEGER*4 J3
      INTEGER*4 J,J4,N1,N2,SS
      REAL*4 Y(-4:30),YY(-4:30),CC(-4:30),DD(-4:30)
      COMPLEX*8 FAC(-4:30),PH(-4:30),PHB(-4:30),W(-4:30),Z(-4:30)
      COMPLEX*8 ZB(-4:30),ZZ(-4:30),AM(-4:30)

      DATA LOV/20*.FALSE.,15*.TRUE./,LOV1/35*.TRUE./
      DATA RA/10*1.0,-2.,9*2.,15*3./,B/35*1.0/,C/35*1.0/,D/35*1.0/
      DATA Pi/3.14/
      DATA Y/35*1.0/,YY/35*1.0/
      DATA FAC/10*(0.,0.),10*(1.0,0.),10*(2.0,0.),5*(3.0,0.)/
      DATA AM/10*(1.,0.),10*(0.0,1.),10*(3.0,4.),5*(3.0,0.)/
      DATA PH/35*(0.,0.)/,PHB/35*(0.,0.)/,W/35*(0.,0.)/
      DATA Z/35*(0.,0.)/,ZB/35*(0.,0.)/,ZZ/35*(0.,0.)/
      DATA CC/35*100./,DD/35*1000./,RMIN/1000./

      RSIV = 2.0 * SIN(0.5*Pi)
      RCOV = 2.0 * COS(0.5*Pi)
      J1 = INT(RSIV)
      J2 = INT(RCOV)
      I1 = 0
      I2 = 100
      DO 10 I = -2 , 4*J1-J2 , 2
        B(I-2) = J1 + J2 + B(I)
        C(I) = B(I-1)
        I1 = I1 + 1
        IF (LOV(I).AND..TRUE.) I2 = I2-1
        D(I1) = RA(I1*J1+J2*2) - I2
        RDIF = RMIN - RA(I)
        IF (RDIF)  10 , 10 , 2
   2    RMIN = RA(I)
  10  CONTINUE
      WRITE(6,999) 'RMIN=',RMIN,'RA=',RA,'B=',B,'C=',C,'D=',D

      DO 20 I=1*J1-1,10,1
        IF (C(I).EQ.1.) THEN
          LO=.FALSE.
        ELSE
          LO=.TRUE.
        ENDIF
        IF (LOV(I)) THEN
          LOV1(I)= .FALSE..AND.LO
        ELSE
          LOV1(I)= .FALSE..OR.LO
        ENDIF
        IF (LOV1(I).EQV..FALSE.) GO TO 3
        C(I)=RA(I)+ B(J2*J1+I+1)
        GO TO 20
   3    C(I)=RA(I)+B(J2+I+1)
  20  CONTINUE
      WRITE(6,999) 'LOV1=',LOV1,'RA=',RA,'B=',B,'C=',C,'D=',D

      J4=-4
      N1=J4+J1*2+J2*3+1
      N2=1
      SS=0
      DO 30 I=J4+J1*2+J2*3+1,20,2
       N1=N1+1
       PH(I)=CEXP(FAC(I))
       PHB(I)=CONJG(PH(I))
       W(I)=PH(I)*PHB(I)
       Z(I) = AM(I)*PH(I)
       ZB(I)=CONJG(Z(I))
       ZZ(I)=Z(I)*ZB(I)
       C(I)=CABS(ZZ(I))
       D(I)=CABS(W(I))
       IF (C(I).GE.0.991) THEN
         C(I)=0.0
       ENDIF
       IF(D(I).GE.0.991) THEN
         D(I)=0.0
       ENDIF
       Y(I)=ZZ(I)
       YY(I)=W(I)
       IF (Y(I).GE.0.991) THEN
         CC(I)=0.0
       ENDIF
       IF(YY(I).GE.0.991) THEN
         DD(I)=0.0
       ENDIF
       SS=SS+INT(Y(I))
       RA(N1)= CC(I)
       B(N2+1)=DD(I-1)
       N2=N2+1
  30  CONTINUE
      WRITE(6,999) 'RA=',RA
      WRITE(6,999) 'ZZ=',ZZ
      WRITE(6,999) 'B=',B
      WRITE(6,999) 'C=',C
      WRITE(6,999) 'D=',D
      WRITE(6,999) 'CC=',CC
      WRITE(6,999) 'DD=',DD
      WRITE(6,999) 'SS=',SS
 999  format(10g20.6)
      STOP
      END

      PROGRAM     MAIN
      COMPLEX*16 CMP(-4:20),CMP1(-4:20),CMP2(-4:20)
      REAL*8 RV(-4:20)
      DATA A/1./,J1/4/
      DATA CMP/25*(0.,0.)/,CMP1/10*(0.,8.),10*(0.,16.),5*(0.,4.)/
      DATA CMP2/25*(0.,2.)/
      DATA RV/25*1.0/
        JC=10
        I1 = 1
        DO 2 I=1,10
          J1= I - 6
    2     A = I - 9
        DO 20 I2=-1,10,A*J1-3
           IF(JC.LT.5) THEN
             GO TO 20
           ENDIF
           CMP(I1)=CMP1(I1)/CMP2(I2)
           CMP(I1-1)=CMP(I1)-(3.,0)
           RV(I1)=REAL(CMP(I1))
   20   CONTINUE
      WRITE(6,*) 'RV='
      WRITE(6,1) RV
    1 FORMAT(8F10.3)
      STOP
      END

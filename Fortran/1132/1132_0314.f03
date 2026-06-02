!             CVCT7003            LEVEL=4        DATE=83.12.05
      PROGRAM IFC
      type::str_R4
      REAL*4 A(10),B(10),C(10),D(10),E(10),F(10)
      end type
      type (str_R4)::R
      DATA   R%A/10*1./,R%B/10*2./,R%C/10*3./
      DATA   R%D/10*1./,R%E/10*2./,R%F/10*3./
!
      DO 10 I=1,100
        IF(I.LE.10) THEN
          R%A(I)=1.
        ENDIF
10    CONTINUE
!
      WRITE(6,*) '**IFC1**'
      WRITE(6,*) 'RA = ',R%A
!
      DO 30 I=1,100
        IF(I.LE.10) THEN
          R%F(I)=1.
         IF(I.LT.5) THEN
           R%D(I)=1.
         ENDIF
        ENDIF
30    CONTINUE
!
      WRITE(6,*) '**IFC2**'
      WRITE(6,*) 'RD = ',R%D
      WRITE(6,*) 'RF = ',R%F
!
      DO 40 I=1,100
        IF(I.LE.6) THEN
          R%F(I)=1.
         ELSEIF(I.EQ.9) THEN
          R%D(I)=2.
         ENDIF
40    CONTINUE
!
      WRITE(6,*) '**IFC3**'
      WRITE(6,*) 'RD = ',R%D
      WRITE(6,*) 'RF = ',R%F
!
      STOP
      END

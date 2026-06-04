      PROGRAM IFA
      type::str_R4
      REAL*4 A(10),B(10),C(10),D(10),E(10),F(10)
      end type
      type (str_R4)::R
      DATA   R%A/10*1./,R%B/10*2./,R%C/10*3./
      DATA   R%D/10*1./,R%E/10*2./,R%F/10*3./
!
      DO 10 I=1,100
        IF(I.LE.10) THEN
          R%A(I)=R%B(I)
        ENDIF
10    CONTINUE
!
      WRITE(6,*) '**IFA1**'
      WRITE(6,*) 'RA = ',R%A
!
      DO 20 I=1,100
        IF(I.LE.10) THEN
          R%C(I)=R%D(I)+R%E(I)
        ENDIF
20    CONTINUE
!
      WRITE(6,*) '**IFA2**'
      WRITE(6,*) 'RC = ',R%C
!
      DO 30 I=1,100
        IF(I.LE.10) THEN
          R%F(I)=R%A(I)
         IF(I.LT.5) THEN
           R%D(I)=R%F(I)
         ENDIF
        ENDIF
30    CONTINUE
!
      WRITE(6,*) '**IFA3**'
      WRITE(6,*) 'RD = ',R%D
      WRITE(6,*) 'RF = ',R%F
!
      DO 40 I=1,100
        IF(I.LE.5) THEN
          R%F(I)=R%A(I)
         ELSEIF(I-1.EQ.5) THEN
          R%D(I)=R%F(I)
         ENDIF
40    CONTINUE
!
      WRITE(6,*) '**IFA4**'
      WRITE(6,*) 'RD = ',R%D
      WRITE(6,*) 'RF = ',R%F
!
      STOP
      END

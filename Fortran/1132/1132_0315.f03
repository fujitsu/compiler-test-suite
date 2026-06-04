      PROGRAM IFD
      type::str_R4
      REAL*4 A(10),B(10),C(10),D(10),E(10),F(10)
      end type
      type (str_R4)::R
      DATA   R%A/10*1./,R%B/10*2./,R%C/10*3./
      DATA   R%D/10*1./,R%E/10*2./,R%F/10*3./
      type::str_L4
      LOGICAL*4 A(10),B(10),C(10),D(10)
      LOGICAL*4 E(10),F(10),G(10)
      end type
      type (str_L4)::L
      DATA  L%A/10*.TRUE./ !LB/10*.FALSE./
      DATA  L%B/10*.TRUE./L%C/10*.FALSE./
      DATA  L%D/10*.TRUE./L%E/10*.FALSE./
      DATA  L%F/10*.TRUE./L%G/10*.FALSE./
!
      DO 10 I=1,100
        IF(I.LE.10) THEN
          L%A(I)=.TRUE.
        ENDIF
10    CONTINUE
!
      WRITE(6,*) '**IFD1**'
      WRITE(6,*) 'LA = ',L%A
!
      DO 20 I=1,100
        IF(I.LE.10) THEN
          L%C(I)=L%D(I).OR.L%E(I)
        ENDIF
20    CONTINUE
!
      WRITE(6,*) '**IFD2**'
      WRITE(6,*) 'LC = ',L%C
!
      DO 30 I=1,100
        IF(I.LE.10) THEN
          L%A(I)=R%A(I).GT.R%B(I)
          L%B(I)=.TRUE.
          L%C(I)=L%A(I).OR.L%D(I)
          IF(L%A(I)) THEN
            L%G(I)=.TRUE.
          ENDIF
        ENDIF
30    CONTINUE
!
      WRITE(6,*) '**IFD3**'
      WRITE(6,*) 'LG = ',L%G
      WRITE(6,*) 'LC = ',L%C
!
      DO 40 I=1,100
        IF(I.LE.6) THEN
          L%A(I)=.TRUE.
          L%F(I)=L%A(I)
         ELSEIF(I.EQ.7) THEN
          L%F(I)=.TRUE.
          L%D(I)=L%F(I)
         ENDIF
40    CONTINUE
!
      WRITE(6,*) '**IFD3**'
      WRITE(6,*) 'LA = ',L%A
      WRITE(6,*) 'LD = ',L%D
      WRITE(6,*) 'LF = ',L%F
!
      STOP
      END

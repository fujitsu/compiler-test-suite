!             CVCT6018            LEVEL=4        DATE=89.09.30
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6018                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TEST OF MASK REGISTER PROCESS            *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6018
  DATA N/10/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     COMPLEX*8  C10(10),C11(10),C12(10),C13(10),C14(10),C15(10)
     LOGICAL*4  L10(10),L11(10),L12(10),L13(10)
     INTEGER*4  I10(10),I11(10),I12(10),I13(10),I14(10)
  end type st1
  type(st1) :: str
  !
  complex*8 C10V,C11V,C12V,C13V
  DATA  str%C10/5*(1,1),5*(0,0)/,     str%C11/5*(2,2),5*(1,1)/
  data str%C12/5*(1,2),5*(1,1)/,     str%C13/10*(1.5,2.5)/
  data str%C14/10*(1,2)/,     str%C15/10*(1,2)/
  data C10V/(1,2)/,     C11V/(1,2)/
  data C12V/(1,1)/,     C13V/(1.5,2.5)/
  data str%L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  data str%L11/.TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE., &
       .FALSE.,.FALSE.,.FALSE.,.TRUE.,.FALSE./
  data str%L12/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  data str%L13/10*.TRUE./
  DATA  str%I10/10*0/, str%I11/10*0/, str%I12/10*0/, str%I13/10*0/, str%I14/10*0/
  data L/3/
  !
  !
  WRITE(6,*) '***** CVCT6018 ***** REGISTER MASK'
  WRITE(6,*) '----- LOOP 1 -----'
  DO  I=1,N
     IF (C10V .EQ. C11V ) THEN
        str%I10(I) = I
     ENDIF
     IF ( str%L10(I) ) THEN
        IF ( str%C10(I) .EQ. C12V ) THEN
           str%I11(I) = I
        ENDIF
     ENDIF
     IF ( str%C11(I) .NE. str%C12(I) ) THEN
        str%I12(I) = I
     ENDIF
     IF ( str%L11(L) ) THEN
        IF ( C13V .EQ. str%C13(I) ) THEN
           str%I13(I) = I
        ENDIF
     ENDIF
     IF ( str%L12(I) ) THEN
        IF ( str%L13(L) ) THEN
           IF ( str%C14(L) .EQ. str%C15(L) ) THEN
              str%I14(I) = I
           ENDIF
        ENDIF
     ENDIF
  enddo
  WRITE(6,*) str%I10
  WRITE(6,*) str%I11
  WRITE(6,*) str%I12
  WRITE(6,*) str%I13
  WRITE(6,*) str%I14
  STOP
END PROGRAM CV6018

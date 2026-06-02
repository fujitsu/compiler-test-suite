!             CVCT6019            LEVEL=5        DATE=83.01.22
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6019                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TEST OF DATA REFFERENCE                  *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6019
  DATA N/10/
  !
  !     DATA FOR LOOP 1,2
  !
  type st1
     INTEGER*4  I10(10),I11(10),I12(10)
     LOGICAL*4  L10(10),L11(10),L12(10),L13(10)
  end type st1
  type(st1) :: str

  INTEGER*4  IV10
  LOGICAL*4  LV10,LV11
  DATA str%L11/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./
  !     DATA str%L11/1,1,0,0,2,2,0,0,3,3/     <-----  NG
  DATA str%I10,str%I11,str%I12/30*0/
  DATA str%L10,str%L12,str%L13/30*.FALSE./
  !
  !
  WRITE(6,*) '***** CVCT6019 ***** DATA REFFERENCE'
  WRITE(6,*) '----- LOOP 1 -----'
  DO  I=1,N,2
     IV10 = I
     LV10 = I .GT. 5
     RV10 = IV10
     LV11 = .NOT.LV10
     str%I10(I) = IV10
     str%L10(I) = LV10 .AND. LV11
     IV10 = IV10 + str%I10(I)
     LV10 = LV10 .OR.str%L11(I)
     str%I11(I) = SQRT(FLOAT(IV10))
     str%I12(I) = str%I11(I) **(IV10-I)
     LV11 = LV10 .EQV. str%L10(I) .OR. LV10 .AND. LV11
     str%L12(I) = LV11
     str%L13(I) = LV10
  enddo
  WRITE(6,*) 'str%I10 = ',str%I10
  WRITE(6,*) 'str%L10 = ',str%L10
  WRITE(6,*) 'str%I11 = ',str%I11
  WRITE(6,*) 'str%I12 = ',str%I12
  WRITE(6,*) 'str%L12 = ',str%L12
  WRITE(6,*) 'str%L13 = ',str%L13
  WRITE(6,*) 'RV10 = ',RV10
  !
  !
  WRITE(6,*) '----- LOOP 2 -----'
  DO  I=1,N
     IF ( str%L10(I) ) THEN
        IV10 = I
        LV10 = I .GT. 5
        RV10 = IV10
        LV11 = .NOT. LV10
        str%I10(I) = IV10
        str%L10(I) = LV10 .AND. LV11
        IV10   = IV10 + str%I10(I)
        LV10   = LV10 .OR. str%L11(I)
        str%I11(I) = SQRT(FLOAT(IV10))
        str%I12(I) = str%I11(I) ** (IV10-I)
        LV11   = LV10 .EQV. str%L10(I) .OR. LV10 .AND. LV11
        str%L12(I) = LV11
        str%L13(I) = LV10
     ENDIF
  enddo
  WRITE(6,*) 'str%I10 = ',str%I10
  WRITE(6,*) 'str%L10 = ',str%L10
  WRITE(6,*) 'str%I11 = ',str%I11
  WRITE(6,*) 'str%I12 = ',str%I12
  WRITE(6,*) 'str%L12 = ',str%L12
  WRITE(6,*) 'str%L13 = ',str%L13
  WRITE(6,*) 'RV10 = ',RV10
  STOP
END PROGRAM CV6019

!             CVCT6017            LEVEL=2        DATE=89.10.03
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6017                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TEST OF IF STATEMENT  ----- LOGICAL      *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6017
  DATA N/10/
  !
  !     DATA FOR LOOP 1
  !
  type st1
     LOGICAL*4  L10(10),L11(10),L12(10),L13(10),L14(10),L15(10)
     logical*4  L16(10),L17(10)
  end type st1
  type(st1) :: str

  logical*4  LV10,LV11,LV12,LV13,LV14
  DATA  LV10/.TRUE./,LV11/.TRUE./,LV12/.TRUE./
  DATA  str%L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  DATA  str%L12/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  DATA  str%L13/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  DATA  LV13/.FALSE./,LV14/.FALSE./
  DATA  str%L11/.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE., .TRUE.,.FALSE.,.TRUE./
  DATA  str%L14,str%L15,str%L16,str%L17/40*.FALSE./
  !
  !     DATA FOR LOOP 2
  !
  type st2
     LOGICAL*4 L20(10),L21(10),L22(10),L23(10)
     INTEGER*4 I20(10)
  end type st2
  type(st2) :: str2
  LOGICAL*4 LV20,LV21,LV22,LV23,LV24
  !
  DATA  LV20/.TRUE./,LV21/.TRUE./,LV22/.TRUE./,LV23/.TRUE./, LV24/.TRUE./
  DATA  str2%L20/5*.FALSE.,5*.TRUE./
  DATA  str2%L21/.TRUE.,.FALSE.,.TRUE.,3*.FALSE., &
       .TRUE.,.FALSE.,.TRUE.,.FALSE./
  DATA  str2%L22/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,5*.FALSE./
  DATA  str2%L23/.TRUE.,.FALSE.,3*.TRUE.,5*.TRUE./
  DATA  str2%I20/10*0/,J/5/
  !
  !     DATA FOR LOOP 3
  !
  type st3
     REAL*4  R30(10)
     REAL*8  RD30(10)
     LOGICAL*4 L30(10)
     INTEGER*4 I30(10),I31(10),I32(10)
  end type st3
  type(st3) :: str3
  !
  REAL*4  RV30
  REAL*8  RDV30
  LOGICAL*4 LV30
  DATA  RV30/3.3/,str3%R30/0,3.4,5.,0,3.2,3.4,6,7,0,3.3/
  DATA  str3%I30/10*0/,str3%I31/10*0/,str3%I32/10*0/
  DATA  str3%RD30/1,2,3,4,5,6,7,8,9,10/,RDV30/5/
  DATA  str3%L30/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE., &
       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
  DATA  LV30/.TRUE./
  !
  !
  WRITE(6,*) '***** CVCT6017 ***** LOGICAL'
  WRITE(6,*) '----- LOOP 1 -----'
  DO  I=1,N
     IF ( LV10 ) THEN
        IF ( LV11.AND.LV12 ) THEN
           IF ( str%L10(I) .OR. LV13 ) THEN
              IF ( LV14 .NEQV. str%L11(I) ) THEN
                 IF ( str%L12(I) .EQV. str%L13(I) ) THEN
                    str%L14(I) = .TRUE.
                 ENDIF
              ELSE
                 str%L15(I) = .TRUE.
              ENDIF
           ELSE
              str%L16(I) = LV14
           ENDIF
        ELSE
           str%L17(I) = LV10 .OR.str%L15(I).OR.str%L16(I)
        ENDIF
     ENDIF
  enddo
  WRITE(6,*) str%L14
  WRITE(6,*) str%L15
  WRITE(6,*) str%L16
  WRITE(6,*) str%L17
  !
  !
  WRITE(6,*) '----- LOOP 2 -----'
  DO  I=1,N
     IF (LV20) THEN
        IF ( LV21.AND.LV22 ) THEN
           IF ( str2%L20(J).OR.LV23 ) THEN
              IF ( LV24 .NEQV. str2%L21(J) ) THEN
                 IF ( str2%L22(J) .EQV. str2%L23(J) ) THEN
                    str2%I20(I) = I
                 ENDIF
              ENDIF
           ENDIF
        ENDIF
     ENDIF
  enddo
  WRITE(6,*) str2%I20
  !
  !
  WRITE(6,*) '----- LOOP 3 -----'
  DO  I=1,N
     IF ( RV30 .GT. str3%R30(I) ) str3%I30(I) = I
     LV30 = str3%RD30(I) .LE. RDV30
     IF ( str3%L30(I) ) THEN
        IF (LV30) THEN
           str3%I31(I) = I
        ELSE
           str3%I31(I) = -I
        ENDIF
     ELSE
        str3%I32(I) = I
     ENDIF
     IF (LV30 .AND. str3%L30(I) ) THEN
        str3%L30(I) = .TRUE.
     ENDIF
  enddo
  WRITE(6,*) str3%I31
  WRITE(6,*) str3%I32
  WRITE(6,*) str3%L30
  STOP
END PROGRAM CV6017

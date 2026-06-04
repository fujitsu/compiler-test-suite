!             CVCT8020            LEVEL=1        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8020                                       C
!  2. PURPOSE        : BUSY ON EXIT  : MACRO ELEMENT                  C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 10                                  C
!*********************************************************************C
!
      PROGRAM CV8020
      type TAG1
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)
      end type
      type TAG2
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)
      end type
      type (TAG1)::st1
      type (TAG2)::st2
      DATA st1%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA st1%R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./
      DATA st2%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
            ,  .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA st2%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
            ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
! u2 add
      st1%R4S2 = 0
!
      WRITE(6,*) '#### CVCT8020 ## BUSY ON EXIT ####'
!
!CCCCCCCCCCCCC
! TEST NO. 1 C
!CCCCCCCCCCCCC
      DO 10 J=1,2
        DO 11 I=1,10
          st1%R4S1 = st1%R4A1(I)
          st1%R4S1 = st1%R4S1 + st1%R4A1(I)
 11     CONTINUE
        DO 12 I=1,10
          st1%R4A1(I) = st1%R4S2
          st1%R4S2 = st1%R4S2 + st1%R4A1(I)
 12     CONTINUE
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 2 ***'
      WRITE(6,*) st1%R4S1 ,st1%R4S2 ,st1%R4A1,st1%R4A2
!
!CCCCCCCCCCCCC
! TEST NO. 2 C
!CCCCCCCCCCCCC
      DO 20 J=1,10
        DO 21 I=1,10
          st1%R4S1 = st1%R4S1 + 1
          st1%R4S1 = st1%R4A1(I) + st1%R4A2(I)
 21     CONTINUE
        DO 22 I=1,10
          st1%R4S2 = st1%R4S2 + st1%R4A2(I)
          st1%R4A1(I) = st1%R4S2
 22     CONTINUE
 20   CONTINUE
      WRITE(6,*) '** TEST NO. 2 ***'
      WRITE(6,*)  st1%R4S1,st1%R4S2,st1%R4A1,st1%R4A2
!
!CCCCCCCCCCCCC
! TEST NO. 3 C
!CCCCCCCCCCCCC
      st1%R4S1 = 0
      DO 30 I=1,10
        st1%R4S1 = st1%R4A2(I)
        IF (st1%R4A1(I).GT.st1%R4S1) THEN
          st1%R4S1 = st1%R4A1(I)
         ENDIF
 30   CONTINUE
      st1%R4S2 = 0
      DO 31 I=1,10
      IF (st1%R4A2(I).GT.st1%R4S2) THEN
        st1%R4S2 = st1%R4A2(I) + 1
      ENDIF
      st1%R4A2(I) = st1%R4S2
 31   CONTINUE
!
      WRITE(6,*) '** TEST NO. 3 ***'
      WRITE(6,*) st1%R4S1,st1%R4S2,st1%R4A1,st1%R4A2
!
!CCCCCCCCCCCCC
! TEST NO. 4 C
!CCCCCCCCCCCCC
      DO 40 I=1,10
        IF (st2%L4A1(I)) THEN
          st1%R4S1 = st1%R4A1(I)
          st1%R4S1 = st1%R4S1 + st1%R4A1(I)
        ELSE
          st1%R4S1 = st1%R4A1(I) + 1.
          st1%R4S1 = st1%R4S1 + st1%R4A1(I) + 1.
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** TEST NO. 4 ***'
      WRITE(6,*)  st1%R4S1,st1%R4S2,st1%R4A1,st1%R4A2
!
      STOP
      END

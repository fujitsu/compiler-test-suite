!             CVCT8018            LEVEL=1        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8018                                       C
!  2. PURPOSE        : BUSY ON EXIT : MASK TEST                       C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 11                                  C
!*********************************************************************C
!
      PROGRAM CV8018
      type TAG
      REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)
      end type
      type (TAG)::st
      DATA st%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA st%R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      DATA st%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA st%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
             , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
! u2 add
      st%R4S3 = 0
      st%L4S3 = .FALSE.
!
      WRITE(6,*) '#### CVCT8018 ## BUSY ON EXIT ####'
!
      st%L4A2(1) = .FALSE.
      st%L4A2(2) = .TRUE.
      st%L4A2(3) = .FALSE.
      st%L4A2(4) = .TRUE.
      st%L4A2(5) = .FALSE.
      st%L4A2(6) = .TRUE.
      st%L4A2(7) = .FALSE.
      st%L4A2(8) = .TRUE.
      st%L4A2(9) = .FALSE.
      st%L4A2(10) = .TRUE.
!CCCCCCCCCCCCC
! TEST NO. 1 C   EX MASK
!CCCCCCCCCCCCC
      DO 10 I=1,10
        IF (st%L4A1(I)) THEN
          st%R4S1 = st%R4A1(I) + st%R4A2(I)
          st%L4S1 = st%L4A1(I).AND.st%L4A2(I)
          st%R4S3(1) = st%R4A1(I)
          st%L4S3(1) = st%L4A1(I)
        ELSE
          st%R4S1 = st%R4A1(I) + 1.
          st%L4S1 = .NOT.st%L4A1(I)
          st%R4S3(2) = st%R4A1(I) + 1.
          st%L4S3(2) = .NOT.(st%L4A1(I).AND.st%L4A2(I))
        ENDIF
 10   CONTINUE
      DO 11 I=1,10
        IF (st%L4A1(I)) THEN
          st%R4S2 = st%R4A2(I) - st%R4A1(I)
          st%L4S2 = st%L4A1(I).OR.st%L4A2(I)
          st%R4S3(2) = st%R4A2(I) + 3.
          st%L4S3(2) = st%L4S2
        ENDIF
 11   CONTINUE
!
      WRITE(6,*) '** TEST NO. 1 ***'
      WRITE(6,*) st%R4S1,st%R4S2,st%L4S1,st%L4S2,st%R4A1,st%R4A2,st%L4A1,st%L4A2,st%R4S3,st%L4S3
!
!
!CCCCCCCCCCCCC
! TEST NO. 2 C   RC MASK
!CCCCCCCCCCCCC
      DO 20 I=1,10
        IF (st%L4A2(I)) THEN
          st%R4S1 = st%R4A1(I) + st%R4A2(I)
          st%L4S1 = st%L4A1(I) .AND.st%L4A2(I)
          st%R4S3(1) = I + st%R4A2(I)
          st%L4S3(1) = .NOT.(st%L4A1(I).AND.st%L4S1)
        ELSE
          st%R4S1 = st%R4A1(I) * st%R4A2(I)
          st%L4S1 = st%L4A1(I) .AND. st%L4A2(I)
          st%R4S3(2) = I + st%R4A1(I)
          st%L4S3(2) = st%L4A1(I)
        ENDIF
 20   CONTINUE
!
      DO 21 I=1,10
        IF (st%L4A2(I)) THEN
          st%R4S1 = st%R4A1(I) + st%R4A2(I)
          st%L4S1 = st%L4A1(I) .AND.st%L4A2(I)
          st%R4S3(1) = I + st%R4A2(I)
          st%L4S3(1) = .NOT.(st%L4A1(I).AND.st%L4S1)
        ELSE
          st%R4S1 = st%R4A1(I) * st%R4A2(I)
          st%L4S1 = st%L4A1(I) .AND. st%L4A2(I)
          st%R4S3(2) = I + st%R4A1(I)
          st%L4S3(2) = st%L4A1(I)
        ENDIF
 21   CONTINUE
      WRITE(6,*) '** TEST NO. 2 ***'
      WRITE(6,*)  st%R4S1,st%R4S2,st%L4S1,st%L4S2,st%R4A1,st%R4A2,st%L4A1,st%L4A2,st%R4S3,st%L4S3
!
!CCCCCCCCCCCCC
! TEST NO. 3 C   EX AND RC MASK
!CCCCCCCCCCCCC
      DO 30 I=1,10
        IF (st%L4A1(I).AND.st%L4A2(1)) THEN
          st%R4S1 = st%R4A1(I)
          st%L4S1 = st%L4A2(I) .AND. st%L4A1(I)
          st%R4S3(3) = st%R4A1(I) + 3.
          st%L4S3(3) = .NOT.st%L4A2(I)
          st%R4A1(I) = st%R4S1
          st%R4A2(I) = st%R4S2
        ELSE
          st%R4S2 = st%R4A1(I) + st%R4A2(I)
          st%R4S3(4) = st%R4A1(I) + st%R4A2(I)
          st%L4S2 = .NOT.st%L4A2(I)
          st%L4S3(4) = st%L4A1(I) .OR. st%L4A2(I)
        ENDIF
 30   CONTINUE
!
      DO 31 I=1,10
        IF ((st%R4A1(I).EQ.I).AND.st%L4A2(4)) THEN
          st%R4S2 = st%R4A1(I)
          st%L4S2 = st%L4A2(I) .AND. st%L4A1(I)
          st%R4S3(4) = st%R4A1(I) + 3.
          st%L4S3(4) = .NOT.st%L4A2(I)
        ENDIF
 31   CONTINUE
!
      WRITE(6,*) '** TEST NO. 3 ***'
      WRITE(6,*) st%R4S1,st%R4S2,st%L4S1,st%L4S2,st%R4A1,st%R4A2,st%L4A1,st%L4A2,st%R4S3,st%L4S3
!
!CCCCCCCCCCCCC
! TEST NO. 4 C  NEST TEST
!CCCCCCCCCCCCC
      DO 40 I=1,10
        IF (st%L4A1(I)) THEN
          IF (st%L4A2(I)) THEN
            st%R4S1 = st%R4A1(I) + st%R4A2(I)
            st%L4S1 = st%L4A1(I).AND.st%L4A2(I)
          ELSE
            st%R4S2 = st%R4A2(I) + 1.
            st%L4S2 = .NOT.st%L4A1(I)
          ENDIF
          st%R4S3(4) = st%R4A1(I) + 4.
          st%L4S3(4) = st%L4A2(I)
        ENDIF
 40   CONTINUE
!
      DO 41 I=1,10
        IF (st%L4A1(I)) THEN
          IF (.NOT.st%L4A2(I)) THEN
            IF (st%R4A1(I).EQ.I) THEN
              IF (st%R4A2(I).NE.I) THEN
                st%R4S1 = st%R4A1(I) + st%R4A2(I)
                st%L4S1 = .NOT.st%L4A1(I)
              ELSE
                st%R4S2 = st%R4A1(I) + 1.
                st%L4S2 = st%L4A2(I).OR.st%L4A1(I)
              ENDIF
              st%R4A1(I) = st%R4S1
            ENDIF
            IF (st%L4A2(4)) THEN
              st%R4S3(4) = st%R4A2(I) + 1.
            ENDIF
          ENDIF
        ENDIF
 41   CONTINUE
      WRITE(6,*) '** TEST NO. 4 ***'
      WRITE(6,*)  st%R4S1,st%R4S2,st%L4S1,st%L4S2,st%R4A1,st%R4A2,st%L4A1,st%L4A2,st%R4S3,st%L4S3
!
!CCCCCCCCCCCCC
! TEST NO. 5 C
!CCCCCCCCCCCCC
      DO 50 I=1,10
        st%R4S1 = st%R4A1(I)
        IF (st%R4S1.EQ.I) THEN
          st%R4A1(I) = st%R4S1
        ENDIF
        st%L4S1 = st%L4A1(I)
        IF (st%L4S1) THEN
          st%L4A1(I) = .NOT.st%L4S1
        ENDIF
        st%R4S3(5) = st%R4A2(I)
        IF (st%R4S3(5).NE.I) THEN
          st%R4S2 = st%R4A2(I) + st%R4A1(I)
          st%L4S2 = st%L4A1(I).AND.st%L4A2(I)
        ELSE
          st%R4S2 = st%R4A1(I) + 1.
          st%L4S2 = st%L4A2(I).OR.st%L4A1(I)
        ENDIF
 50   CONTINUE
      WRITE(6,*) '** TEST NO. 5 ***'
      WRITE(6,*) st%R4S1,st%R4S2,st%L4S1,st%L4S2,st%R4A1,st%R4A2,st%L4A1,st%L4A2,st%R4S3,st%L4S3
!
!
      STOP
      END

!             CVCT8015            LEVEL=1        DATE=84.07.12
!             CVCT8015            LEVEL=2        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8015                                       C
!  2. PURPOSE        : BUSY ON EXIT  STORE & FETCH IN BLOCK  (4)      C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 9                                   C
!*********************************************************************C
!
      PROGRAM CV8015
      type TAG_R
      REAL * 4    R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)
      end type
      type TAG_L
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)
      end type
      type (TAG_R)::stR
      type (TAG_L)::stL
      DATA stR%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA stR%R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      DATA stL%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
           ,    .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA stL%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
           ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA stR%R4S1/1./,stR%R4S2/1./,stR%R4S3/10*1./
      DATA stL%L4S1/.TRUE./,stL%L4S2/.TRUE./,stL%L4S3/10*.TRUE./
!
      WRITE(6,*) '#### CVCT8015 ## BUSY ON EXIT ####'
!CCCCCCCCCCCCCC
! NO. 4       C
!CCCCCCCCCCCCCC
      DO 10 I=1,10
        IF (stL%L4A1(I))  THEN
          stR%R4S1 = stR%R4A1(I)
          stR%R4S3(1) = stR%R4A1(I) + stR%R4A2(I)
          stL%L4S1 = stL%L4A1(I)
          stL%L4S3(1) = .NOT.stL%L4A2(I)
        ENDIF
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 4 **'
      WRITE(6,*) stR%R4S1,stR%R4S3(1),stL%L4S1,stL%L4S3(1)
!
!CCCCCCCCC
! 4 - 1  C
!CCCCCCCCC
      DO 20 I=1,10
        IF (stL%L4A2(I)) THEN
          stR%R4S1 = stR%R4A1(I) * stR%R4A2(I)
          stR%R4S3(2) = stR%R4A1(I) - stR%R4A2(I)
          stL%L4S1 = .NOT.stL%L4A1(I)
          stL%L4S3(2) = stL%L4A1(I).AND.stL%L4A2(I)
        ENDIF
        stR%R4A1(I) = stR%R4S1
        stR%R4A2(I) = stR%R4S3(1)
        stL%L4A1(I) = stL%L4S1
        stL%L4A2(I) = stL%L4S3(1)
 20   CONTINUE
      WRITE(6,*) '** TEST NO. 4-1 **'
      WRITE(6,*)  stR%R4S1,stR%R4S3(1),stL%L4S1,stL%L4S3(1)
      WRITE(6,*)  stR%R4A1,stR%R4A2,stL%L4A1,stL%L4A2
!CCCCCCCCCC
! 4 - 2   C
!CCCCCCCCCC
      DO 30 I=1,10
        IF (stL%L4A2(I)) THEN
          stL%L4S1 = stL%L4A1(I).AND.stL%L4A2(I)
          IF (stL%L4S1) THEN
            stL%L4A1(I) = stL%L4S1
            stL%L4S2 = stL%L4A1(I).AND.stL%L4A2(I)
          ELSE
            stL%L4A1(I) = stL%L4A2(I)
            stL%L4S2 = .NOT.stL%L4A2(I)
          ENDIF
        ENDIF
 30   CONTINUE
      WRITE(6,*) '** TEST NO. 4 - 2 **'
      WRITE(6,*) stR%R4S1,stL%L4S1,stL%L4S2
      WRITE(6,*) stR%R4A1,stL%L4A1
!CCCCCCCCCC
! 4 - 3   C
!CCCCCCCCCC
      DO 40 I=1,10
        stR%R4S1 = stR%R4A1(I) + 1.
        IF (stR%R4S1.GT.0) THEN
          stR%R4S2 = stR%R4A1(I) + stR%R4A2(I) + 1.
        ENDIF
        IF (stR%R4S2.GT.0) THEN
          stL%L4S1 = stL%L4A1(I)
            IF (stL%L4S1) THEN
               stL%L4A1(I) = stL%L4S1
             ENDIF
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** TEST NO. 4 - 3 **'
      WRITE(6,*)  stR%R4S1,stR%R4S2,stL%L4S1,stL%L4S2,stR%R4A1,stL%L4A1
!
!CCCCCCCCCCC
!  4 - 4   C
!CCCCCCCCCCC
      DO 50 I=1,10
        stR%R4S1 = stR%R4A1(I) + stR%R4A2(I)
        IF (stR%R4S1.NE.I) THEN
          stR%R4A1(I) = stR%R4S1
          stR%R4A1(I) = stR%R4S1
        ENDIF
        stR%R4S1 = stR%R4A1(I) + stR%R4A2(I)
        IF (stR%R4S1.GT.0) THEN
          stR%R4S3(1) = stR%R4A1(I)+ stR%R4A2(I)
          stL%L4S3(1) = stL%L4A1(I).AND.stL%L4A2(I)
        ENDIF
        stL%L4S1 = stL%L4A1(I).AND.stL%L4A2(I)
        IF (stL%L4S1) THEN
           stL%L4A1(I) = stL%L4S1
           stL%L4A1(I) = stL%L4S1
        ENDIF
 50   CONTINUE
      WRITE(6,*) '** TETS NO. 4 - 4 **'
      WRITE(6,*) stR%R4S1,stR%R4A1,stL%L4S1,stL%L4A1,stR%R4S3(1),stL%L4S3(1)
!
!CCCCCCCCCC
!  4 - 5  C
!CCCCCCCCCC
      DO 60 I=1,10
        stR%R4S1 = stR%R4A1(I) + 1.
        IF (stR%R4S1.GT.0) GOTO 60
        stR%R4A1(I) = stR%R4S1
        stR%R4S1 = stR%R4A1(I) + 2.
        IF (stR%R4S1.LT.0 ) GOTO 60
        stR%R4A1(I) = stR%R4S1
        stL%L4S1 = stL%L4A1(I)
        IF (stL%L4S1)  GOTO 60
        stL%L4A1(I) = stL%L4S1
 60   CONTINUE
      WRITE(6,*) '** TETS NO. 4 - 5 **'
      WRITE(6,*) stR%R4S1,stL%L4S1,stR%R4A1,stL%L4A1
!
!CCCCCCCCCCCC
!  4 - 6    C
!CCCCCCCCCCCC
      stR%R4S1 = 10.
      DO 70 I=1,stR%R4S1
        stR%R4S1 = stR%R4A1(I) + I
        IF (stR%R4S1.GT.10) GOTO 71
 70   CONTINUE
 71   CONTINUE
      WRITE(6,*) '** TEST NO. 4 - 6 **'
      WRITE(6,*) stR%R4S1
!
!CCCCCCCCCCCC
!  4 - 7    C
!CCCCCCCCCCCC
      DO 83 JJ=1,10
      DO 80 I=1,10
        stR%R4S1 = stR%R4A1(I) + stR%R4A2(I)
 80   stR%R4A1(I) = stR%R4S1
      DO 81 I=1,10
        stR%R4S1 = stR%R4A1(I) + stR%R4A2(I)
 81   stR%R4A1(I) = stR%R4S1
      DO 82 I=1,10
        stL%L4S1 = stL%L4A1(I).AND.  stL%L4A2(I)
 82   stL%L4A1(I) = stL%L4S1
!
 83   CONTINUE
      WRITE(6,*) '** TEST NO. 1 - 7 **'
      WRITE(6,*) stR%R4S1,stR%R4A1,stL%L4S1,stL%L4A1
!
!CCCCCCCCCC
!  1 - 8  C
!CCCCCCCCCC
      DO 90 I=1,10
        stR%R4S1 = stR%R4A1(I) + stR%R4A2(I)
        IF (stR%R4S1.GT.0) GOTO 91
        stR%R4S1 = stR%R4A2(I)
 91     stR%R4S3(1) = stR%R4S3(1) + stR%R4A1(I)
        IF (stR%R4S1.GT.0) GOTO 92
        stR%R4S3(1) = stR%R4A1(I)
 92     stL%L4S1 = stL%L4A1(I) .AND. stL%L4A2(I)
        IF (stL%L4S1)  GOTO 90
        stL%L4A1(I) = stL%L4S1
 90   CONTINUE
      WRITE(6,*) '** TEST NO. 1 - 8 **'
      WRITE(6,*) stR%R4S1,stL%L4S1,stR%R4A1,stL%L4A1
!
!
      STOP
      END

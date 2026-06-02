!             CVCT8013            LEVEL=1        DATE=84.07.12
!             CVCT8013            LEVEL=2        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8013                                       C
!  2. PURPOSE        : BUSY ON EXIT  STORE & FETCH IN BLOCK (2)       C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 9                                   C
!*********************************************************************C
!
      PROGRAM CV8013
      type str_R4
      REAL * 4    S1,S3(10),A1(10),A2(10)
      end type
      type str_L4
      LOGICAL * 4 S1,S2,S3(10),A1(10),A2(10)
      end type
      type (str_R4)::R4
      type (str_L4)::L4
      DATA R4%A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4%A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      DATA L4%A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
           ,    .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4%A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
           ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA R4%S3/10*1./,L4%S3/10*.TRUE./
      DATA R4%S1/1./,L4%S1/.TRUE./,L4%S2/.TRUE./
!
      WRITE(6,*) '#### CVCT8013 ## BUSY ON EXIT ####'
!CCCCCCCCCCCCCC
! 2           C
!CCCCCCCCCCCCCC
      DO 10 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 =  R4%A1(I) + 1.
          L4%S1 = L4%A1(I) .AND. L4%A2(I)
        ELSE
          R4%S1 = R4%A1(I) + R4%A2(I)
          L4%S1 = .NOT.L4%A1(I)
        ENDIF
 10   CONTINUE
!
      DO 11 I=1,10
        IF (R4%S1.GT.0) THEN
          R4%S3(1) = R4%A1(I) + 1.
        ELSE
          R4%S3(2) = R4%A2(I) + 2.
        ENDIF
 11   CONTINUE
      WRITE(6,*) '** TEST NO. 2 **'
      WRITE(6,*) R4%S1,L4%S1,R4%S3(1),L4%S3(1)
!
!CCCCCCCCC
! 2 - 1  C
!CCCCCCCCC
      DO 20 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = R4%A1(I) + R4%A2(I)
          L4%S1 = .NOT.L4%A1(I)
          L4%S2 = L4%A2(I)
          R4%S3(1) = R4%A1(I) + 2.
          L4%S3(1) = L4%A1(I) .AND. L4%A2(I)
        ELSE
          R4%S1 =  R4%A2(I)   + 1.
          L4%S1 = L4%A1(I)
          L4%S2 = L4%A2(I)
          R4%S3(1) = R4%A1(I) + 1.
          L4%S3(1) = L4%A1(I) .OR. L4%A2(I)
        ENDIF
 20   CONTINUE
      WRITE(6,*) '** TEST NO. 2-1 **'
      WRITE(6,*)  R4%S1,L4%S1,R4%A1,L4%A1
!
!CCCCCCCCCC
! 2 - 2   C
!CCCCCCCCCC
      DO 30 I=1,10
        IF (R4%S1.EQ.I) THEN
          R4%S1 = R4%A1(I) * R4%A2(I)
          L4%S1 = L4%A1(I) .AND. L4%A2(I)
          R4%S3(1) = R4%S1 + R4%A1(I)
          L4%S3(1) = L4%A1(I) .OR. L4%A2(I)
        ELSE
          R4%S1 = R4%S1 + 1
          L4%S1 = .NOT.L4%A2(I)
          R4%S3(2) = R4%A1(I) - R4%A2(I) + 1.
          L4%S3(2) = .NOT.(L4%A1(I).OR.L4%A2(I))
        ENDIF
        R4%S1 = R4%S1 + R4%A1(I)
        R4%A2(I) = R4%S1
        R4%S3(3) = R4%S3(2) + R4%S3(1)
        L4%S3(3) = L4%S3(1).AND.L4%S3(2)
 30   CONTINUE
      WRITE(6,*) '** TEST NO. 2 - 2 **'
      WRITE(6,*) R4%S1,L4%S1,R4%S3(1),L4%S3(1)
      WRITE(6,*) R4%A2
!CCCCCCCCCC
! 2 - 3   C
!CCCCCCCCCC
      DO 40 I=1,10
        L4%S1 = L4%A1(I) .AND. L4%A2(I)
        IF (L4%S1) THEN
          L4%S1 = .NOT.L4%A1(I)
          L4%S3(1) = L4%S1.AND.L4%A2(I)
        ELSE
          L4%S1 = L4%A1(I) .AND. L4%A2(I)
          L4%S3(2) = L4%S1
        ENDIF
        R4%S1 = R4%A1(I) + R4%A2(I)
        IF (R4%S1.GT.0) THEN
          R4%S1 = R4%A1(I) + 1.
          R4%S3(1) = R4%A2(I) + R4%A1(I)
        ELSE
          R4%S1 = R4%A1(I) + 2.
          R4%S3(2) = R4%A2(I) + R4%S1
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** TEST NO. 2 - 3 **'
      WRITE(6,*)  L4%S1,L4%S3(1),R4%S1,R4%S3(1)
!
!CCCCCCCCCCC
!  2 - 4   C
!CCCCCCCCCCC
      DO 50 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = R4%A1(I) + R4%A2(I)
          L4%S1 = .NOT. L4%A1(I)
          IF (L4%S1) THEN
             R4%A1(I) = R4%S1
             L4%A1(I) = L4%S1
          ENDIF
        ELSE
          R4%S1 = R4%A1(I) + 2.
          L4%S1 = L4%A1(I) .AND. L4%A2(I)
          IF (R4%S1.GT.0) THEN
            R4%A1(I) = R4%S1
            L4%A1(I) = L4%S1
          ENDIF
        ENDIF
 50   CONTINUE
      DO 51 I=1,10
        IF (L4%A1(I)) THEN
          R4%S3(1) = R4%A1(I) + 4.
          L4%S3(1) = .NOT.L4%A1(I)
          IF (L4%S3(1)) THEN
             R4%A2(I) = R4%S3(1)
             L4%A2(I) = L4%S3(1)
          ENDIF
        ELSE
          R4%S3(1) = R4%A1(I) + 2.
          L4%S3(1) = L4%A1(I) .AND. L4%A2(I)
          IF (R4%S3(1).GT.0) THEN
            R4%A1(I) = R4%S3(2)
            L4%A1(I) = L4%S3(2)
          ENDIF
        ENDIF
 51   CONTINUE
      WRITE(6,*) '** TETS NO. 2 - 4 **'
      WRITE(6,*) R4%S1,L4%S1,R4%A1,L4%A1,R4%A2,L4%A2
      WRITE(6,*) R4%S3(1),L4%S3(1),R4%S3(2),L4%S3(2)
!
!CCCCCCCCCC
!  2 - 5  C
!CCCCCCCCCC
      DO 60 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = R4%A1(I) + R4%A2(I)
          L4%S1 = .NOT.L4%A1(I)
          IF (R4%S1.GT.0) GOTO 60
          IF (L4%S1) GOTO 60
        ELSE
          R4%S1 = R4%A2(I) - R4%A1(I)
          L4%S1 = L4%A1(I).AND.L4%A2(I)
          IF (R4%S1.GT.0) GOTO 60
          IF (L4%S1) GOTO 60
        ENDIF
 60   CONTINUE
      DO 61 I=1,10
        IF (L4%A1(I)) THEN
          R4%S3(1) = R4%A1(I) + R4%A2(I)
          L4%S3(1)  = .NOT.L4%A1(I)
          IF (R4%S3(1).GT.0) GOTO 61
          IF (L4%S3(1)) GOTO 61
        ELSE
          R4%S3(1) = R4%A2(I) - R4%A1(I)
          L4%S3(1) = L4%A1(I).AND.L4%A2(I)
          IF (R4%S3(1).GT.0) GOTO 61
          IF (L4%S3(1)) GOTO 61
        ENDIF
 61   CONTINUE
      WRITE(6,*) '** TETS NO. 1 - 5 **'
      WRITE(6,*) R4%S1,L4%S1,R4%S3(1),L4%S3(1)
!
!CCCCCCCCCCCC
!  2 - 6    C
!CCCCCCCCCCCC
      R4%S1 = 10.
      DO 70 I=1,R4%S1
        IF (R4%S1.GT.0) THEN
          R4%S1 = R4%A1(I) + 1.
        ELSE
          R4%S1 = R4%A1(I) + 2.
        ENDIF
        R4%S1 = R4%A1(I) + I
        IF (R4%S1.GT.10) GOTO 71
 70   CONTINUE
 71   CONTINUE
      WRITE(6,*) '** TEST NO. 2 - 6 **'
      WRITE(6,*) R4%S1
!
!CCCCCCCCCCCC
!  2 - 7    C
!CCCCCCCCCCCC
      DO 83 JJ=1,10
        DO 80 I=1,10
          IF (L4%A1(I)) THEN
            R4%S1 = R4%A1(I) + R4%A2(I)
            L4%S1 = L4%A1(I).AND.L4%A2(I)
          ELSE
            R4%S1 = R4%A1(I) - R4%A2(I)
            L4%S1 = L4%A1(I).AND.L4%A2(I)
          ENDIF
 80     R4%A1(I) = R4%S1
        DO 81 I=1,10
          IF (L4%A1(I)) THEN
            R4%S3(1) = R4%A1(I) + R4%S1
            L4%S3(1) = L4%A1(I).AND.L4%A2(I)
          ELSE
            R4%S3(1) = R4%A1(I) - R4%A2(I)
            L4%S3(1) = .NOT.L4%A2(I)
          ENDIF
 81     R4%A1(I) = R4%S1
        DO 82 I=1,10
          IF (L4%A2(I)) THEN
            L4%S1 = L4%A1(I) .AND.L4%A2(I)
            L4%S2 = .NOT. L4%A2(I)
          ELSE
            L4%S1 = L4%A1(I)
            L4%S2 = .NOT. L4%A2(I)
          ENDIF
 82     L4%A1(I) = L4%S1
!
 83   CONTINUE
      WRITE(6,*) '** TEST NO. 2 - 7 **'
      WRITE(6,*) R4%S1,L4%S1,L4%S2,R4%A1,L4%A1,R4%S3(1),L4%S3(1)
!
!CCCCCCCCCC
!  1 - 8  C
!CCCCCCCCCC
      DO 90 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = R4%A1(I) + 1.
          L4%S1 = .NOT. L4%A2(I)
          IF (R4%S1.GT.0) GOTO 90
        ELSE
          R4%S1 = R4%A2(I) + 1.
          L4%S1 = L4%A1(I).AND.L4%A2(I)
          IF (L4%S1) GOTO 90
        ENDIF
        R4%A1(I) = R4%S1
         L4%A1(I) = L4%S1.AND.L4%A2(I)
 90   CONTINUE
      WRITE(6,*) '** TEST NO. 2 - 8 **'
      WRITE(6,*) R4%S1,L4%S1,R4%A1,L4%A1
!
!
      STOP
      END

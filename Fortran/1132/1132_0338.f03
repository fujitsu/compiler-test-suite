!             CVCT8010            LEVEL=3        DATE=89.10.18
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8010                                       C
!  2. PURPOSE        : BUSY ON EXIT  : STORE OR FETCH IN SCR          C
!                        SIMPLE VARIABLE ( WITH MASK )                C
!  3. RESULTS        : V                                              C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 6                                   C
!*********************************************************************C
!
      PROGRAM CV8010
      type str_R4
      REAL * 4 S1,S2,S3,A1(10),A2(10)
      end type
      type str_L4
      LOGICAL * 4 S1,S2,S3,S4,S5,A1(10),A2(10)
      end type
      type (str_R4)::R4
      type (str_L4)::L4
      DATA R4%A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4%A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA L4%A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4%A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
! u2 add
      R4%S2 = 0
!
      WRITE(6,*) '#### CVCT8010 ## BUSY ON EXIT ####'
!CCCCCCCCC
! NO. 1  C
!CCCCCCCCC
      DO 10 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = I
          L4%S2 = .TRUE.
          L4%S3 = .FALSE.
          L4%S1 = .TRUE.
          L4%S2 =.FALSE.
          L4%S3 = L4%A1(I) .AND. L4%A2(I)
          L4%S4 = .NOT.L4%S3
          L4%S5 = I.EQ.R4%A1(I)
        ENDIF
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 1 ***'
      WRITE(6,*) R4%S1
      WRITE(6,*) L4%S1 , L4%S2 , L4%S3
!
!CCCCCCCCC
! NO. 2  C
!CCCCCCCCC
      DO 20 I=1,10
        IF (L4%A2(I)) THEN
          R4%A1(I) = R4%S1
          R4%A2(I) = R4%S2
          R4%S1 = R4%A2(I)
          R4%A1(I) = R4%S1
          L4%A1(I) = L4%S1
          L4%A2(I) = L4%S2
          L4%S1 = L4%A1(I) .AND. L4%A2(I)
          L4%A1(I) = L4%S1
        ENDIF
 20   CONTINUE
!
      WRITE(6,*) '** TEST NO. 2 **'
      WRITE(6,*) R4%A1,R4%A2,R4%S1
      WRITE(6,*) L4%A1,L4%A2,L4%S1
!
!CCCCCCCCC
! NO. 3  C
!CCCCCCCCC
      DO 30 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = R4%A1(I) + R4%A2(I) + 1.
          R4%A1(I) = R4%S1 + 1.
          R4%S1 = R4%A1(I) + R4%A2(I)
          L4%A1(I) = .NOT.L4%S1
          L4%S1 = L4%A1(I) .OR. L4%A2(I)
          L4%A2(I) = L4%S1 .AND. L4%S2
          L4%S2 = .NOT. L4%A2(I)
        ENDIF
 30   CONTINUE
!
      WRITE(6,*) '** TEST NO. 3 **'
      WRITE(6,*) R4%S1 , R4%A1
      WRITE(6,*) L4%A1 , L4%S1 , L4%A2,L4%S2
!
!CCCCCCCCCC
! NO. 4   C
!CCCCCCCCCC
      DO 40 I=1,10
        IF (L4%A2(I)) THEN
          R4%A1(I) = R4%S1
          R4%S1 = R4%A2(I)
          R4%A1(I) = R4%S1 + R4%A2(I)
          L4%A1(I) = L4%S1
          L4%S1 = .NOT. L4%A1(I)
          L4%S2 = L4%S1.AND. L4%A2(I)
          L4%A1(I) = L4%S1.AND.L4%S2
        ENDIF
 40   CONTINUE
!
      WRITE(6,*) '** TEST NO. 4 **'
      WRITE(6,*) R4%A1,R4%S1,L4%A1,L4%S1,L4%S2
!
!CCCCCCCCC
! NO. 5  C
!CCCCCCCCC
      DO 50 I=1,10
        DO 51 J=1,10
          IF (L4%A2(I)) THEN
             R4%S1 = R4%A1(J)
             R4%S2 = I
             R4%S3 = J
             R4%S1 = R4%S2 + R4%S3
             L4%S1 = I.EQ.R4%A1(J)
             L4%S2 = J.EQ.R4%A1(J)
             L4%S3 = L4%S1 .AND. L4%S2
             L4%S4 = L4%A1(J) .AND. L4%S1
           ENDIF
 51     CONTINUE
 50   CONTINUE
!
      WRITE(6,*) '** TEST NO. 5 **'
      WRITE(6,*) R4%S1,R4%S2,R4%S2,L4%S1,L4%S2,L4%S3,L4%S4,L4%S5
!
!CCCCCCCCC
! NO. 6  C
!CCCCCCCCCC
      DO 60 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = R4%A1(I)
          R4%S2 = I
          L4%S1 = L4%A1(I)
          L4%S2 = I.EQ.R4%A1(I)
          DO 61 J=1,10
            IF (L4%A2(I)) THEN
              R4%S1 = R4%A1(J) + R4%A1(J)
              L4%S1 = L4%S1 .AND.L4%A1(J)
              L4%S2 = L4%S1 .OR. L4%A1(J)
            ENDIF
 61       CONTINUE
        ENDIF
 60   CONTINUE
!
      WRITE(6,*) '** TEST NO. 6 **'
      WRITE(6,*) R4%S1,R4%S2,L4%S1,L4%S2
!
!CCCCCCCCC
! NO. 7  C
!CCCCCCCCC
      DO 70 I=1,10
        IF (L4%A1(I)) THEN
          R4%A1(I) = R4%S1
          L4%A1(I) = L4%S1
          L4%A2(I) = L4%S2.AND.L4%S1
          DO 71 J=1,10
            IF (L4%A2(I)) THEN
              R4%S1 = R4%A1(J)
              L4%S1 = L4%A1(J)
              L4%S2 = J.EQ.R4%A1(I)
              L4%S3 = .NOT.L4%A2(I)
              L4%S4 = L4%A1(I) .AND.L4%A2(J)
            ENDIF
 71       CONTINUE
        ENDIF
 70   CONTINUE
!
      WRITE(6,*) '** TEST NO. 7 **'
      WRITE(6,*) R4%A1
      WRITE(6,*) L4%A1,L4%A2,R4%S1,L4%S1,L4%S2,L4%S3,L4%S4
!
!CCCCCCCCC
! NO. 8  C
!CCCCCCCCC
      DO 80 I=1,10
        DO 81 J=1,10
          IF (L4%A1(I)) THEN
            R4%S1 = R4%A1(J) + 1.
          ENDIF
 81     CONTINUE
        DO 82 K=1,10
          IF (L4%A2(I)) THEN
            R4%S1 = R4%A1(K) + R4%A2(K)
          ENDIF
 82     CONTINUE
 80   CONTINUE
!
      WRITE(6,*) '**TEST NO. 8 **'
      WRITE(6,*) R4%S1
!
!CCCCCCCCC
! NO. 9  C
!CCCCCCCCC
      DO 90 I=1,10
        DO 91 J=1,10
          IF (L4%A1(I)) THEN
            R4%S1 = R4%A1(J) + 1.
          ENDIF
 91     CONTINUE
        DO 92 K=1,10
          IF (L4%A2(I)) THEN
            R4%A1(K) = R4%S1
          ENDIF
 92     CONTINUE
 90   CONTINUE
!
      WRITE(6,*) '** TEST NO. 9 **'
      WRITE(6,*) R4%S1 ,R4%A1
!
!CCCCCCCCCC
! NO. 10  C
!CCCCCCCCCC
      DO 100 I=1,10
        IF (L4%A2(I)) THEN
          R4%S1 = R4%A1(I) + 1.
          DO 101 J=1,10
            IF(L4%A2(I)) THEN
              R4%S1 = J
              DO 102 K=1,10
                IF (L4%A1(I)) THEN
                  R4%S1 = R4%A1(K)
                ENDIF
 102          CONTINUE
            ENDIF
 101      CONTINUE
        ENDIF
 100  CONTINUE
!
      WRITE(6,*) '** TEST NO. 10 **'
      WRITE(6,*) R4%S1
!
!CCCCCCCCCC
! NO. 11  C
!CCCCCCCCCC
      DO 110 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1 = R4%A1(I)
          DO 111 J=1,10
            IF (L4%A2(I)) THEN
              R4%A1(J) = R4%S1
              DO 112 K=1,10
                IF (L4%A1(I)) THEN
                  R4%S1 = R4%A1(K)
                ENDIF
 112          CONTINUE
            ENDIF
 111      CONTINUE
        ENDIF
 110  CONTINUE
!
      WRITE(6,*) '** TEST NO. 11 **'
      WRITE(6,*) R4%S1 ,R4%A1
!
!
      STOP
      END

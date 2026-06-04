!             CVCT8009            LEVEL=4        DATE=89.10.09
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8009                                       C
!  2. PURPOSE        : BUSY ON EXIT  : STORE OR FETCH IN SCR          C
!                        ARAY ELEMENT    ( WITH MASK )                C
!  3. RESULTS        : V                                              C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 6                                   C
!*********************************************************************C
!
      PROGRAM CV8009
      type R4_str
      REAL * 4 S1(10),A1(10),A2(10)
      end type
      type L4_str
      LOGICAL * 4 S1(10),A1(10),A2(10)
      end type
      type (R4_str)::R4
      type (L4_str)::L4
      DATA R4%A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4%A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4%S1/10*0.0/
      DATA L4%A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4%A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4%S1/10*.FALSE./
!
      WRITE(6,*) '#### CVCT8009 ## BUSY ON EXIT ####'
!CCCCCCCCC
! NO. 1  C
!CCCCCCCCC
      DO 10 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1(1) = I
          IF ((R4%S1(1) + R4%A1(I) + 1.) .EQ. 0.0) THEN
             L4%S1(2) = .FALSE.
          ELSE
             L4%S1(2) = .TRUE.
          ENDIF
          IF ((R4%A1(I) * I) .EQ. 0.0) THEN
             L4%S1(3) = .FALSE.
          ELSE
             L4%S1(3) = .TRUE.
          ENDIF
          L4%S1(1) = .TRUE.
          L4%S1(2) =.FALSE.
          L4%S1(3) = L4%A1(I) .AND. L4%A2(I)
          L4%S1(4) = .NOT.L4%S1(3)
          L4%S1(5) = I.EQ.R4%A1(I)
        ELSE
          R4%S1(1) = I
          IF ((R4%S1(1) + R4%A1(I) + 1.) .EQ. 0.0) THEN
             L4%S1(2) = .FALSE.
          ELSE
             L4%S1(2) = .TRUE.
          ENDIF
          IF ((R4%A1(I) * I) .EQ. 0.0) THEN
             L4%S1(3) = .FALSE.
          ELSE
             L4%S1(3) = .TRUE.
          ENDIF
          L4%S1(1) = .TRUE.
          L4%S1(2) =.FALSE.
          L4%S1(3) = L4%A1(I) .AND. L4%A2(I)
          L4%S1(4) = .NOT.L4%S1(3)
          L4%S1(5) = I.EQ.R4%A1(I)
        ENDIF
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 1 ***'
      WRITE(6,1000) R4%S1
      WRITE(6,1000) L4%S1
!
!CCCCCCCCC
! NO. 2  C
!CCCCCCCCC
      DO 20 I=1,10
        IF  (L4%A1(I)) THEN
          R4%A1(I) = R4%S1(1)
          R4%A2(I) = R4%S1(2)
          R4%S1(1) = R4%A2(I)
          R4%A1(I) = R4%S1(1)
          L4%A1(I) = L4%S1(1)
          L4%A2(I) = L4%S1(2)
          L4%S1(3) = L4%A1(I) .AND. L4%A2(I)
          L4%A1(I) = L4%S1(4)
        ENDIF
 20   CONTINUE
!
      WRITE(6,*) '** TEST NO. 2 **'
      WRITE(6,1000) R4%A1,R4%A2,R4%S1
      WRITE(6,1000) L4%A1,L4%A2,L4%S1
!
!CCCCCCCCC
! NO. 3  C
!CCCCCCCCC
      DO 30 I=1,10
        IF (L4%A2(I)) THEN
          R4%S1(1) = R4%A1(I) + R4%A2(I) + 1.
          R4%A1(I) = R4%S1(2) + 1.
          R4%S1(3) = R4%A1(I) + R4%A2(I)
          L4%A1(I) = .NOT.L4%S1(1)
          L4%S1(4) = L4%A1(I) .OR. L4%A2(I)
          L4%A2(I) = L4%S1(1) .AND. L4%S1(2)
          L4%S1(5)  = .NOT. L4%A2(I)
        ENDIF
 30   CONTINUE
!
      WRITE(6,*) '** TEST NO. 3 **'
      WRITE(6,1000) R4%S1 , R4%A1
      WRITE(6,1000) L4%A1 , L4%S1
!
!CCCCCCCCCC
! NO. 4   C
!CCCCCCCCCC
      DO 40 I=1,10
        IF (L4%A1(I)) THEN
          R4%A1(I) = R4%S1(1)
          R4%S1(2) = R4%A2(I)
          R4%A1(I) = R4%S1(3) + R4%A2(I)
          L4%A1(I) = L4%S1(1)
          L4%S1(4) = .NOT. L4%A1(I)
          L4%S1(5) = L4%S1(6).AND. L4%A2(I)
          L4%A1(I) = L4%S1(1).AND.L4%S1(2)
        ENDIF
 40   CONTINUE
!
      WRITE(6,*) '** TEST NO. 4 **'
      WRITE(6,1000) R4%A1,R4%S1,L4%A1,L4%S1
!
!CCCCCCCCC
! NO. 5  C
!CCCCCCCCC
      DO 50 I=1,10
        DO 51 J=1,10
          IF (L4%A1(I)) THEN
             R4%S1(1) = R4%A1(J)
             R4%S1(2) = I
             R4%S1(3) = J
             R4%S1(4) = R4%S1(2) + R4%S1(3)
             L4%S1(1) = I.EQ.R4%A1(J)
             L4%S1(2) = J.EQ.R4%A1(J)
             L4%S1(3) = L4%S1(5) .AND. L4%S1(6)
             L4%S1(4) = L4%A1(J) .AND. L4%S1(1)
          ENDIF
 51     CONTINUE
 50   CONTINUE
!
      WRITE(6,*) '** TEST NO. 5 **'
      WRITE(6,1000) R4%S1,L4%S1
!
!CCCCCCCCC
! NO. 6  C
!CCCCCCCCCC
      DO 60 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1(1) = R4%A1(I)
          R4%S1(2) = I
          L4%S1(1) = L4%A1(I)
          L4%S1(2) = I.EQ.R4%A1(I)
          DO 61 J=1,10
            IF (L4%A1(I)) THEN
              R4%S1(3) = R4%A1(J) + R4%A1(J)
              L4%S1(3) = L4%S1(1) .AND.L4%A1(J)
              L4%S1(4) = L4%S1(1) .OR. L4%A1(J)
            ENDIF
 61     CONTINUE
        ENDIF
 60   CONTINUE
!
      WRITE(6,*) '** TEST NO. 6 **'
      WRITE(6,1000) R4%S1,L4%S1
!
!CCCCCCCCC
! NO. 7  C
!CCCCCCCCC
      DO 70 I=1,10
        IF (L4%A1(I)) THEN
          R4%A1(I) = R4%S1(1)
          L4%A1(I) = L4%S1(1)
          L4%A2(I) = L4%S1(1).AND.L4%S1(2)
          DO 71 J=1,10
            IF (L4%A2(I))  THEN
              R4%S1(3) = R4%A1(J)
              L4%S1(3) = L4%A1(J)
              L4%S1(4) = J.EQ.R4%A1(I)
              L4%S1(5) = .NOT.L4%A2(I)
              L4%S1(6) = L4%A1(I) .AND.L4%A2(J)
            ENDIF
 71     CONTINUE
        ENDIF
 70   CONTINUE
!
      WRITE(6,*) '** TEST NO. 7 **'
      WRITE(6,1000) R4%A1,L4%A1,L4%A2,R4%S1,L4%S1
!
!CCCCCCCCC
! NO. 8  C
!CCCCCCCCC
      DO 80 I=1,10
        DO 81 J=1,10
          IF (L4%A1(I)) THEN
            R4%S1(1) = R4%A1(J) + 1.
          ENDIF
 81     CONTINUE
        DO 82 K=1,10
          IF (L4%A2(I)) THEN
            R4%S1(1) = R4%A1(K) + R4%A2(K)
          ENDIF
 82     CONTINUE
 80   CONTINUE
!
      WRITE(6,*) '**TEST NO. 8 **'
      WRITE(6,1000) R4%S1
!
!CCCCCCCCC
! NO. 9  C
!CCCCCCCCC
      DO 90 I=1,10
        DO 91 J=1,10
          IF (L4%A1(I))  THEN
            R4%S1(1) = R4%A1(J) + 1.
          ENDIF
 91     CONTINUE
        DO 92 K=1,10
          IF (L4%A2(I)) THEN
            R4%A1(K) = R4%S1(1)
          ENDIF
 92     CONTINUE
 90   CONTINUE
!
      WRITE(6,*) '** TEST NO. 9 **'
      WRITE(6,1000) R4%S1 ,R4%A1
!
!CCCCCCCCCC
! NO. 10  C
!CCCCCCCCCC
      DO 100 I=1,10
        IF (L4%A1(I)) THEN
          R4%S1(1) = R4%A1(I) + 1.
          DO 101 J=1,10
            IF (L4%A2(I)) THEN
              R4%S1(1) = J
              DO 102 K=1,10
                IF (L4%A1(I)) THEN
                R4%S1(1) = R4%A1(K)
                ENDIF
 102          CONTINUE
            ENDIF
 101      CONTINUE
        ENDIF
 100  CONTINUE
!
      WRITE(6,*) '** TEST NO. 10 **'
      WRITE(6,1000) R4%S1
!
!CCCCCCCCCC
! NO. 11  C
!CCCCCCCCCC
      DO 110 I=1,10
        IF (L4%A1(I))  THEN
          R4%S1(1) = R4%A1(I)
          DO 111 J=1,10
            IF (L4%A2(I)) THEN
              R4%A1(J) = R4%S1(1)
              DO 112 K=1,10
                IF (L4%A1(I)) THEN
                  R4%S1(1) = R4%A1(K)
                ENDIF
 112          CONTINUE
            ENDIF
 111      CONTINUE
        ENDIF
 110  CONTINUE
!
      WRITE(6,*) '** TEST NO. 11 **'
      WRITE(6,1000) R4%S1 ,R4%A1
 1000 FORMAT(' ',(6G13.6))
!
!
      STOP
      END

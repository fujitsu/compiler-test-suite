!             CVCT8008            LEVEL=2        DATE=89.10.18
!             CVCT8008            LEVEL=3        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8008                                       C
!  2. PURPOSE        : BUSY ON EXIT  : STORE OR FETCH IN SCR          C
!                        ARAY ELEMENT    ( NOT MASK )                 C
!  3. RESULTS        : V                                              C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 6                                   C
!*********************************************************************C
!
      PROGRAM CV8008
      type str_R4
      REAL * 4 S1(10),A1(10),A2(10)
      end type
      type str_L4
      LOGICAL * 4 S1(10),A1(10),A2(10)
      end type
      type (str_R4)::R4
      type (str_L4)::L4
      DATA R4%A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4%A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA L4%A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4%A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA R4%S1/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      DATA L4%S1/10*.TRUE./
!
      WRITE(6,*) '#### CVCT8008 ## BUSY ON EXIT ####'
!CCCCCCCCC
! NO. 1  C
!CCCCCCCCC
      DO 10 I=1,10
        R4%S1(1) = I
        L4%S1(2) = .TRUE.
        L4%S1(3) = .FALSE.
        L4%S1(1) = .TRUE.
        L4%S1(2) =.FALSE.
        L4%S1(3) = L4%A1(I) .AND. L4%A2(I)
        L4%S1(4) = .NOT.L4%S1(3)
        L4%S1(5) = I.EQ.R4%A1(I)
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 1 ***'
      WRITE(6,*) R4%S1
      WRITE(6,*) L4%S1
!
!CCCCCCCCC
! NO. 2  C
!CCCCCCCCC
      DO 20 I=1,10
        R4%A1(I) = R4%S1(1)
        R4%A2(I) = R4%S1(2)
        R4%S1(1) = R4%A2(I)
        R4%A1(I) = R4%S1(1)
        L4%A1(I) = L4%S1(1)
        L4%A2(I) = L4%S1(2)
        L4%S1(3) = L4%A1(I) .AND. L4%A2(I)
        L4%A1(I) = L4%S1(4)
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
        R4%S1(1) = R4%A1(I) + R4%A2(I) + 1.
        R4%A1(I) = R4%S1(2) + 1.
        R4%S1(3) = R4%A1(I) + R4%A2(I)
        L4%A1(I) = .NOT.L4%S1(1)
        L4%S1(4) = L4%A1(I) .OR. L4%A2(I)
        L4%A2(I) = L4%S1(1) .AND. L4%S1(2)
        L4%S1(5)  = .NOT. L4%A2(I)
 30   CONTINUE
!
      WRITE(6,*) '** TEST NO. 3 **'
      WRITE(6,*) R4%S1 , R4%A1
      WRITE(6,*) L4%A1 , L4%S1
!
!CCCCCCCCCC
! NO. 4   C
!CCCCCCCCCC
      DO 40 I=1,10
        R4%A1(I) = R4%S1(1)
        R4%S1(2) = R4%A2(I)
        R4%A1(I) = R4%S1(3) + R4%A2(I)
        L4%A1(I) = L4%S1(1)
        L4%S1(4) = .NOT. L4%A1(I)
        L4%S1(5) = L4%S1(6).AND. L4%A2(I)
        L4%A1(I) = L4%S1(1).AND.L4%S1(2)
 40   CONTINUE
!
      WRITE(6,*) '** TEST NO. 4 **'
      WRITE(6,*) R4%A1,R4%S1,L4%A1,L4%S1
!
!CCCCCCCCC
! NO. 5  C
!CCCCCCCCC
      DO 50 I=1,10
        DO 51 J=1,10
           R4%S1(1) = R4%A1(J)
           R4%S1(2) = I
           R4%S1(3) = J
           R4%S1(4) = R4%S1(2) + R4%S1(3)
           L4%S1(1) = I.EQ.R4%A1(J)
           L4%S1(2) = J.EQ.R4%A1(J)
           L4%S1(3) = L4%S1(5) .AND. L4%S1(6)
           L4%S1(4) = L4%A1(J) .AND. L4%S1(1)
 51     CONTINUE
 50   CONTINUE
!
      WRITE(6,*) '** TEST NO. 5 **'
      WRITE(6,*) R4%S1,L4%S1
!
!CCCCCCCCC
! NO. 6  C
!CCCCCCCCCC
      DO 60 I=1,10
        R4%S1(1) = R4%A1(I)
        R4%S1(2) = I
        L4%S1(1) = L4%A1(I)
        L4%S1(2) = I.EQ.R4%A1(I)
        DO 61 J=1,10
          R4%S1(3) = R4%A1(J) + R4%A1(J)
          L4%S1(3) = L4%S1(1) .AND.L4%A1(J)
          L4%S1(4) = L4%S1(1) .OR. L4%A1(J)
 61     CONTINUE
 60   CONTINUE
!
      WRITE(6,*) '** TEST NO. 6 **'
      WRITE(6,*) R4%S1,L4%S1
!
!CCCCCCCCC
! NO. 7  C
!CCCCCCCCC
      DO 70 I=1,10
        R4%A1(I) = R4%S1(1)
        L4%A1(I) = L4%S1(1)
        L4%A2(I) = L4%S1(1).AND.L4%S1(2)
        DO 71 J=1,10
          R4%S1(3) = R4%A1(J)
          L4%S1(3) = L4%A1(J)
          L4%S1(4) = J.EQ.R4%A1(I)
          L4%S1(5) = .NOT.L4%A2(I)
          L4%S1(6) = L4%A1(I) .AND.L4%A2(J)
 71     CONTINUE
 70   CONTINUE
!
      WRITE(6,*) '** TEST NO. 7 **'
      WRITE(6,*) R4%A1,L4%A1,L4%A2,R4%S1,L4%S1
!
!CCCCCCCCC
! NO. 8  C
!CCCCCCCCC
      DO 80 I=1,10
        DO 81 J=1,10
          R4%S1(1) = R4%A1(J) + 1.
 81     CONTINUE
        DO 82 K=1,10
          R4%S1(1) = R4%A1(K) + R4%A2(K)
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
          R4%S1(1) = R4%A1(J) + 1.
 91     CONTINUE
        DO 92 K=1,10
          R4%A1(K) = R4%S1(1)
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
        R4%S1(1) = R4%A1(I) + 1.
        DO 101 J=1,10
          R4%S1(1) = J
          DO 102 K=1,10
            R4%S1(1) = R4%A1(K)
 102      CONTINUE
 101    CONTINUE
 100  CONTINUE
!
      WRITE(6,*) '** TEST NO. 10 **'
      WRITE(6,*) R4%S1
!
!CCCCCCCCCC
! NO. 11  C
!CCCCCCCCCC
      DO 110 I=1,10
        R4%S1(1) = R4%A1(I)
        DO 111 J=1,10
          R4%A1(J) = R4%S1(1)
          DO 112 K=1,10
            R4%S1(1) = R4%A1(K)
 112      CONTINUE
 111    CONTINUE
 110  CONTINUE
!
      WRITE(6,*) '** TEST NO. 11 **'
      WRITE(6,*) R4%S1 ,R4%A1
!
!
      STOP
      END

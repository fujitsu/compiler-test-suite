!             CVCT8014            LEVEL=2        DATE=89.10.03
!             CVCT8014            LEVEL=2        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8014                                       C
!  2. PURPOSE        : BUSY ON EXIT  STORE & FETCH IN BLOCK  (3)      C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 9                                   C
!*********************************************************************C
!
      PROGRAM CV8014
      type R4
      REAL * 4    R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)
      end type
      type L4
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)
      end type
      type (R4)::st1
      type (L4)::st2
      DATA st1%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA st1%R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      DATA st2%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
           ,    .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA st2%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
           ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA st1%R4S1/1./,st1%R4S2/2./,st1%R4S3/10*1./
      DATA st2%L4S1/.TRUE./,st2%L4S2/.TRUE./,st2%L4S3/10*.TRUE./
!
      WRITE(6,*) '#### CVCT8014 ## BUSY ON EXIT ####'
!CCCCCCCCCCCCCC
! 3           C
!CCCCCCCCCCCCCC
      DO 10 I=1,10
        st1%R4S1 = st1%R4A1(I)
        IF (st1%R4S1.EQ.I) THEN
          st1%R4A1(I) = 1.
        ELSE
          st1%R4A2(I) = st1%R4S1
        ENDIF
        st2%L4S1 = st2%L4A1(I).AND.st2%L4A2(I)
        IF (st2%L4S1) THEN
          st2%L4A1(I) = .TRUE.
        ELSE
          st2%L4A2(I) = st2%L4S1
        ENDIF
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 3 **'
      WRITE(6,*) st1%R4A1,st2%L4A1,st1%R4S1,st2%L4S1
!
!CCCCCCCCC
! 3 - 1  C
!CCCCCCCCC
      DO 20 I=1,10
        st1%R4S1 = st1%R4A1(I)
        st2%L4S1 = st2%L4A1(I) .AND. st2%L4A2(I)
        IF (st1%R4S1.GT.0) THEN
          st1%R4A1(I) = st1%R4S1 + 1.
          st2%L4A1(I) = st2%L4S1.AND.st2%L4A1(I)
        ELSE
          st1%R4A2(I) = st1%R4S1 + 2.
          st2%L4A2(I) = st2%L4S1
        ENDIF
        st1%R4S2 = st1%R4A1(I) + st1%R4S1
        st2%L4S2 = st2%L4A1(I).AND.st2%L4A2(I)
 20   CONTINUE
      WRITE(6,*) '** TEST NO. 3-1 **'
      WRITE(6,*)  st1%R4S1,st1%R4S2,st2%L4S1,st2%L4S2
      WRITE(6,*)  st1%R4A1,st1%R4A2,st2%L4A1,st2%L4A2
!CCCCCCCCCC
! 3 - 2   C
!CCCCCCCCCC
      DO 30 I=1,10
        IF (st2%L4A1(I)) THEN
          st1%R4S1 = st1%R4A1(I) + st1%R4A2(I)
          st1%R4S1 = st1%R4A1(I) + st1%R4A2(I)
          st2%L4S1 = st2%L4A1(I).AND.st2%L4A2(I)
          st2%L4S1 = st2%L4A1(I).AND.st2%L4A2(I)
          st2%L4S3(1) = st2%L4A2(I)
          st2%L4S3(1) = st2%L4A2(I)
        ELSE
          st1%R4S1 = st1%R4A1(I) - 1.
          st1%R4S1 = st1%R4A1(I) - 1.
          st2%L4S1 = st2%L4A1(I).OR.st2%L4A2(I)
          st2%L4S1 = st2%L4A1(I).OR.st2%L4A2(I)
          st1%R4S3(1) = st1%R4A1(I)*st1%R4A2(I)
        ENDIF
!       st2%L4AS1 = st2%L4A1(I)
 30   CONTINUE
      WRITE(6,*) '** TEST NO. 3 - 2 **'
      WRITE(6,*) st1%R4S1,st2%L4S1,st2%L4S2,st1%R4S3(1),st2%L4S3(1)
!
!CCCCCCCCCC
! 3 - 3   C
!CCCCCCCCCC
      DO 40 I=1,10
        st1%R4S1 = st1%R4A1(I) + st1%R4A2(I) + 1.
        IF (st1%R4S1.GT.0) THEN
!         st1%R4A1(I) = st2%L4S1
          st1%R4A1(I) = st1%R4S1
        ELSE
          st1%R4A1(I) = st1%R4S1 + 1.
        ENDIF
        st2%L4S1 = st2%L4A1(I).AND.st2%L4A2(I)
        IF (st2%L4S1)  THEN
          st1%R4A1(I) = st1%R4S1
        ELSE
          st1%R4A1(I) = st1%R4S1 + 1.
        ENDIF
        st2%L4S1 = st2%L4A1(I).AND.st2%L4A2(I)
        IF (st2%L4S1) THEN
          st2%L4A1(I) = st2%L4S1
        ELSE
          st2%L4A1(I) = .NOT.st2%L4S1
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** TEST NO. 3 - 3 **'
      WRITE(6,*)  st1%R4S1,st2%L4S1,st1%R4A1,st2%L4A1
!CCCCCCCCCCC
!  3 - 4   C
!CCCCCCCCCCC
      DO 50 I=1,10
        IF (st2%L4A2(I)) THEN
          st2%L4S1 = st2%L4A1(I)
        ELSE
           st2%L4S1 = st2%L4A2(I)
        ENDIF
        IF (st2%L4S1) THEN
!         st1%R4A1(I) = st2%L4S1
!         st2%L4S1 = st1%R4A2(I)
          st2%L4S3(1) = st2%L4A1(I).AND.st2%L4A2(I)
        ENDIF
        IF (st2%L4S1) THEN
!         st1%R4A1(I) = st2%L4S1 + 1.
          st2%L4A1(I) = .NOT.st2%L4S1
        ENDIF
 50   CONTINUE
      WRITE(6,*) '** TETS NO. 3 - 4 **'
      WRITE(6,*) st1%R4S1,st2%L4S1,st1%R4A1,st2%L4A1
!
!CCCCCCCCCC
!  3 - 5  C
!CCCCCCCCCC
      DO 60 I=1,10
        st1%R4S1 = st1%R4A1(I) + 1.
        IF (st1%R4S1.GT.0) GOTO 60
        st1%R4A1(I) = st1%R4S1
        st1%R4S1 = st1%R4A1(I) + 2.
        IF (st1%R4S1.LT.0 ) GOTO 60
        st1%R4A1(I) = st1%R4S1
        st2%L4S1 = st2%L4A1(I)
        IF (st2%L4S1)  GOTO 60
        st2%L4A1(I) = st2%L4S1
 60   CONTINUE
      WRITE(6,*) '** TETS NO. 1 - 5 **'
      WRITE(6,*) st1%R4S1,st2%L4S1,st1%R4A1,st2%L4A1
!
!CCCCCCCCCCCC
!  3 - 6    C
!CCCCCCCCCCCC
      st1%R4S1 = 10.
      DO 70 I=1,st1%R4S1
        st1%R4S1 = st1%R4A1(I) + I
        IF (st1%R4S1.GT.10) GOTO 71
 70   CONTINUE
 71   CONTINUE
      WRITE(6,*) '** TEST NO. 3 - 6 **'
      WRITE(6,*) st1%R4S1
!
!CCCCCCCCCCCC
!  3 - 7    C
!CCCCCCCCCCCC
      DO 83 JJ=1,10
      DO 80 I=1,10
        st1%R4S1 = st1%R4A1(I) + st1%R4A2(I)
 80   st1%R4A1(I) = st1%R4S1
      DO 81 I=1,10
        st1%R4S1 = st1%R4A1(I) + st1%R4A2(I)
 81   st1%R4A1(I) = st1%R4S1
      DO 82 I=1,10
        st2%L4S1 = st2%L4A1(I).AND.  st2%L4A2(I)
 82   st2%L4A1(I) = st2%L4S1
!
 83   CONTINUE
      WRITE(6,*) '** TEST NO. 3 - 7 **'
      WRITE(6,*) st1%R4S1,st1%R4A1,st2%L4S1,st2%L4A1
!
!CCCCCCCCCC
!  3 - 8  C
!CCCCCCCCCC
      DO 90 I=1,10
        st1%R4S1 = st1%R4A1(I) + st1%R4A2(I)
        IF (st1%R4S1.GT.0) GOTO 91
        st1%R4S1 = st1%R4A2(I)
 91     st1%R4S1 = st1%R4A1(I) + st1%R4A2(I)
        IF (st1%R4S1.GT.0) GOTO 92
        st1%R4S1 = st1%R4A2(I)
 92     st2%L4S1 = st2%L4A1(I) .AND. st2%L4A2(I)
        IF (st2%L4S1)  GOTO 90
        st2%L4A1(I) = st2%L4S1
 90   CONTINUE
      WRITE(6,*) '** TEST NO. 3 - 8 **'
      WRITE(6,*) st1%R4S1,st2%L4S1,st1%R4A1,st2%L4A1
!
!
      STOP
      END

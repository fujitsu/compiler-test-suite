!             CVCT8016            LEVEL=1        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8016                                       C
!  2. PURPOSE        : BUSY ON EXIT  STORE & FETCH IN BLOCK  (4)      C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 9                                   C
!*********************************************************************C
!
      PROGRAM CV8016
      type TAG_R
      REAL * 4    R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)
      end type
      type TAG_L
      LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)
      end type
      type TAG_R_L
        type (TAG_R)::st1
        type (TAG_L)::st2
      end type
      type (TAG_R_L)::st
      DATA st%st1%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA st%st1%R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      DATA st%st2%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
           ,    .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA st%st2%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
           ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
!
      WRITE(6,*) '#### CVCT8016 ## BUSY ON EXIT ####'
!CCCCCCCCCCCCCC
! 5           C
!CCCCCCCCCCCCCC
      DO 10 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.GT.0) GOTO 10
        st%st1%R4S2 = st%st1%R4A1(I) + 1.
 10   CONTINUE
      DO 11 I=1,10
        st%st2%L4S1 = st%st2%L4A1(I) .AND.st%st2%L4A2(I)
        IF (st%st2%L4S1) GOTO 11
        st%st2%L4A1(I) = st%st2%L4A2(I).AND.st%st2%L4S1
 11   CONTINUE
      WRITE(6,*) '** TEST NO. 1 **'
      WRITE(6,*) st%st1%R4S1,st%st1%R4A1,st%st2%L4S1,st%st2%L4A1
!
!CCCCCCCCC
! 5 - 1  C
!CCCCCCCCC
      DO 20 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I)
        IF (st%st2%L4A1(I)) GOTO 20
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.GT.0) GOTO 20
        st%st1%R4S1 = st%st1%R4A2(I) + 2.
 20   CONTINUE
      WRITE(6,*) '** TEST NO. 5-1 **'
      WRITE(6,*)  st%st1%R4S1
!
!CCCCCCCCCC
! 5 - 2   C
!CCCCCCCCCC
      DO 30 I=1,10
        IF (st%st2%L4A1(I)) GOTO 31
        st%st1%R4S1 = st%st1%R4A1(I)
        IF (st%st1%R4S1.EQ.I) THEN
         st%st1%R4A1(I) = st%st1%R4S1
        ELSE
          st%st1%R4A2(I) = st%st1%R4S1 + st%st1%R4A1(I)
        ENDIF
 31     IF (st%st2%L4A2(I)) GOTO 32
        st%st1%R4S1 = st%st1%R4A1(I)
        IF (st%st1%R4S1.GT.0 ) THEN
          st%st1%R4A1(I) = st%st1%R4S1
        ELSE
          st%st1%R4A2(I) = st%st1%R4S1 + st%st1%R4A2(I)
        ENDIF
 32     st%st2%L4S1  = st%st2%L4A1(I)
        IF (st%st2%L4S1) THEN
          st%st2%L4A1(I) = st%st2%L4S1
        ELSE
          st%st2%L4A2(I) = st%st2%L4S1.AND.st%st2%L4A1(I)
        ENDIF
        IF (st%st2%L4A1(I).AND.st%st2%L4A2(I)) THEN
         IF (st%st1%R4A1(I).NE.st%st1%R4A2(I)) THEN
             st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
             st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
             st%st2%L4S1 = st%st2%L4A1(I) .AND. st%st2%L4A2(I)
             GOTO 30
           ELSE
             st%st1%R4S1 = st%st1%R4A1(I) - st%st1%R4A2(I)
             st%st1%R4S1 = st%st1%R4A1(I) - st%st1%R4A2(I)
             st%st2%L4S1 = st%st2%L4A1(I) .OR. st%st2%L4A2(I)
         ENDIF
       ENDIF
 30   CONTINUE
      WRITE(6,*) '** TEST NO. 5 - 2 **'
      WRITE(6,*) st%st1%R4S1,st%st2%L4S1,st%st2%L4A1,st%st1%R4A1
!
!CCCCCCCCCC
! 5 - 3   C
!CCCCCCCCCC
      DO 40 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.GT.0) THEN
          st%st1%R4A1(I) = st%st1%R4S1
        ELSE
          st%st1%R4A1(I) = st%st1%R4S1 + 1.
        ENDIF
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.LT.0.) THEN
          st%st1%R4A1(I) = st%st1%R4S1
        ELSE
          st%st1%R4A1(I) = st%st1%R4S1 + 1.
        ENDIF
        st%st2%L4S1 = st%st2%L4A1(I).AND.st%st2%L4A2(I)
        IF (st%st2%L4S1) THEN
          st%st2%L4A1(I) = st%st2%L4S1
        ELSE
          st%st2%L4A1(I) = .NOT.st%st2%L4S1
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** TEST NO. 5 - 3 **'
      WRITE(6,*)  st%st1%R4S1,st%st2%L4S1
      WRITE(6,*)  st%st1%R4A1,st%st2%L4A1
!
!CCCCCCCCCCC
!  5 - 4   C
!CCCCCCCCCCC
      DO 50 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.NE.I) THEN
          st%st1%R4A1(I) = st%st1%R4S1
        ENDIF
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.GT.0) THEN
          st%st1%R4A1(I) = st%st1%R4S1
        ENDIF
        st%st2%L4S1 = st%st2%L4A1(I).AND.st%st2%L4A2(I)
        IF (st%st2%L4S1) THEN
           st%st2%L4A1(I) = st%st2%L4S1
        ENDIF
 50   CONTINUE
      WRITE(6,*) '** TETS NO. 5 - 4 **'
      WRITE(6,*) st%st1%R4S1,st%st1%R4A1,st%st2%L4S1,st%st2%L4A1
!
!CCCCCCCCCC
!  5 - 5  C
!CCCCCCCCCC
      DO 60 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I) + 1.
        IF (st%st1%R4S1.GT.0) GOTO 60
        st%st1%R4A1(I) = st%st1%R4S1
        st%st1%R4S1 = st%st1%R4A1(I) + 2.
        IF (st%st1%R4S1.LT.0 ) GOTO 60
        st%st1%R4A1(I) = st%st1%R4S1
        st%st2%L4S1 = st%st2%L4A1(I)
        IF (st%st2%L4S1)  GOTO 60
        st%st2%L4A1(I) = st%st2%L4S1
 60   CONTINUE
      WRITE(6,*) '** TETS NO. 5 - 5 **'
      WRITE(6,*) st%st1%R4S1,st%st2%L4S1,st%st1%R4A1,st%st2%L4A1
!
!CCCCCCCCCCCC
!  5 - 6    C
!CCCCCCCCCCCC
      st%st1%R4S1 = 10.
      DO 70 I=1,st%st1%R4S1
        st%st1%R4S1 = st%st1%R4A1(I) + I
        IF (st%st1%R4S1.GT.10) GOTO 71
 70   CONTINUE
 71   CONTINUE
      WRITE(6,*) '** TEST NO. 5 - 6 **'
      WRITE(6,*) st%st1%R4S1
!
!CCCCCCCCCCCC
!  5 - 7    C
!CCCCCCCCCCCC
      DO 83 JJ=1,10
      DO 80 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
 80   st%st1%R4A1(I) = st%st1%R4S1
      DO 81 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
 81   st%st1%R4A1(I) = st%st1%R4S1
      DO 82 I=1,10
        st%st2%L4S1 = st%st2%L4A1(I).AND.  st%st2%L4A2(I)
 82   st%st2%L4A1(I) = st%st2%L4S1
!
 83   CONTINUE
      WRITE(6,*) '** TEST NO. 5 - 7 **'
      WRITE(6,*) st%st1%R4S1,st%st1%R4A1,st%st2%L4S1,st%st2%L4A1
!
!CCCCCCCCCC
!  5 - 8  C
!CCCCCCCCCC
      DO 90 I=1,10
        st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.GT.0) GOTO 91
        st%st1%R4S1 = st%st1%R4A2(I)
 91     st%st1%R4S1 = st%st1%R4A1(I) + st%st1%R4A2(I)
        IF (st%st1%R4S1.GT.0) GOTO 92
        st%st1%R4S1 = st%st1%R4A1(I)
 92     st%st2%L4S1 = st%st2%L4A1(I) .AND. st%st2%L4A2(I)
        IF (st%st2%L4S1)  GOTO 90
        st%st2%L4A1(I) = st%st2%L4S1
 90   CONTINUE
      WRITE(6,*) '** TEST NO. 5 - 8 **'
      WRITE(6,*) st%st1%R4S1,st%st2%L4S1,st%st1%R4A1,st%st2%L4A1
!
!
      STOP
      END

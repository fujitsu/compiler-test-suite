!             CVCT8022            LEVEL=1        DATE=84.07.12          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8022                                       C 
!  2. PURPOSE        : BUSY ON EXIT : EXTERNAL                        C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 - 10                                  C 
!*********************************************************************C 
!                                                                       
PROGRAM CV8022
  type TAG1
    REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10)
  end type
  type TAG2
    LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)
  end type
  type (TAG1) st1
  type (TAG2) st2
  DATA st1%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
  DATA st1%R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
  DATA st2%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
           ,   .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  DATA st2%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
           ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
! u2 add
      st1%R4S3 = 0
      st2%L4S3 = .FALSE.
!
      WRITE(6,*) '#### CVCT8022 ## BUSY ON EXIT ####'
!CCCCCCCCCCCCCC
!C TEST NO. 1 C
!CCCCCCCCCCCCCC
      DO 10 I=1,10
        st1%R4S1 = st1%R4A1(I)
        st1%R4S3(1) = st1%R4A2(I) + st1%R4A1(I)
        st2%L4S1 = st2%L4A1(I).AND.st2%L4A2(I)
        st2%L4S3(1) = .NOT.st2%L4A1(I)
        CALL SUB01(st1%R4S1,st1%R4S3(1),st2%L4S1,st2%L4S3(1))
 10   CONTINUE
!
      WRITE(6,*) '** TEST NO. 1 **'
      WRITE(6,*) st1%R4S1,st1%R4S3,st2%L4S1,st2%L4S3
!
!CCCCCCCCCCCCCC
!C TEST NO. 2 C
!CCCCCCCCCCCCCC
      DO 20 I=1,10
        st1%R4S1 = st1%R4A1(I)
        st1%R4S3(1) = st1%R4A2(I) + st1%R4A1(I)
        st2%L4S1 = st2%L4A1(I).AND.st2%L4A2(I)
        st2%L4S3(1) = .NOT.st2%L4A1(I)
        CALL SUB01(st1%R4S1,st1%R4S3(1),st2%L4S1,st2%L4S3(1))
        st1%R4A1(I) = st1%R4S1
        st1%R4A2(I) = st1%R4S3(1)
        st2%L4A1(I) = st2%L4S1
        st2%L4A2(I) = st2%L4S3(1)
 20   CONTINUE
!
      WRITE(6,*) '** TEST NO. 2 **'
      WRITE(6,*) st1%R4S1,st1%R4S3,st2%L4S1,st2%L4S3,st1%R4A1,st1%R4A2,st2%L4A1,st2%L4A2
!
!CCCCCCCCCCCCCC
!C TEST NO. 3 C
!CCCCCCCCCCCCCC
      DO 30 I=1,10
        CALL SUB01(st1%R4S1,st1%R4S3(1),st2%L4S1,st2%L4S3(1))
        st1%R4A1(I) = st1%R4S1
        st1%R4A2(I) = st1%R4S3(1)
        st2%L4A1(I) = st2%L4S1
        st2%L4A2(I) = st2%L4S3(1)
 30   CONTINUE
!
      WRITE(6,*) '** TEST NO. 3 **'
      WRITE(6,*) st1%R4A1,st1%R4A2,st2%L4A1,st2%L4A2
!
!
      STOP
END PROGRAM CV8022
!
      SUBROUTINE SUB01 (R4S1,R4S3,L4S1,L4S3)
      REAL * 4 R4S1,R4S3
      LOGICAL * 4 L4S1,L4S3
      R4S1 = R4S1
      R4S3 = R4S3
      L4S1 = L4S1
      L4S3 = L4S3
      RETURN
      END

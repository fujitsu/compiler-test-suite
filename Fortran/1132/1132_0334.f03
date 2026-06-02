!             CVCT8005            LEVEL=1        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8005                                       C
!  2. PURPOSE        : BUSY ON EXIT ( BUSY ON ENTRY )                 C
!                        SIMPLE VARIABLE : TYPE TEST (WITH MASK)      C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 6                                   C
!*********************************************************************C
!
      PROGRAM CV8005
      type str_I2
      INTEGER * 2 S1,S2,S3,S4,S5,S6,S7,S8
      INTEGER * 2 A1(10),A2(10)
      end type
      type (str_I2)::I2
      type str_I4
      sequence
      INTEGER * 4 S1,S2,S3,S4,S5,S6,S7,S8
      INTEGER * 4 A1(10),A2(10)
      end type
      type (str_I4)::I4,iL4
         type str_R4
      REAL * 4    S1,S2,S3,S4,S5,S6,S7,S8
      REAL * 4    A1(10),A2(10)
      end type
      type (str_R4)::R4
      type str_R8
      REAL * 8    S1,S2,S3,S4,S5,S6,S7,S8,S9
      REAL * 8    A1(10),A2(10)
      end type
      type (str_R8)::R8
      type str_R16
      REAL * 16   S1,S2,S3,S4,S5,S6,S7,S8,S9
      REAL * 16   S10,S11,A1(10),A2(10)
      end type
      type (str_R16)::R16
      type str_C8
      COMPLEX * 8 S1,S2,S3,S4,S5,S6,S7,S8,S9,S10
      COMPLEX * 8 A1(10),A2(10)
      end type
      type (str_C8)::C8
      type str_C16
      COMPLEX * 16 S1,S2,S3,S4,S5,S6,S7,S8,S9
      COMPLEX * 16 S10, A1(10),A2(10)
      end type
      type (str_C16)::C16
      type str_C32
      COMPLEX * 32 S1,S2,S3,S4,S5,S6,S7,S8,S9
      COMPLEX * 32 S10,S11 , A1(10),A2(10)
      end type
      type (str_C32)::C32
      type str_L1
      LOGICAL * 1  S1,S2,S3,S4,S5,S6,S7,S8,S9
      LOGICAL * 1 A1(10),A2(10)
      end type
      type (str_L1)::L1
      type str_L4
      sequence
      LOGICAL * 4 S1,S2,S3,S4,S5,S6,S7,S8,S9
      LOGICAL * 4  A1(10),A2(10)
      end type
      type (str_L4)::L4,lI4
      equivalence (I4,lI4)
      equivalence (L4,iL4)
      DATA I2%A1/1,2,3,4,5,6,7,8,9,10/
      DATA I2%A2/11,12,13,14,15,16,17,18,19,20/
      DATA I4%A1/1,2,3,4,5,6,7,8,9,10/
      DATA I4%A2/11,12,13,14,15,16,17,18,19,20/
      DATA R4%A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4%A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R8%A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R8%A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R16%A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.), &
                (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA R16%A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.), &
                (1.,6.),(1.,7.),(1.,8.),(1.,9.),(1.,10.)/
      DATA C8%A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.) &
              ,(6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA C8%A2/(1.,1.),(2.,1.),(3.,1.),(4.,1.),(5.,1.) &
              ,(6.,1.),(7.,1.),(8.,1.),(9.,1.),(10.,1.)/
      DATA C16%A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.) &
              , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA C16%A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.) &
              , (1.,6.),(1.,7.),(1.,8.),(1.,9.),(1.,10.)/
      DATA C32%A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.) &
              , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
!      DATA C32%A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.)
!     +         , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA C32%A2/(2.,1.),(2.,2.),(2.,3.),(2.,4.),(2.,5.) &
              , (2.,6.),(2.,7.),(2.,8.),(2.,9.),(2.,10.)/
      DATA L1%A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
              ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L1%A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
              ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA L4%A1/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
             , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA L4%A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
! u2 add
      L4%S1 = .FALSE.
      L4%S2 = .FALSE.
      L4%S3 = .FALSE.
      L4%S4 = .FALSE.
      L4%S5 = .FALSE.
      L4%S6 = .FALSE.
      L4%S7 = .FALSE.
      L4%S8 = .FALSE.
      L4%S9 = .FALSE.
!
      WRITE(6,*) '#### CVCT8005 ## BUSY ON EXIT ####'
!CCCCCCCCC
! I * 2  C NOT V
!CCCCCCCCC
        DO 11 J=1,10
          IF (L4%A1(J)) THEN
            I2%S1 = 0
            I2%S2 = I2%A1(J)
            I2%S3 = I4%A1(J)
            I2%S4 = R4%A1(J)
            I2%S5 = I2%A1(J) + I2%A2(J)
            I2%S6 = I2%A1(J) + I4%A1(J)
            I2%S7 = I2%A1(J) + R4%A1(J)
            I2%S8 = I2%A1(J) + 9
          ENDIF
 11     CONTINUE
!
        WRITE(6,*) '** INTEGER * 2 **'
        WRITE(6,*) I2%S1,I2%S2,I2%S3,I2%S4,I2%S5,I2%S6,I2%S7,I2%S8
!
!
!CCCCCCCCC
! I * 4  C    V
!CCCCCCCCC
        DO 21 I=1,10
          IF (L4%A1(I)) THEN
            I4%S1 = 1
            I4%S2 = I4%A1(I)
            I4%S3 = I2%A1(I)
            I4%S4 = R4%A1(I)
            I4%S5 = R8%A1(I)
            I4%S6 = I4%A1(I) + I4%A2(I)
            I4%S7 = I4%A1(I) + 2
            I4%S8 = I4%A1(I) + R4%A1(I)
          ENDIF
 21     CONTINUE
!
        WRITE(6,*) '** INTEGER * 4 **'
        WRITE(6,*)  I4%S1,I4%S2,I4%S3,I4%S4,I4%S5,I4%S6,I4%S7,I4%S8
!
!CCCCCCCCCC
! R * 4   C   V
!CCCCCCCCCC
        DO 31 I=1,10
          IF (L4%A1(I)) THEN
            R4%S1 = 3.
            R4%S2 = R4%A1(I)
            R4%S3 = I4%A1(I)
            R4%S4 = R8%A1(I)
            R4%S5 = R4%A1(I) + 1.
            R4%S6 = R4%A1(I) + R4%A2(I)
            R4%S7 = R4%A1(I) + R8%A1(I)
            R4%S8 = R4%A1(I) + I4%A1(I)
          ENDIF
 31     CONTINUE
!
        WRITE(6,*) '** REAL * 4 **'
        WRITE(6,*) R4%S1,R4%S2,R4%S3,R4%S4,R4%S5,R4%S6,R4%S7,R4%S8
!
!
!CCCCCCCCCC
! R * 8   C V
!CCCCCCCCCC
        DO 41 I=1,10
          IF (L4%A1(I)) THEN
            R8%S1 = 4.
            R8%S2 = R8%A1(I)
            R8%S3 = R4%A1(I)
            R8%S4 = I4%A1(I)
            R8%S5 = C8%A1(I)
            R8%S6 = R8%A1(I) + R8%A2(I)
            R8%S7 = R8%A1(I) + 4.
            R8%S8 = R4%A1(I) + I4%A1(I)
            R8%S9 = R8%A1(I) + R4%A1(I)
          ENDIF
 41     CONTINUE
!
        WRITE(6,*) '** REAL * 8 **'
        WRITE(6,*)  R8%S1,R8%S2,R8%S3,R8%S4,R8%S5,R8%S6,R8%S7,R8%S8,R8%S9
!
!CCCCCCCCCCC
!  R * 16  C   V
!CCCCCCCCCCC
        DO 51 I=1,10
          IF (L4%A1(I)) THEN
            R16%S1 = 5.
            R16%S2 = R16%A1(I)
            R16%S3 = R8%A1(I)
            R16%S4 = R4%A1(I)
            R16%S5 = I4%A1(I)
            R16%S6 = C8%A1(I)
            R16%S7 = C16%A1(I)
            R16%S8 = R16%A1(I) + R16%A2(I)
            R16%S9 = R16%A1(I) + 5.
            R16%S10 = R8%A1(I) + R16%A1(I)
            R16%S11 = R4%A1(I) + R16%A1(I)
          ENDIF
 51     CONTINUE
!
        WRITE(6,*) '** REAL * 8  **'
        WRITE(6,*) R16%S1,R16%S2,R16%S3,R16%S4,R16%S5,R16%S6,R16%S7,R16%S8
        WRITE(6,*) R16%S9,R16%S10,R16%S11
!
!
!CCCCCCCCCC
!  C * 8  C  V
!CCCCCCCCCC
        DO 61 I=1,10
          IF (L4%A1(I)) THEN
            C8%S1 = 6.
            C8%S2 = C8%A1(I)
            C8%S3 = I4%A1(I)
            C8%S4 = R4%A1(I)
            C8%S5 = R8%A1(I)
            C8%S6 = R16%A1(I)
            C8%S7 = C16%A1(I)
            C8%S8 = C32%A1(I)
            C8%S9 = C8%A1(I) + C8%A2(I)
            C8%S10 = C8%A1(I) + 6.
          ENDIF
 61     CONTINUE
!
        WRITE(6,*) '** COMPLEX * 8 **'
        WRITE(6,*) C8%S1,C8%S2,C8%S3,C8%S4,C8%S5,C8%S6,C8%S7,C8%S8,C8%S9,C8%S10
!
!CCCCCCCCCCCC
!  C * 16   C  V
!CCCCCCCCCCCC
        DO 71 I=1,10
          IF (L4%A1(I)) THEN
            C16%S1 = 7.
            C16%S2 = C16%A1(I)
            C16%S3 = I4%A1(I)
            C16%S4 = R4%A1(I)
            C16%S5 = R8%A1(I)
            C16%S6 = R16%A1(I)
            C16%S7 = C8%A1(I)
            C16%S8 = C32%A1(I)
            C16%S9 = C16%A1(I) + C16%A2(I)
            C16%S10 = C16%A1(I) + 7.
          ENDIF
 71     CONTINUE
!
        WRITE(6,*) '** COMPLEX * 16 **'
        WRITE(6,*) C16%S1,C16%S2,C16%S3,C16%S4,C16%S5,C16%S6,C16%S7,C16%S8
        WRITE(6,*) C16%S9,C16%S10
!
!CCCCCCCCCCCC
!  C * 32   C   NOT V
!CCCCCCCCCCCC
        DO 81 I=1,10
          IF (L4%A1(I)) THEN
            C32%S1 = 8.
            C32%S2 = C32%A1(I)
            C32%S3 = I4%A1(I)
            C32%S4 = R4%A1(I)
            C32%S5 = R8%A1(I)
            C32%S6 = R16%A1(I)
            C32%S7 = C8%A1(I)
            C32%S8 = C16%A1(I)
            C32%S9 = C32%A1(I)
            C32%S10 = C32%A1(I) + C32%A2(I)
            C32%S11 = C32%A1(I) + 8.
          ENDIF
 81     CONTINUE
!
        WRITE(6,*) '** COMPLEX * 16 **'
        WRITE(6,*) C32%S1,C32%S2,C32%S3,C32%S4,C32%S5,C32%S6,C32%S7,C32%S8
        WRITE(6,*) C32%S9,C32%S10,C32%S11
!
!CCCCCCCCCC
!  L * 1  C  NOT V
!CCCCCCCCCC
        DO 91 I=1,10
          IF (L4%A1(I)) THEN
            L1%S1 = .TRUE.
            L1%S2 = .FALSE.
            L1%S3 = L1%A1(I)
            L1%S4 = L4%A1(I)
            L1%S5 = .NOT.L1%A1(I)
            L1%S6 = .NOT.L1%A2(I)
            L1%S7 = L1%A1(I).AND.L1%A2(I)
            L1%S8 = L1%A1(I).OR.L1%A2(I)
            L1%S9 = L1%A1(I).AND.L4%A1(I)
          ENDIF
 91     CONTINUE
!
        WRITE(6,*) '** LOGICAL * 1 **'
        WRITE(6,*) L1%S1,L1%S2,L1%S3,L1%S4,L1%S5,L1%S6,L1%S7,L1%S8,L1%S9
        WRITE(6,*) L1%A2
!
!CCCCCCCCCC
!  L * 4  C  V
!CCCCCCCCCC
        DO 101 I=1,10
          IF (I.EQ.iL4%A1(I)) THEN
            L4%S1 = .TRUE.
            L4%S2 = .FALSE.
            L4%S3 = L4%A1(I)
            L4%S4 = .NOT.L4%A1(I)
            L4%S5 = .NOT.L4%A2(I)
            L4%S6 = L4%A1(I).AND.L4%A2(I)
            L4%S7 = L4%A1(I).OR. L4%A2(I)
            L4%S8  = lI4%A1(I)
            L4%S9  = .true.
          ENDIF
 101    CONTINUE
!
        WRITE(6,*) '**LOGICAL * 4 **'
        WRITE(6,*) L4%S1,L4%S2,L4%S3,L4%S4,L4%S5,L4%S6,L4%S7,L4%S8,L4%S9
!
!
      STOP
      END

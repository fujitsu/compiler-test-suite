!             CVCT8003            LEVEL=2        DATE=89.10.03
!             CVCT8003            LEVEL=2        DATE=84.07.12
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8003                                       C
!  2. PURPOSE        : BUSY ON EXIT (NOT BUSY ON ENTRY )              C
!                        ARAY ELEMENT    : TYPE TEST (WITH MASK)      C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 6                                   C
!*********************************************************************C
!
      PROGRAM CV8003
      type::str_I2
      INTEGER * 2 S1(20) , A1(10),A2(10)
      end type
      type::str_I4
      INTEGER * 4 S1(20) , A1(10),A2(10)
      end type
      type::str_R4
      REAL * 4    S1(20) , A1(10),A2(10)
      end type
      type::str_R8 
      REAL * 8    S1(20) , A1(10),A2(10)
      end type
      type::str_R16
      REAL * 16   S1(20), A1(10),A2(10)
      end type
      type::str_C8
      COMPLEX * 8 S1(20) , A1(10),A2(10)
      end type
      type::str_C16
      COMPLEX * 16 S1(20), A1(10)
      end type
      type::str_C32
      COMPLEX * 32 S1(20),A1(10),A2(10)
      end type
      type::str_L1
      LOGICAL * 1  S1(20),A1(10),A2(10)
      end type
      type::str_L4
      LOGICAL * 4 S1(20),A1(10),A2(10)
      end type
      type(str_I2)::I2
      type(str_I4)::I4
      type(str_R4)::R4
      type(str_R8)::R8
      type(str_R16)::R16
      type(str_C8)::C8
      type(str_C16)::C16
      type(str_C32)::C32
      type(str_L1)::L1
      type(str_L4)::L4
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
      DATA C32%A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.) &
              , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
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
      data L4%S1/20*.false./
!
      WRITE(6,*) '#### CVCT8003 ## BUSY ON EXIT ####'
!CCCCCCCCC
! I * 2  C NOT V
!CCCCCCCCC
      DO 10 I=1,10
        IF (L4%A1(I)) THEN
          I2%S1(1) = 0
          I2%S1(2) = I2%A1(I)
          I2%S1(3) = I4%A1(I)
          I2%S1(3) = R4%A1(I)
          I2%S1(4) = I2%A1(I) + I2%A2(I)
          I2%S1(5) = I2%A1(I) + I4%A1(I)
          I2%S1(6) = I2%A1(I) + R4%A1(I)
          I2%S1(7) = I2%A1(I) + 9
        ENDIF
 10   CONTINUE
      WRITE(6,*) '** INTEGER * 2 **'
      WRITE(6,*) I2%S1(1),I2%S1(2),I2%S1(3),I2%S1(4),I2%S1(5)
      WRITE(6,*) I2%S1(6),I2%S1(7)
!CCCCCCCCC
! I * 4  C    V
!CCCCCCCCC
      DO 20 I=1,10
        IF (L4%A1(I)) THEN
          I4%S1(1) = 1
          I4%S1(2) = I4%A1(I)
          I4%S1(3) = I2%A1(I)
          I4%S1(4) = R4%A1(I)
          I4%S1(5) = R8%A1(I)
          I4%S1(6) = I4%A1(I) + I4%A2(I)
          I4%S1(7) = I4%A1(I) + 2
          I4%S1(8) = I4%A1(I) + R4%A1(I)
        ENDIF
        IF (L4%A2(I)) THEN
          I4%S1(1) = 1
          I4%S1(2) = I4%A1(I)
          I4%S1(3) = I2%A1(I)
          I4%S1(4) = R4%A1(I)
          I4%S1(5) = R8%A1(I)
          I4%S1(6) = I4%A1(I) + I4%A2(I)
          I4%S1(7) = I4%A1(I) + 2
          I4%S1(8) = I4%A1(I) + R4%A1(I)
        ENDIF
 20   CONTINUE
      WRITE(6,*) '** INTEGER * 4 **'
      WRITE(6,*)  I4%S1(1),I4%S1(2),I4%S1(3),I4%S1(4),I4%S1(5)
      WRITE(6,*)  I4%S1(6),I4%S1(7),I4%S1(8)
!CCCCCCCCCC
! R * 4   C   V
!CCCCCCCCCC
      DO 30 I=1,10
       IF (L4%A1(I)) THEN
          R4%S1(1) = 3.
          R4%S1(2) = R4%A1(I)
          R4%S1(3) = I4%A1(I)
          R4%S1(4) = R8%A1(I)
          R4%S1(5) = R4%A1(I) + 1.
          R4%S1(6) = R4%A1(I) + R4%A2(I)
          R4%S1(7) = R4%A1(I) + R8%A1(I)
          R4%S1(8) = R4%A1(I) + I4%A1(I)
        ENDIF
 30   CONTINUE
      WRITE(6,*) '** REAL * 4 **'
      WRITE(6,*) R4%S1(1),R4%S1(2),R4%S1(3),R4%S1(4)
      WRITE(6,*) R4%S1(5),R4%S1(6),R4%S1(7)
!CCCCCCCCCC
! R * 8   C V
!CCCCCCCCCC
      DO 40 I=1,10
        IF (L4%A1(I)) THEN
          R8%S1(1) = 4.
          R8%S1(2) = R8%A1(I)
          R8%S1(3) = R4%A1(I)
          R8%S1(4) = I4%A1(I)
          R8%S1(5) = C8%A1(I)
          R8%S1(6) = R8%A1(I) + R8%A2(I)
          R8%S1(7) = R8%A1(I) + 4.
          R8%S1(8) = R4%A1(I) + I4%A1(I)
          R8%S1(9) = R8%A1(I) + R4%A1(I)
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** REAL * 8 **'
      WRITE(6,*)  R8%S1(1),R8%S1(2),R8%S1(3),R8%S1(4),R8%S1(5),R8%S1(6)
      WRITE(6,*)  R8%S1(7),R8%S1(8),R8%S1(9)
!CCCCCCCCCCC
!  R * 16  C   S
!CCCCCCCCCCC
      DO 50 I=1,10
        IF (L4%A1(I)) THEN
          R16%S1(1) = 5.
          R16%S1(2) = R16%A1(I)
          R16%S1(3) = R8%A1(I)
          R16%S1(4) = R4%A1(I)
          R16%S1(5) = I4%A1(I)
          R16%S1(6) = C8%A1(I)
          R16%S1(7) = C16%A1(I)
          R16%S1(8) = R16%A1(I) + R16%A2(I)
          R16%S1(9) = R16%A1(I) + 5.
          R16%S1(10) = R8%A1(I) + R16%A1(I)
          R16%S1(11) = R4%A1(I) + R16%A1(I)
        ENDIF
 50   CONTINUE
      WRITE(6,*) '** REAL * 8  **'
      WRITE(6,*) R16%S1(1),R16%S1(2),R16%S1(3),R16%S1(4),R16%S1(5),R16%S1(6)
      WRITE(6,*) R16%S1(7),R16%S1(8),R16%S1(9),R16%S1(10),R16%S1(11)
!CCCCCCCCCC
!  C * 8  C  V
!CCCCCCCCCC
      DO 60 I=1,10
        IF (L4%A1(I)) THEN
          C8%S1(1) = 6.
          C8%S1(2) = C8%A1(I)
          C8%S1(3) = I4%A1(I)
          C8%S1(4) = R4%A1(I)
          C8%S1(5) = R8%A1(I)
          C8%S1(6) = R16%A1(I)
          C8%S1(7) = C16%A1(I)
          C8%S1(8) = C32%A1(I)
          C8%S1(9) = C8%A1(I) + C8%A2(I)
          C8%S1(10) = C8%A1(I) + 6.
        ENDIF
 60   CONTINUE
      WRITE(6,*) '** COMPLEX * 8 **'
      WRITE(6,*) C8%S1(1),C8%S1(2),C8%S1(3),C8%S1(4),C8%S1(5)
      WRITE(6,*) C8%S1(6),C8%S1(7),C8%S1(8),C8%S1(9),C8%S1(10)
!CCCCCCCCCCCC
!  C * 16   C  V
!CCCCCCCCCCCC
      DO 70 I=1,10
        IF (I.EQ.I4%A1(I)) THEN
          C16%S1(1) = 7.
          C16%S1(2) = C16%A1(I)
          C16%S1(3) = R4%A1(I)
          C16%S1(4) = R8%A1(I)
          C16%S1(5) = R16%A1(I)
          C16%S1(6) = C8%A1(I)
          C16%S1(7) = C32%A1(I)
          C16%S1(8) = C16%A1(I) + 7.
        ENDIF
 70   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) C16%S1(1),C16%S1(2),C16%S1(3),C16%S1(4),C16%S1(5)
      WRITE(6,*) C16%S1(6),C16%S1(7)
!CCCCCCCCCCCC
!  C * 32   C   NOT V
!CCCCCCCCCCCC
      DO 80 I=1,10
        IF (L4%A1(I)) THEN
          C32%S1(1) = 8.
          C32%S1(2) = C32%A1(I)
          C32%S1(3) = I4%A1(I)
          C32%S1(4) = R4%A1(I)
          C32%S1(5) = R8%A1(I)
          C32%S1(6) = R16%A1(I)
          C32%S1(7) = C8%A1(I)
          C32%S1(8) = C16%A1(I)
          C32%S1(9) = C32%A1(I)
          C32%S1(10) = C32%A1(I) + C32%A2(I)
          C32%S1(11) = C32%A1(I) + 8.
        ENDIF
 80   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) C32%S1(1),C32%S1(2),C32%S1(3),C32%S1(4),C32%S1(5),C32%S1(6)
      WRITE(6,*) C32%S1(7),C32%S1(8),C32%S1(9),C32%S1(10),C32%S1(11)
!CCCCCCCCCC
!  L * 1  C  NOT V
!CCCCCCCCCC
      DO 90 I=1,10
        IF (L4%A1(I)) THEN
          L1%S1(1) = .TRUE.
          L1%S1(2) = .FALSE.
          L1%S1(3) = L1%A1(I)
          L1%S1(4) = L4%A1(I)
          L1%S1(5) = .NOT.L1%A1(I)
          L1%S1(6) = .NOT.L1%A2(I)
          L1%S1(7) = L1%A1(I).AND.L1%A2(I)
          L1%S1(8) = L1%A1(I).OR.L1%A2(I)
          L1%S1(9) = L1%A1(I).AND.L4%A1(I)
        ENDIF
 90   CONTINUE
      WRITE(6,*) '** LOGICAL * 1 **'
      WRITE(6,*) L1%S1(1),L1%S1(2),L1%S1(3),L1%S1(4),L1%S1(5)
      WRITE(6,*) L1%S1(6),L1%S1(7),L1%S1(8),L1%S1(9)
!CCCCCCCCCC
!  L * 4  C  V
!CCCCCCCCCC
      DO 100 I=1,10
        IF (L4%A1(I)) THEN
          L4%S1(1) = .TRUE.
          L4%S1(2) = .FALSE.
          L4%S1(3) = L4%A1(I)
          L4%S1(4) = .NOT.L4%A1(I)
          L4%S1(5) = .NOT.L4%A2(I)
          L4%S1(6) = L4%A1(I).AND.L4%A2(I)
          L4%S1(7) = L4%A1(I).OR. L4%A2(I)
!         L4%S1(8) = I4%A1(I)
!         L4%S1(9) = 1
        ENDIF
100   CONTINUE
      WRITE(6,*) '**LOGICAL * 4 **'
      WRITE(6,*) L4%S1(1),L4%S1(2),L4%S1(3),L4%S1(4),L4%S1(5),L4%S1(6)
      WRITE(6,*) L4%S1(7),L4%S1(8),L4%S1(9)
!
      STOP
      END

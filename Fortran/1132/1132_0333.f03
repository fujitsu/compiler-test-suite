!             CVCT8004            LEVEL=2        DATE=90.03.13
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT8004                                       C
!  2. PURPOSE        : BUSY ON EXIT ( BUSY ON ENTRY )                 C
!                        SIMPLE VARIABLE : TYPE TEST (NOT MASK)       C
!  3. RESULTS        : V , S                                          C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984 - 7 - 6                                   C
!*********************************************************************C
!
      PROGRAM CV8004
      type::str_I
      INTEGER * 2 I2S1,I2S2,I2S3,I2S4,I2S5,I2S6,I2S7,I2S8
      INTEGER * 2 I2A1(10),I2A2(10)
      INTEGER * 4 I4S1,I4S2,I4S3,I4S4,I4S5,I4S6,I4S7,I4S8
      INTEGER * 4 I4A1(10),I4A2(10)
      end type
      type::str_R
      REAL * 4    R4S1,R4S2,R4S3,R4S4,R4S5,R4S6,R4S7,R4S8,R4S9
      REAL * 4    R4A1(10),R4A2(10)
      REAL * 8    R8S1,R8S2,R8S3,R8S4,R8S5,R8S6,R8S7,R8S8,R8S9
      REAL * 8    R8A1(10),R8A2(10)
      REAL * 16   R16S1,R16S2,R16S3,R16S4,R16S5,R16S6,R16S7,R16S8,R16S9
      REAL * 16   R16S10,R16S11,R16A1(10),R16A2(10)
      end type
      type::str_C
      COMPLEX * 8 C8S1,C8S2,C8S3,C8S4,C8S5,C8S6,C8S7,C8S8,C8S9,C8S10
      COMPLEX * 8 C8A1(10),C8A2(10)
      COMPLEX * 16 C16S1,C16S2,C16S3,C16S4,C16S5,C16S6,C16S7,C16S8,C16S9
      COMPLEX * 16 C16S10, C16A1(10),C16A2(10)
      COMPLEX * 32 C32S1,C32S2,C32S3,C32S4,C32S5,C32S6,C32S7,C32S8,C32S9
      COMPLEX * 32 C32S10,C32S11 , C32A1(10),C32A2(10)
      end type
      type::str_L
      LOGICAL * 1  L1S1,L1S2,L1S3,L1S4,L1S5,L1S6,L1S7,L1S8,L1S9
      LOGICAL * 1 L1A1(10),L1A2(10)
      LOGICAL * 4 L4S1,L4S2,L4S3,L4S4,L4S5,L4S6,L4S7,L4S8,L4S9,L4S10
      LOGICAL * 4 L4S11,L4S12 , L4A1(10),L4A2(10)
      end type
      type(str_I)::strI
      type(str_R)::strR
      type(str_C)::strC
      type(str_L)::strL
      DATA strI%I2A1/1,2,3,4,5,6,7,8,9,10/
      DATA strI%I2A2/11,12,13,14,15,16,17,18,19,20/
      DATA strI%I4A1/1,2,3,4,5,6,7,8,9,10/
      DATA strI%I4A2/11,12,13,14,15,16,17,18,19,20/
      DATA strR%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA strR%R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA strR%R8A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA strR%R8A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA strR%R16A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.), &
                (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA strR%R16A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.), &
                (1.,6.),(1.,7.),(1.,8.),(1.,9.),(1.,10.)/
      DATA strC%C8A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.) &
              ,(6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA strC%C8A2/(1.,1.),(2.,1.),(3.,1.),(4.,1.),(5.,1.) &
              ,(6.,1.),(7.,1.),(8.,1.),(9.,1.),(10.,1.)/
      DATA strC%C16A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.) &
              , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA strC%C16A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.) &
              , (1.,6.),(1.,7.),(1.,8.),(1.,9.),(1.,10.)/
      DATA strC%C32A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.) &
              , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA strC%C32A2/(2.,1.),(2.,2.),(2.,3.),(2.,4.),(2.,5.) &
              , (2.,6.),(2.,7.),(2.,8.),(2.,9.),(2.,10.)/
      DATA strL%L1A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
              ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA strL%L1A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
              ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA strL%L4A1/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
             , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA strL%L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE. &
             , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
! u2 add
      strR%R4S3 = 0
      strR%R4S4 = 0
      strR%R4S5 = 0
      strR%R4S6 = 0
      strR%R4S7 = 0
      strR%R4S8 = 0
      strR%R4S9 = 0
      strL%L4S1=.FALSE.
      strL%L4S2=.FALSE.
      strL%L4S3=.FALSE.
      strL%L4S4=.FALSE.
      strL%L4S5=.FALSE.
      strL%L4S6=.FALSE.
      strL%L4S7=.FALSE.
      strL%L4S8=.FALSE.
      strL%L4S9=.FALSE.
      strL%L4S10=.FALSE.
!
      WRITE(6,*) '#### CVCT8004 ## BUSY ON EXIT ####'
!CCCCCCCCC
! I * 2  C NOT V
!CCCCCCCCC
      strI%I2S1 = 0
      strI%I2S2 = 0
      strI%I2S3 = 0
      strI%I2S4 = 0
      strI%I2S5 = 0
      strI%I2S6 = 0
      strI%I2S7 = 0
      strI%I2S8 = 0
      DO 10 I=1,10
        strI%I2A1(I) = strI%I2S1
        strI%I2S1 = 1
        strI%I2A1(I) = strI%I2S2
        strI%I2S2 = strI%I2A1(I)
        strI%I2A1(I) = strI%I2S3
        strI%I2S3 = strI%I4A1(I)
        strI%I4A1(I) = strI%I2S4
        strI%I2S4 = strR%R4A1(I)
        strI%I2A1(I) = strI%I2S5
        strI%I2S5 = strI%I2A1(I) + strI%I2A2(I)
        strI%I2A1(I) = strI%I2S6
        strI%I2S6 = strI%I2A1(I) + strI%I4A1(I)
        strR%R4A1(I) = strI%I2S7
        strI%I2S7 = strI%I2A1(I) + strR%R4A1(I)
        strI%I2A1(I) = strI%I2S8
        strI%I2S8 = strI%I2A1(I) + 9
        strI%I2A2(I) = strI%I2S1+strI%I2S2+strI%I2S3+strI%I2S4+strI%I2S5+strI%I2S6+strI%I2S7+strI%I2S8
 10   CONTINUE
      WRITE(6,*) '** INTEGER * 2 **'
      WRITE(6,*) strI%I2S1,strI%I2S2,strI%I2S3,strI%I2S4,strI%I2S5,strI%I2S6,strI%I2S7,strI%I2S8
      WRITE(6,*) strI%I2A2
!CCCCCCCCC
! I * 4  C    V
!CCCCCCCCC
      strI%I4S1 = 0
      strI%I4S2 = 0
      strI%I4S3 = 0
      strI%I4S4 = 0
      strI%I4S5 = 0
      strI%I4S6 = 0
      strI%I4S7 = 0
      strI%I4S8 = 0
      DO 20 I=1,10
        strI%I4A2(I) = strI%I4S1
        strI%I4S1 = 1
        strI%I4A2(I) = strI%I4S2
        strI%I4S2 = strI%I4A1(I)
        strI%I4A2(I) = strI%I4S3
        strI%I4S3 = strI%I2A1(I)
        strI%I4A2(I) = strI%I4S4
        strI%I4S4 = strR%R4A1(I)
        strI%I4A2(I) = strI%I4S5
        strI%I4S5 = strR%R8A1(I)
        strI%I4A2(I) = strI%I4S6
        strI%I4S6 = strI%I4A1(I) + strI%I4A2(I)
        strI%I4A2(I) = strI%I4S7
        strI%I4S7 = strI%I4A1(I) + 2
        strI%I4A2(I) = strI%I4S8
        strI%I4S8 = strI%I4A1(I) + strR%R4A1(I)
        strI%I4A2(I) = strI%I4S1+strI%I4S2+strI%I4S3+strI%I4S4+strI%I4S5+strI%I4S6+strI%I4S7+strI%I4S8
 20   CONTINUE
      WRITE(6,*) '** INTEGER * 4 **'
      WRITE(6,*)  strI%I4S1,strI%I4S2,strI%I4S3,strI%I4S4,strI%I4S5,strI%I4S6,strI%I4S7,strI%I4S8
      WRITE(6,*)  strI%I4A2
!CCCCCCCCCC
! R * 4   C   V
!CCCCCCCCCC
      strR%R4S1 = 0.
      strR%R4S1 = 1.
      strR%R4S1 = 2.
      strR%R4S1 = 3.
      strR%R4S1 = 4.
      strR%R4S1 = 5.
      strR%R4S1 = 6.
      strR%R4S1 = 7.
      strR%R4S1 = 8.
      DO 30 I=1,10
        strR%R4S2 = strR%R4S1
        strR%R4S1 = 3.
        strR%R4A1(I) = strR%R4S2
        strR%R4S2 = strR%R4A1(I)
        strR%R4S1 = strR%R4S3
        strR%R4S3 = strI%I4A1(I)
        strR%R8A1(I) = strR%R4S4
        strR%R4S4 = strR%R8A1(I)
        strI%I4A1(I) = strR%R4S5
        strR%R4S5 = strI%I2A1(I)
        strR%R4A1(I) = strR%R4S6
        strR%R4S6 = strR%R4A1(I) + 1.
        strR%R4A1(I) = strR%R4S7
        strR%R4S7 = strR%R4A1(I) + strR%R4A2(I)
        strR%R4A2(I) = strR%R4S8
        strR%R4S8 = strR%R4A1(I) + strR%R8A1(I)
        strR%R4S8 = strR%R4S9
        strR%R4S9 = strR%R4A1(I) + strI%I4A1(I)
        strR%R4A2(I) = strR%R4S1+strR%R4S2+strR%R4S3+strR%R4S4+strR%R4S5+strR%R4S6+strR%R4S7+strR%R4S8+strR%R4S9
 30   CONTINUE
      WRITE(6,*) '** REAL * 4 **'
      WRITE(6,*) strR%R4S1,strR%R4S2,strR%R4S3,strR%R4S4,strR%R4S5,strR%R4S6,strR%R4S7,strR%R4S8,strR%R4S9
      WRITE(6,*) strR%R4A2
!CCCCCCCCCC
! R * 8   C V
!CCCCCCCCCC
      strR%R8S1 = 1.
      strR%R8S2 = 2.
      strR%R8S3 = 3.
      strR%R8S4 = 4.
      strR%R8S5 = 5.
      strR%R8S6 = 6.
      strR%R8S7 = 7.
      strR%R8S8 = 8.
      strR%R8S9 = 9.
      DO 40 I=1,10
        strR%R8S2 = strR%R8S1
        strR%R8S1 = 4.
        strR%R4A1(I) = strR%R8S2
        strR%R8S2 = strR%R8A1(I)
        strR%R4A1(I) = strR%R8S3
        strR%R8S3 = strR%R4A1(I)
        strI%I4A1(I) = strR%R8S4
        strR%R8S4 = strI%I4A1(I)
        strR%R8S6 = strR%R8S5
        strR%R8S5 = strC%C8A1(I)
        strR%R8A1(I) = strR%R8S6
        strR%R8S6 = strR%R8A1(I) + strR%R8A2(I)
        strR%R4A1(I) = strR%R8S7
        strR%R8S7 = strR%R8A1(I) + 4.
        strR%R4A2(I) = strR%R8S8
        strR%R8S8 = strR%R4A1(I) + strI%I4A1(I)
        strR%R4A2(I) = strR%R8S9
        strR%R8S9 = strR%R8A1(I) + strR%R4A1(I)
        strR%R8A2(I) = strR%R8S1+strR%R8S2+strR%R8S3+strR%R8S4+strR%R8S5+strR%R8S6+strR%R8S7+strR%R8S8+strR%R8S9
 40   CONTINUE
      WRITE(6,*) '** REAL * 8 **'
      WRITE(6,*)  strR%R8S1,strR%R8S2,strR%R8S3,strR%R8S4,strR%R8S5,strR%R8S6,strR%R8S7,strR%R8S8,strR%R8S9
      WRITE(6,*)  strR%R8A2
!CCCCCCCCCCC
!  R * 16  C   V
!CCCCCCCCCCC
      strR%R16S1 = 0.
      strR%R16S2 = 0.
      strR%R16S3 = 0.
      strR%R16S4 = 0.
      strR%R16S5 = 0.
      strR%R16S6 = 0.
      strR%R16S7 = 0.
      strR%R16S8 = 0.
      strR%R16S9 = 0.
      strR%R16S10 = 0.
      strR%R16S11 = 0.
      DO 50 I=1,10
        strR%R16A2(I) = strR%R16S1
        strR%R16S1 = 5.
        strR%R16A1(I) = strR%R16S2
        strR%R16S2 = strR%R16A1(I)
        strR%R16A1(I) = strR%R16S3
        strR%R16S3 = strR%R8A1(I)
        strR%R16A1(I) = strR%R16S4
        strR%R16S4 = strR%R4A1(I)
        strR%R16A2(I) = strR%R16S5
        strR%R16S5 = strI%I4A1(I)
        strR%R16A1(I) = strR%R16S6
        strR%R16S6 = strC%C8A1(I)
        strR%R16A1(I) = strR%R16S7
        strR%R16S7 = strC%C16A1(I)
        strR%R16A2(I) = strR%R16S8
        strR%R16S8 = strR%R16A1(I) + strR%R16A2(I)
        strR%R16A1(I) = strR%R16S9
        strR%R16S9 = strR%R16A1(I) + 5.
        strR%R16A2(I) = strR%R16S10
        strR%R16S10 = strR%R8A1(I) + strR%R16A1(I)
        strR%R16A1(I) = strR%R16S11
        strR%R16S11 = strR%R4A1(I) + strR%R16A1(I)
        strR%R16A2(I) =strR%R16S1+strR%R16S2+strR%R16S3+strR%R16S4+strR%R16S5+strR%R16S6+strR%R16S7+strR%R16S8+strR%R16S9 &
               + strR%R16S10+strR%R16S11
 50   CONTINUE
      WRITE(6,*) '** REAL * 8  **'
      WRITE(6,*) strR%R16S1,strR%R16S2,strR%R16S3,strR%R16S4,strR%R16S5,strR%R16S6,strR%R16S7,strR%R16S8
      WRITE(6,*) strR%R16S9,strR%R16S10,strR%R16S11
      WRITE(6,*) strR%R16A2
!CCCCCCCCCC
!  C * 8  C
!CCCCCCCCCC
      strC%C8S1 = 1.
      strC%C8S2 = 2.
      strC%C8S3 = 3.
      strC%C8S4 = 4.
      strC%C8S5 = 5.
      strC%C8S6 = 6.
      strC%C8S7 = 7.
      strC%C8S8 = 8.
      strC%C8S9 = 9.
      strC%C8S10 = 10.
      DO 60 I=1,10
        strC%C8A1(I) = strC%C8S1
        strC%C8S1 = 6.
        strC%C8A1(I) = strC%C8S2
        strC%C8S2 = strC%C8A1(I)
        strC%C8A1(I) = strC%C8S3
        strC%C8S3 = strI%I4A1(I)
        strC%C8A1(I) = strC%C8S4
        strC%C8S4 = strR%R4A1(I)
        strC%C8A1(I) = strC%C8S5
        strC%C8S5 = strR%R8A1(I)
        strC%C8A1(I) = strC%C8S6
        strC%C8S6 = strR%R16A1(I)
        strC%C8A1(I) = strC%C8S7
        strC%C8S7 = strC%C16A1(I)
        strC%C8A1(I) = strC%C8S8
        strC%C8S8 = strC%C32A1(I)
        strC%C8A1(I) = strC%C8S9
        strC%C8S9 = strC%C8A1(I) + strC%C8A2(I)
        strC%C8A1(I) = strC%C8S10
        strC%C8S10 = strC%C8A1(I) + 6.
        strC%C8A2(I) = strC%C8S1+strC%C8S2+strC%C8S3+strC%C8S4+strC%C8S5+strC%C8S6+strC%C8S7+strC%C8S8+strC%C8S9+strC%C8S10
 60   CONTINUE
      WRITE(6,*) '** COMPLEX * 8 **'
      WRITE(6,*) strC%C8S1,strC%C8S2,strC%C8S3,strC%C8S4,strC%C8S5,strC%C8S6,strC%C8S7,strC%C8S8,strC%C8S9,strC%C8S10
      WRITE(6,*) strC%C8A1
!CCCCCCCCCCCC
!  C * 16   C  V
!CCCCCCCCCCCC
      strC%C16S1 = 1.
      strC%C16S2 = 2.
      strC%C16S3 = 3.
      strC%C16S4 = 4.
      strC%C16S5 = 5.
      strC%C16S6 = 6.
      strC%C16S7 = 7.
      strC%C16S8 = 8.
      strC%C16S9 = 9.
      strC%C16S10= 10.
      DO 70 I=1,10
        strC%C16A1(I) = strC%C16S1
        strC%C16S1 = 7.
        strC%C16A1(I) =strC%C16S2
        strC%C16S2 = strC%C16A1(I)
        strC%C16A1(I) = strC%C16S3
        strC%C16S3 = strI%I4A1(I)
        strC%C16A1(I) = strC%C16S4
        strC%C16S4 = strR%R4A1(I)
        strC%C16A1(I) = strC%C16S5
        strC%C16S5 = strR%R8A1(I)
        strC%C16A1(I) = strC%C16S6
        strC%C16S6 = strR%R16A1(I)
        strC%C16A1(I) = strC%C16S7
        strC%C16S7 = strC%C8A1(I)
        strC%C16A1(I) = strC%C16S8
        strC%C16S8 = strC%C32A1(I)
        strC%C16A1(I) = strC%C16S9
        strC%C16S9 = strC%C16A1(I) + strC%C16A2(I)
        strC%C16A1(I) = strC%C16S10
        strC%C16S10 = strC%C16A1(I) + 7.
        strC%C16A2(I) =strC%C16S1+strC%C16S2+strC%C16S3+strC%C16S4+strC%C16S5+strC%C16S6+strC%C16S7+strC%C16S8 &
                +strC%C16S9+strC%C16S10
 70   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) strC%C16S1,strC%C16S2,strC%C16S3,strC%C16S4,strC%C16S5,strC%C16S6,strC%C16S7,strC%C16S8
      WRITE(6,*) strC%C16S9,strC%C16S10
      WRITE(6,*) strC%C16A2
!CCCCCCCCCCCC
!  C * 32   C   NOT V
!CCCCCCCCCCCC
      strC%C32S1 = 1.
      strC%C32S2 = 2.
      strC%C32S3 = 3.
      strC%C32S4 = 4.
      strC%C32S5 = 5.
      strC%C32S6 = 6.
      strC%C32S7 = 7.
      strC%C32S8 = 8.
      strC%C32S9 = 9.
      strC%C32S10= 10.
      strC%C32S11= 11.
      DO 80 I=1,10
        strC%C32A1(I) = strC%C32S1
        strC%C32S1 = 8.
        strC%C32A1(I) = strC%C32S2
        strC%C32S2 = strC%C32A1(I)
        strC%C32A1(I) = strC%C32S3
        strC%C32S3 = strI%I4A1(I)
        strC%C32A1(I) = strC%C32S4
        strC%C32S4 = strR%R4A1(I)
        strC%C32A1(I) = strC%C32S5
        strC%C32S5 = strR%R8A1(I)
        strC%C32A1(I) = strC%C32S6
        strC%C32S6 = strR%R16A1(I)
        strC%C32A1(I) = strC%C32S7
        strC%C32S7 = strC%C8A1(I)
        strC%C32A1(I) = strC%C32S8
        strC%C32S8 = strC%C16A1(I)
        strC%C32A1(I) = strC%C32S9
        strC%C32S9 = strC%C32A1(I)
        strC%C32A1(I) = strC%C32S10
        strC%C32S10 = strC%C32A1(I) + strC%C32A2(I)
        strC%C32A1(I) = strC%C32S11
        strC%C32S11 = strC%C32A1(I) + 8.
        strC%C32A2(I) = strC%C32S1+strC%C32S2+strC%C32S3+strC%C32S4+strC%C32S5+strC%C32S6+strC%C32S7+strC%C32S8 &
               + strC%C32S9+strC%C32S10+strC%C32S11
 80   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) strC%C32S1,strC%C32S2,strC%C32S3,strC%C32S4,strC%C32S5,strC%C32S6,strC%C32S7,strC%C32S8
      WRITE(6,*) strC%C32S9,strC%C32S10,strC%C32S11
      WRITE(6,*) strC%C32A2
!CCCCCCCCCC
!  L * 1  C  NOT V
!CCCCCCCCCC
      strL%L1S1 = .TRUE.
      strL%L1S2 = .FALSE.
      strL%L1S3 = .TRUE.
      strL%L1S4 = .FALSE.
      strL%L1S5 = .TRUE.
      strL%L1S6 = .FALSE.
      strL%L1S7 = .TRUE.
      strL%L1S8 = .FALSE.
      strL%L1S9 = .TRUE.
      DO 90 I=1,10
        strL%L1A1(I) = strL%L1S1
        strL%L1S1 = .TRUE.
        strL%L1A1(I) = strL%L1S2
        strL%L1S2 = .FALSE.
        strL%L1A1(I) = strL%L1S3
        strL%L1S3 = strL%L1A1(I)
        strL%L1A1(I) = strL%L1S4
        strL%L1S4 = strL%L4A1(I)
        strL%L1A1(I) = strL%L1S5
        strL%L1S5 = .NOT.strL%L1A1(I)
        strL%L1A1(I) = strL%L1S6
        strL%L1S6 = .NOT.strL%L1A2(I)
        strL%L1A1(I) = strL%L1S7
        strL%L1S7 = strL%L1A1(I).AND.strL%L1A2(I)
        strL%L1A1(I) =strL%L1S8
        strL%L1S8 = strL%L1A1(I).OR.strL%L1A2(I)
        strL%L1A1(I) =strL%L1S9
        strL%L1S9 = strL%L1A1(I).AND.strL%L4A1(I)
 90   CONTINUE
      WRITE(6,*) '** LOGICAL * 1 **'
      WRITE(6,*) strL%L1S1,strL%L1S2,strL%L1S3,strL%L1S4,strL%L1S5,strL%L1S6,strL%L1S7,strL%L1S8,strL%L1S9
      WRITE(6,*) strL%L1A2
!CCCCCCCCCC
!  L * 4  C  V
!CCCCCCCCCC
      strL%L4S1 = .TRUE.
      strL%L4S2 = .FALSE.
      strL%L4S3 = .TRUE.
      strL%L4S4 = .FALSE.
      strL%L4S5 = .TRUE.
      strL%L4S6 = .FALSE.
      strL%L4S7 = .TRUE.
      strL%L4S8 = .FALSE.
      strL%L4S9 = .TRUE.
      strL%L4S10= .FALSE.
      strL%L4S11= .TRUE.
      strL%L4S12= .FALSE.
      DO 100 I=1,10
        strL%L4A1(I) = strL%L4S1
        strL%L4S1 = .TRUE.
        strL%L4A1(I) = strL%L4S2
        strL%L4S2 = .FALSE.
        strL%L4A1(I) =strL%L4S3
        strL%L4S3 = strL%L4A1(I)
        strL%L4A1(I) =strL%L4S4
        strL%L4S4 = strL%L1A1(I)
        strL%L4A1(I) =strL%L4S5
        strL%L4S5 = .NOT.strL%L4A1(I)
        strL%L4A1(I) =strL%L4S6
        strL%L4S6 = .NOT.strL%L4A2(I)
        strL%L4A1(I) = strL%L4S7
        strL%L4S7 = strL%L4A1(I).AND.strL%L4A2(I)
        strL%L4A1(I) = strL%L4S8
        strL%L4S8 = strL%L4A1(I).OR. strL%L4A2(I)
        strL%L4A1(I) = strL%L4S9
        strL%L4S9 = strL%L4A1(I).AND.strL%L1A1(I)
        strL%L4A1(I) = strL%L4S10
!***    strL%L4S10 = strI%I4A1(I)
        strL%L4S10 = strI%I4A1(I) .GT. 1
        strL%L4A1(I) =strL%L4S11
!***    strL%L4S11 = strI%I2A1(I)
        strL%L4S11 = strI%I2A1(I) .GT. 1
        strL%L4A1(I) =strL%L4S12
!***    strL%L4S12 = 1
100   CONTINUE
      WRITE(6,*) '**LOGICAL * 4 **'
      WRITE(6,*) strL%L4S1,strL%L4S2,strL%L4S3,strL%L4S4,strL%L4S5,strL%L4S6,strL%L4S7,strL%L4S8,strL%L4S9
      WRITE(6,*) strL%L4S10,strL%L4S11,strL%L4S12
!
      STOP
      END

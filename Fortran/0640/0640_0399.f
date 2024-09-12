      PROGRAM MAIN
      INTEGER * 2 I2S1,I2S2,I2S3,I2S4,I2S5,I2S6,I2S7,I2S8
      INTEGER * 2 I2A1(10),I2A2(10)
      INTEGER * 4 I4A1(10),I4A2(10)
      REAL * 4    R4S1,R4S2,R4S3,R4S4,R4S5,R4S6,R4S7,R4S8,R4S9
      REAL * 4    R4A1(10),R4A2(10)
      REAL * 8    R8S1,R8S2,R8S3,R8S4,R8S5,R8S6,R8S7,R8S8,R8S9
      REAL * 8    R8A1(10),R8A2(10)
      REAL * 8    R16S1,R16S2,R16S3,R16S4,R16S5,R16S6,R16S7,R16S8,R16S9
      REAL * 8    R16S10,R16S11,R16A1(10),R16A2(10)
      COMPLEX * 8 C8S1,C8S2,C8S3,C8S4,C8S5,C8S6,C8S7,C8S8,C8S9,C8S10
      COMPLEX * 8 C8A1(10),C8A2(10)
      COMPLEX * 16 C16S1,C16S2,C16S3,C16S4,C16S5,C16S6,C16S7,C16S8,C16S9
      COMPLEX * 16 C16S10, C16A1(10),C16A2(10)
      COMPLEX * 16 C32S1,C32S2,C32S3,C32S4,C32S5,C32S6,C32S7,C32S8,C32S9
      COMPLEX * 16 C32S10,C32S11 , C32A1(10),C32A2(10)
      LOGICAL * 1  L1S1,L1S2,L1S3,L1S4,L1S5,L1S6,L1S7,L1S8,L1S9
      LOGICAL * 1 L1A1(10),L1A2(10)
      LOGICAL * 4 L4S1,L4S2,L4S3,L4S4,L4S5,L4S6,L4S7,L4S8,L4S9,L4S10
      LOGICAL * 4 L4S11,L4S12 , L4A1(10),L4A2(10)
      DATA I2A1/1,2,3,4,5,6,7,8,9,10/
      DATA I2A2/11,12,13,14,15,16,17,18,19,20/
      DATA I4A1/1,2,3,4,5,6,7,8,9,10/
      DATA I4A2/11,12,13,14,15,16,17,18,19,20/
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R8A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R8A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R16A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),
     +           (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA R16A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.),
     +           (1.,6.),(1.,7.),(1.,8.),(1.,9.),(1.,10.)/
      DATA C8A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.)
     +         ,(6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA C8A2/(1.,1.),(2.,1.),(3.,1.),(4.,1.),(5.,1.)
     +         ,(6.,1.),(7.,1.),(8.,1.),(9.,1.),(10.,1.)/
      DATA C16A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.)
     +         , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA C16A2/(1.,1.),(1.,2.),(1.,3.),(1.,4.),(1.,5.)
     +         , (1.,6.),(1.,7.),(1.,8.),(1.,9.),(1.,10.)/
      DATA C32A1/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.)
     +         , (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
      DATA C32A2/(2.,1.),(2.,2.),(2.,3.),(2.,4.),(2.,5.)
     +         , (2.,6.),(2.,7.),(2.,8.),(2.,9.),(2.,10.)/
      DATA L1A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     +         ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L1A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     +         ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA L4A1/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     +        , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./

      R4S3 = 0
      R4S4 = 0
      R4S5 = 0
      R4S6 = 0
      R4S7 = 0
      R4S8 = 0
      R4S9 = 0
      L4S1=.FALSE.
      L4S2=.FALSE.
      L4S3=.FALSE.
      L4S4=.FALSE.
      L4S5=.FALSE.
      L4S6=.FALSE.
      L4S7=.FALSE.
      L4S8=.FALSE.
      L4S9=.FALSE.
      L4S10=.FALSE.

      I2S1 = 0
      I2S2 = 0
      I2S3 = 0
      I2S4 = 0
      I2S5 = 0
      I2S6 = 0
      I2S7 = 0
      I2S8 = 0
      DO 10 I=1,10
        I2A1(I) = I2S1
        I2S1 = 1
        I2A1(I) = I2S2
        I2S2 = I2A1(I)
        I2A1(I) = I2S3
        I2S3 = I4A1(I)
        I4A1(I) = I2S4
        I2S4 = R4A1(I)
        I2A1(I) = I2S5
        I2S5 = I2A1(I) + I2A2(I)
        I2A1(I) = I2S6
        I2S6 = I2A1(I) + I4A1(I)
        R4A1(I) = I2S7
        I2S7 = I2A1(I) + R4A1(I)
        I2A1(I) = I2S8
        I2S8 = I2A1(I) + 9
        I2A2(I) = I2S1+I2S2+I2S3+I2S4+I2S5+I2S6+I2S7+I2S8
 10   CONTINUE
      WRITE(6,*) '** INTEGER * 2 **'
      WRITE(6,*) I2S1,I2S2,I2S3,I2S4,I2S5,I2S6,I2S7,I2S8
      WRITE(6,*) I2A2

      I4S1 = 0
      I4S2 = 0
      I4S3 = 0
      I4S4 = 0
      I4S5 = 0
      I4S6 = 0
      I4S7 = 0
      I4S8 = 0
      DO 20 I=1,10
        I4A2(I) = I4S1
        I4S1 = 1
        I4A2(I) = I4S2
        I4S2 = I4A1(I)
        I4A2(I) = I4S3
        I4S3 = I2A1(I)
        I4A2(I) = I4S4
        I4S4 = R4A1(I)
        I4A2(I) = I4S5
        I4S5 = R8A1(I)
        I4A2(I) = I4S6
        I4S6 = I4A1(I) + I4A2(I)
        I4A2(I) = I4S7
        I4S7 = I4A1(I) + 2
        I4A2(I) = I4S8
        I4S8 = I4A1(I) + R4A1(I)
        I4A2(I) = I4S1+I4S2+I4S3+I4S4+I4S5+I4S6+I4S7+I4S8
 20   CONTINUE
      WRITE(6,*) '** INTEGER * 4 **'
      WRITE(6,*)  I4S1,I4S2,I4S3,I4S4,I4S5,I4S6,I4S7,I4S8
      WRITE(6,*)  I4A2

      R4S1 = 0.
      R4S1 = 1.
      R4S1 = 2.
      R4S1 = 3.
      R4S1 = 4.
      R4S1 = 5.
      R4S1 = 6.
      R4S1 = 7.
      R4S1 = 8.
      DO 30 I=1,10
        R4S2 = R4S1
        R4S1 = 3.
        R4A1(I) = R4S2
        R4S2 = R4A1(I)
        R4S1 = R4S3
        R4S3 = I4A1(I)
        R8A1(I) = R4S4
        R4S4 = R8A1(I)
        I4A1(I) = R4S5
        R4S5 = I2A1(I)
        R4A1(I) = R4S6
        R4S6 = R4A1(I) + 1.
        R4A1(I) = R4S7
        R4S7 = R4A1(I) + R4A2(I)
        R4A2(I) = R4S8
        R4S8 = R4A1(I) + R8A1(I)
        R4S8 = R4S9
        R4S9 = R4A1(I) + I4A1(I)
        R4A2(I) = R4S1+R4S2+R4S3+R4S4+R4S5+R4S6+R4S7+R4S8+R4S9
 30   CONTINUE
      WRITE(6,*) '** REAL * 4 **'
      WRITE(6,*) R4S1,R4S2,R4S3,R4S4,R4S5,R4S6,R4S7,R4S8,R4S9
      WRITE(6,*) R4A2

      R8S1 = 1.
      R8S2 = 2.
      R8S3 = 3.
      R8S4 = 4.
      R8S5 = 5.
      R8S6 = 6.
      R8S7 = 7.
      R8S8 = 8.
      R8S9 = 9.
      DO 40 I=1,10
        R8S2 = R8S1
        R8S1 = 4.
        R4A1(I) = R8S2
        R8S2 = R8A1(I)
        R4A1(I) = R8S3
        R8S3 = R4A1(I)
        I4A1(I) = R8S4
        R8S4 = I4A1(I)
        R8S6 = R8S5
        R8S5 = C8A1(I)
        R8A1(I) = R8S6
        R8S6 = R8A1(I) + R8A2(I)
        R4A1(I) = R8S7
        R8S7 = R8A1(I) + 4.
        R4A2(I) = R8S8
        R8S8 = R4A1(I) + I4A1(I)
        R4A2(I) = R8S9
        R8S9 = R8A1(I) + R4A1(I)
        R8A2(I) = R8S1+R8S2+R8S3+R8S4+R8S5+R8S6+R8S7+R8S8+R8S9
 40   CONTINUE
      WRITE(6,*) '** REAL * 8 **'
      WRITE(6,*)  R8S1,R8S2,R8S3,R8S4,R8S5,R8S6,R8S7,R8S8,R8S9
      WRITE(6,*)  R8A2

      R16S1 = 0.
      R16S2 = 0.
      R16S3 = 0.
      R16S4 = 0.
      R16S5 = 0.
      R16S6 = 0.
      R16S7 = 0.
      R16S8 = 0.
      R16S9 = 0.
      R16S10 = 0.
      R16S11 = 0.
      DO 50 I=1,10
        R16A2(I) = R16S1
        R16S1 = 5.
        R16A1(I) = R16S2
        R16S2 = R16A1(I)
        R16A1(I) = R16S3
        R16S3 = R8A1(I)
        R16A1(I) = R16S4
        R16S4 = R4A1(I)
        R16A2(I) = R16S5
        R16S5 = I4A1(I)
        R16A1(I) = R16S6
        R16S6 = C8A1(I)
        R16A1(I) = R16S7
        R16S7 = C16A1(I)
        R16A2(I) = R16S8
        R16S8 = R16A1(I) + R16A2(I)
        R16A1(I) = R16S9
        R16S9 = R16A1(I) + 5.
        R16A2(I) = R16S10
        R16S10 = R8A1(I) + R16A1(I)
        R16A1(I) = R16S11
        R16S11 = R4A1(I) + R16A1(I)
        R16A2(I) =R16S1+R16S2+R16S3+R16S4+R16S5+R16S6+R16S7+R16S8+R16S9
     +          + R16S10+R16S11
 50   CONTINUE
      WRITE(6,*) '** REAL * 8  **'
      WRITE(6,*) R16S1,R16S2,R16S3,R16S4,R16S5,R16S6,R16S7,R16S8
      WRITE(6,*) R16S9,R16S10,R16S11
      WRITE(6,*) R16A2

      C8S1 = 1.
      C8S2 = 2.
      C8S3 = 3.
      C8S4 = 4.
      C8S5 = 5.
      C8S6 = 6.
      C8S7 = 7.
      C8S8 = 8.
      C8S9 = 9.
      C8S10 = 10.
      DO 60 I=1,10
        C8A1(I) = C8S1
        C8S1 = 6.
        C8A1(I) = C8S2
        C8S2 = C8A1(I)
        C8A1(I) = C8S3
        C8S3 = I4A1(I)
        C8A1(I) = C8S4
        C8S4 = R4A1(I)
        C8A1(I) = C8S5
        C8S5 = R8A1(I)
        C8A1(I) = C8S6
        C8S6 = R16A1(I)
        C8A1(I) = C8S7
        C8S7 = C16A1(I)
        C8A1(I) = C8S8
        C8S8 = C32A1(I)
        C8A1(I) = C8S9
        C8S9 = C8A1(I) + C8A2(I)
        C8A1(I) = C8S10
        C8S10 = C8A1(I) + 6.
        C8A2(I) = C8S1+C8S2+C8S3+C8S4+C8S5+C8S6+C8S7+C8S8+C8S9+C8S10
 60   CONTINUE
      WRITE(6,*) '** COMPLEX * 8 **'
      WRITE(6,*) C8S1,C8S2,C8S3,C8S4,C8S5,C8S6,C8S7,C8S8,C8S9,C8S10
      WRITE(6,*) C8A1

      C16S1 = 1.
      C16S2 = 2.
      C16S3 = 3.
      C16S4 = 4.
      C16S5 = 5.
      C16S6 = 6.
      C16S7 = 7.
      C16S8 = 8.
      C16S9 = 9.
      C16S10= 10.
      DO 70 I=1,10
        C16A1(I) = C16S1
        C16S1 = 7.
        C16A1(I) =C16S2
        C16S2 = C16A1(I)
        C16A1(I) = C16S3
        C16S3 = I4A1(I)
        C16A1(I) = C16S4
        C16S4 = R4A1(I)
        C16A1(I) = C16S5
        C16S5 = R8A1(I)
        C16A1(I) = C16S6
        C16S6 = R16A1(I)
        C16A1(I) = C16S7
        C16S7 = C8A1(I)
        C16A1(I) = C16S8
        C16S8 = C32A1(I)
        C16A1(I) = C16S9
        C16S9 = C16A1(I) + C16A2(I)
        C16A1(I) = C16S10
        C16S10 = C16A1(I) + 7.
        C16A2(I) =C16S1+C16S2+C16S3+C16S4+C16S5+C16S6+C16S7+C16S8
     +           +C16S9+C16S10
 70   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) C16S1,C16S2,C16S3,C16S4,C16S5,C16S6,C16S7,C16S8
      WRITE(6,*) C16S9,C16S10
      WRITE(6,*) C16A2

      C32S1 = 1.
      C32S2 = 2.
      C32S3 = 3.
      C32S4 = 4.
      C32S5 = 5.
      C32S6 = 6.
      C32S7 = 7.
      C32S8 = 8.
      C32S9 = 9.
      C32S10= 10.
      C32S11= 11.
      DO 80 I=1,10
        C32A1(I) = C32S1
        C32S1 = 8.
        C32A1(I) = C32S2
        C32S2 = C32A1(I)
        C32A1(I) = C32S3
        C32S3 = I4A1(I)
        C32A1(I) = C32S4
        C32S4 = R4A1(I)
        C32A1(I) = C32S5
        C32S5 = R8A1(I)
        C32A1(I) = C32S6
        C32S6 = R16A1(I)
        C32A1(I) = C32S7
        C32S7 = C8A1(I)
        C32A1(I) = C32S8
        C32S8 = C16A1(I)
        C32A1(I) = C32S9
        C32S9 = C32A1(I)
        C32A1(I) = C32S10
        C32S10 = C32A1(I) + C32A2(I)
        C32A1(I) = C32S11
        C32S11 = C32A1(I) + 8.
        C32A2(I) = C32S1+C32S2+C32S3+C32S4+C32S5+C32S6+C32S7+C32S8
     +          + C32S9+C32S10+C32S11
 80   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) C32S1,C32S2,C32S3,C32S4,C32S5,C32S6,C32S7,C32S8
      WRITE(6,*) C32S9,C32S10,C32S11
      WRITE(6,*) C32A2

      L1S1 = .TRUE.
      L1S2 = .FALSE.
      L1S3 = .TRUE.
      L1S4 = .FALSE.
      L1S5 = .TRUE.
      L1S6 = .FALSE.
      L1S7 = .TRUE.
      L1S8 = .FALSE.
      L1S9 = .TRUE.
      DO 90 I=1,10
        L1A1(I) = L1S1
        L1S1 = .TRUE.
        L1A1(I) = L1S2
        L1S2 = .FALSE.
        L1A1(I) = L1S3
        L1S3 = L1A1(I)
        L1A1(I) = L1S4
        L1S4 = L4A1(I)
        L1A1(I) = L1S5
        L1S5 = .NOT.L1A1(I)
        L1A1(I) = L1S6
        L1S6 = .NOT.L1A2(I)
        L1A1(I) = L1S7
        L1S7 = L1A1(I).AND.L1A2(I)
        L1A1(I) =L1S8
        L1S8 = L1A1(I).OR.L1A2(I)
        L1A1(I) =L1S9
        L1S9 = L1A1(I).AND.L4A1(I)
 90   CONTINUE
      WRITE(6,*) '** LOGICAL * 1 **'
      WRITE(6,*) L1S1,L1S2,L1S3,L1S4,L1S5,L1S6,L1S7,L1S8,L1S9
      WRITE(6,*) L1A2

      L4S1 = .TRUE.
      L4S2 = .FALSE.
      L4S3 = .TRUE.
      L4S4 = .FALSE.
      L4S5 = .TRUE.
      L4S6 = .FALSE.
      L4S7 = .TRUE.
      L4S8 = .FALSE.
      L4S9 = .TRUE.
      L4S10= .FALSE.
      L4S11= .TRUE.
      L4S12= .FALSE.
      DO 100 I=1,10
        L4A1(I) = L4S1
        L4S1 = .TRUE.
        L4A1(I) = L4S2
        L4S2 = .FALSE.
        L4A1(I) =L4S3
        L4S3 = L4A1(I)
        L4A1(I) =L4S4
        L4S4 = L1A1(I)
        L4A1(I) =L4S5
        L4S5 = .NOT.L4A1(I)
        L4A1(I) =L4S6
        L4S6 = .NOT.L4A2(I)
        L4A1(I) = L4S7
        L4S7 = L4A1(I).AND.L4A2(I)
        L4A1(I) = L4S8
        L4S8 = L4A1(I).OR. L4A2(I)
        L4A1(I) = L4S9
        L4S9 = L4A1(I).AND.L1A1(I)
        L4A1(I) = L4S10
        L4S10 = I4A1(I) .GT. 1
        L4A1(I) =L4S11
        L4S11 = I2A1(I) .GT. 1
        L4A1(I) =L4S12
100   CONTINUE
      WRITE(6,*) '**LOGICAL * 4 **'
      WRITE(6,*) L4S1,L4S2,L4S3,L4S4,L4S5,L4S6,L4S7,L4S8,L4S9
      WRITE(6,*) L4S10,L4S11,L4S12
      STOP
      END

      PROGRAM MAIN
      INTEGER * 2 I2S1(20) , I2A1(10),I2A2(10)
      INTEGER * 4 I4S1(20) , I4A1(10),I4A2(10)
      REAL * 4    R4S1(20) , R4A1(10),R4A2(10)
      REAL * 8    R8S1(20) , R8A1(10),R8A2(10)
      REAL * 8    R16S1(20), R16A1(10),R16A2(10)
      COMPLEX * 8 C8S1(20) , C8A1(10),C8A2(10)
      COMPLEX * 16 C16S1(20), C16A1(10)
      COMPLEX * 16 C32S1(20),C32A1(10),C32A2(10)
      LOGICAL * 1  L1S1(20),L1A1(10),L1A2(10)
      LOGICAL * 4 L4S1(20),L4A1(10),L4A2(10)
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
      data L4S1/20*.false./

      DO 10 I=1,10
        IF (L4A1(I)) THEN
          I2S1(1) = 0
          I2S1(2) = I2A1(I)
          I2S1(3) = I4A1(I)
          I2S1(3) = R4A1(I)
          I2S1(4) = I2A1(I) + I2A2(I)
          I2S1(5) = I2A1(I) + I4A1(I)
          I2S1(6) = I2A1(I) + R4A1(I)
          I2S1(7) = I2A1(I) + 9
        ENDIF
 10   CONTINUE
      WRITE(6,*) '** INTEGER * 2 **'
      WRITE(6,*) I2S1(1),I2S1(2),I2S1(3),I2S1(4),I2S1(5)
      WRITE(6,*) I2S1(6),I2S1(7)

      DO 20 I=1,10
        IF (L4A1(I)) THEN
          I4S1(1) = 1
          I4S1(2) = I4A1(I)
          I4S1(3) = I2A1(I)
          I4S1(4) = R4A1(I)
          I4S1(5) = R8A1(I)
          I4S1(6) = I4A1(I) + I4A2(I)
          I4S1(7) = I4A1(I) + 2
          I4S1(8) = I4A1(I) + R4A1(I)
        ENDIF
        IF (L4A2(I)) THEN
          I4S1(1) = 1
          I4S1(2) = I4A1(I)
          I4S1(3) = I2A1(I)
          I4S1(4) = R4A1(I)
          I4S1(5) = R8A1(I)
          I4S1(6) = I4A1(I) + I4A2(I)
          I4S1(7) = I4A1(I) + 2
          I4S1(8) = I4A1(I) + R4A1(I)
        ENDIF
 20   CONTINUE
      WRITE(6,*) '** INTEGER * 4 **'
      WRITE(6,*)  I4S1(1),I4S1(2),I4S1(3),I4S1(4),I4S1(5)
      WRITE(6,*)  I4S1(6),I4S1(7),I4S1(8)

      DO 30 I=1,10
       IF (L4A1(I)) THEN
          R4S1(1) = 3.
          R4S1(2) = R4A1(I)
          R4S1(3) = I4A1(I)
          R4S1(4) = R8A1(I)
          R4S1(5) = R4A1(I) + 1.
          R4S1(6) = R4A1(I) + R4A2(I)
          R4S1(7) = R4A1(I) + R8A1(I)
          R4S1(8) = R4A1(I) + I4A1(I)
        ENDIF
 30   CONTINUE
      WRITE(6,*) '** REAL * 4 **'
      WRITE(6,*) R4S1(1),R4S1(2),R4S1(3),R4S1(4)
      WRITE(6,*) R4S1(5),R4S1(6),R4S1(7)

      DO 40 I=1,10
        IF (L4A1(I)) THEN
          R8S1(1) = 4.
          R8S1(2) = R8A1(I)
          R8S1(3) = R4A1(I)
          R8S1(4) = I4A1(I)
          R8S1(5) = C8A1(I)
          R8S1(6) = R8A1(I) + R8A2(I)
          R8S1(7) = R8A1(I) + 4.
          R8S1(8) = R4A1(I) + I4A1(I)
          R8S1(9) = R8A1(I) + R4A1(I)
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** REAL * 8 **'
      WRITE(6,*)  R8S1(1),R8S1(2),R8S1(3),R8S1(4),R8S1(5),R8S1(6)
      WRITE(6,*)  R8S1(7),R8S1(8),R8S1(9)

      DO 50 I=1,10
        IF (L4A1(I)) THEN
          R16S1(1) = 5.
          R16S1(2) = R16A1(I)
          R16S1(3) = R8A1(I)
          R16S1(4) = R4A1(I)
          R16S1(5) = I4A1(I)
          R16S1(6) = C8A1(I)
          R16S1(7) = C16A1(I)
          R16S1(8) = R16A1(I) + R16A2(I)
          R16S1(9) = R16A1(I) + 5.
          R16S1(10) = R8A1(I) + R16A1(I)
          R16S1(11) = R4A1(I) + R16A1(I)
        ENDIF
 50   CONTINUE
      WRITE(6,*) '** REAL * 8  **'
      WRITE(6,*) R16S1(1),R16S1(2),R16S1(3),R16S1(4),R16S1(5),R16S1(6)
      WRITE(6,*) R16S1(7),R16S1(8),R16S1(9),R16S1(10),R16S1(11)

      DO 60 I=1,10
        IF (L4A1(I)) THEN
          C8S1(1) = 6.
          C8S1(2) = C8A1(I)
          C8S1(3) = I4A1(I)
          C8S1(4) = R4A1(I)
          C8S1(5) = R8A1(I)
          C8S1(6) = R16A1(I)
          C8S1(7) = C16A1(I)
          C8S1(8) = C32A1(I)
          C8S1(9) = C8A1(I) + C8A2(I)
          C8S1(10) = C8A1(I) + 6.
        ENDIF
 60   CONTINUE
      WRITE(6,*) '** COMPLEX * 8 **'
      WRITE(6,*) C8S1(1),C8S1(2),C8S1(3),C8S1(4),C8S1(5)
      WRITE(6,*) C8S1(6),C8S1(7),C8S1(8),C8S1(9),C8S1(10)

      DO 70 I=1,10
        IF (I.EQ.I4A1(I)) THEN
          C16S1(1) = 7.
          C16S1(2) = C16A1(I)
          C16S1(3) = R4A1(I)
          C16S1(4) = R8A1(I)
          C16S1(5) = R16A1(I)
          C16S1(6) = C8A1(I)
          C16S1(7) = C32A1(I)
          C16S1(8) = C16A1(I) + 7.
        ENDIF
 70   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) C16S1(1),C16S1(2),C16S1(3),C16S1(4),C16S1(5)
      WRITE(6,*) C16S1(6),C16S1(7)

      DO 80 I=1,10
        IF (L4A1(I)) THEN
          C32S1(1) = 8.
          C32S1(2) = C32A1(I)
          C32S1(3) = I4A1(I)
          C32S1(4) = R4A1(I)
          C32S1(5) = R8A1(I)
          C32S1(6) = R16A1(I)
          C32S1(7) = C8A1(I)
          C32S1(8) = C16A1(I)
          C32S1(9) = C32A1(I)
          C32S1(10) = C32A1(I) + C32A2(I)
          C32S1(11) = C32A1(I) + 8.
        ENDIF
 80   CONTINUE
      WRITE(6,*) '** COMPLEX * 16 **'
      WRITE(6,*) C32S1(1),C32S1(2),C32S1(3),C32S1(4),C32S1(5),C32S1(6)
      WRITE(6,*) C32S1(7),C32S1(8),C32S1(9),C32S1(10),C32S1(11)

      DO 90 I=1,10
        IF (L4A1(I)) THEN
          L1S1(1) = .TRUE.
          L1S1(2) = .FALSE.
          L1S1(3) = L1A1(I)
          L1S1(4) = L4A1(I)
          L1S1(5) = .NOT.L1A1(I)
          L1S1(6) = .NOT.L1A2(I)
          L1S1(7) = L1A1(I).AND.L1A2(I)
          L1S1(8) = L1A1(I).OR.L1A2(I)
          L1S1(9) = L1A1(I).AND.L4A1(I)
        ENDIF
 90   CONTINUE
      WRITE(6,*) '** LOGICAL * 1 **'
      WRITE(6,*) L1S1(1),L1S1(2),L1S1(3),L1S1(4),L1S1(5)
      WRITE(6,*) L1S1(6),L1S1(7),L1S1(8),L1S1(9)

      DO 100 I=1,10
        IF (L4A1(I)) THEN
          L4S1(1) = .TRUE.
          L4S1(2) = .FALSE.
          L4S1(3) = L4A1(I)
          L4S1(4) = .NOT.L4A1(I)
          L4S1(5) = .NOT.L4A2(I)
          L4S1(6) = L4A1(I).AND.L4A2(I)
          L4S1(7) = L4A1(I).OR. L4A2(I)
        ENDIF
100   CONTINUE
      WRITE(6,*) '**LOGICAL * 4 **'
      WRITE(6,*) L4S1(1),L4S1(2),L4S1(3),L4S1(4),L4S1(5),L4S1(6)
      WRITE(6,*) L4S1(7),L4S1(8),L4S1(9)
      STOP
      END

      PROGRAM MAIN
      REAL * 4 R4S1(10),R4A1(10),R4A2(10)
      LOGICAL * 4 L4S1(10),L4A1(10),L4A2(10)
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA R4S1/10*0.0/
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4S1/10*.FALSE./

      DO 10 I=1,10
        IF (L4A1(I)) THEN
          R4S1(1) = I
          IF ((R4S1(1) + R4A1(I) + 1.) .EQ. 0.0) THEN
             L4S1(2) = .FALSE.
          ELSE
             L4S1(2) = .TRUE.
          ENDIF
          IF ((R4A1(I) * I) .EQ. 0.0) THEN
             L4S1(3) = .FALSE.
          ELSE
             L4S1(3) = .TRUE.
          ENDIF
          L4S1(1) = .TRUE.
          L4S1(2) =.FALSE.
          L4S1(3) = L4A1(I) .AND. L4A2(I)
          L4S1(4) = .NOT.L4S1(3)
          L4S1(5) = I.EQ.R4A1(I)
        ELSE
          R4S1(1) = I
          IF ((R4S1(1) + R4A1(I) + 1.) .EQ. 0.0) THEN
             L4S1(2) = .FALSE.
          ELSE
             L4S1(2) = .TRUE.
          ENDIF
          IF ((R4A1(I) * I) .EQ. 0.0) THEN
             L4S1(3) = .FALSE.
          ELSE
             L4S1(3) = .TRUE.
          ENDIF
          L4S1(1) = .TRUE.
          L4S1(2) =.FALSE.
          L4S1(3) = L4A1(I) .AND. L4A2(I)
          L4S1(4) = .NOT.L4S1(3)
          L4S1(5) = I.EQ.R4A1(I)
        ENDIF
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 1 ***'
      WRITE(6,1000) R4S1
      WRITE(6,1000) L4S1

      DO 20 I=1,10
        IF  (L4A1(I)) THEN
          R4A1(I) = R4S1(1)
          R4A2(I) = R4S1(2)
          R4S1(1) = R4A2(I)
          R4A1(I) = R4S1(1)
          L4A1(I) = L4S1(1)
          L4A2(I) = L4S1(2)
          L4S1(3) = L4A1(I) .AND. L4A2(I)
          L4A1(I) = L4S1(4)
        ENDIF
 20   CONTINUE
      WRITE(6,*) '** TEST NO. 2 **'
      WRITE(6,1000) R4A1,R4A2,R4S1
      WRITE(6,1000) L4A1,L4A2,L4S1

      DO 30 I=1,10
        IF (L4A2(I)) THEN
          R4S1(1) = R4A1(I) + R4A2(I) + 1.
          R4A1(I) = R4S1(2) + 1.
          R4S1(3) = R4A1(I) + R4A2(I)
          L4A1(I) = .NOT.L4S1(1)
          L4S1(4) = L4A1(I) .OR. L4A2(I)
          L4A2(I) = L4S1(1) .AND. L4S1(2)
          L4S1(5)  = .NOT. L4A2(I)
        ENDIF
 30   CONTINUE
      WRITE(6,*) '** TEST NO. 3 **'
      WRITE(6,1000) R4S1 , R4A1
      WRITE(6,1000) L4A1 , L4S1

      DO 40 I=1,10
        IF (L4A1(I)) THEN
          R4A1(I) = R4S1(1)
          R4S1(2) = R4A2(I)
          R4A1(I) = R4S1(3) + R4A2(I)
          L4A1(I) = L4S1(1)
          L4S1(4) = .NOT. L4A1(I)
          L4S1(5) = L4S1(6).AND. L4A2(I)
          L4A1(I) = L4S1(1).AND.L4S1(2)
        ENDIF
 40   CONTINUE
      WRITE(6,*) '** TEST NO. 4 **'
      WRITE(6,1000) R4A1,R4S1,L4A1,L4S1

      DO 50 I=1,10
        DO 51 J=1,10
          IF (L4A1(I)) THEN
             R4S1(1) = R4A1(J)
             R4S1(2) = I
             R4S1(3) = J
             R4S1(4) = R4S1(2) + R4S1(3)
             L4S1(1) = I.EQ.R4A1(J)
             L4S1(2) = J.EQ.R4A1(J)
             L4S1(3) = L4S1(5) .AND. L4S1(6)
             L4S1(4) = L4A1(J) .AND. L4S1(1)
          ENDIF
 51     CONTINUE
 50   CONTINUE
      WRITE(6,*) '** TEST NO. 5 **'
      WRITE(6,1000) R4S1,L4S1

      DO 60 I=1,10
        IF (L4A1(I)) THEN
          R4S1(1) = R4A1(I)
          R4S1(2) = I
          L4S1(1) = L4A1(I)
          L4S1(2) = I.EQ.R4A1(I)
          DO 61 J=1,10
            IF (L4A1(I)) THEN
              R4S1(3) = R4A1(J) + R4A1(J)
              L4S1(3) = L4S1(1) .AND.L4A1(J)
              L4S1(4) = L4S1(1) .OR. L4A1(J)
            ENDIF
 61     CONTINUE
        ENDIF
 60   CONTINUE
      WRITE(6,*) '** TEST NO. 6 **'
      WRITE(6,1000) R4S1,L4S1

      DO 70 I=1,10
        IF (L4A1(I)) THEN
          R4A1(I) = R4S1(1)
          L4A1(I) = L4S1(1)
          L4A2(I) = L4S1(1).AND.L4S1(2)
          DO 71 J=1,10
            IF (L4A2(I))  THEN
              R4S1(3) = R4A1(J)
              L4S1(3) = L4A1(J)
              L4S1(4) = J.EQ.R4A1(I)
              L4S1(5) = .NOT.L4A2(I)
              L4S1(6) = L4A1(I) .AND.L4A2(J)
            ENDIF
 71     CONTINUE
        ENDIF
 70   CONTINUE
      WRITE(6,*) '** TEST NO. 7 **'
      WRITE(6,1000) R4A1,L4A1,L4A2,R4S1,L4S1

      DO 80 I=1,10
        DO 81 J=1,10
          IF (L4A1(I)) THEN
            R4S1(1) = R4A1(J) + 1.
          ENDIF
 81     CONTINUE
        DO 82 K=1,10
          IF (L4A2(I)) THEN
            R4S1(1) = R4A1(K) + R4A2(K)
          ENDIF
 82     CONTINUE
 80   CONTINUE
      WRITE(6,*) '**TEST NO. 8 **'
      WRITE(6,1000) R4S1

      DO 90 I=1,10
        DO 91 J=1,10
          IF (L4A1(I))  THEN
            R4S1(1) = R4A1(J) + 1.
          ENDIF
 91     CONTINUE
        DO 92 K=1,10
          IF (L4A2(I)) THEN
            R4A1(K) = R4S1(1)
          ENDIF
 92     CONTINUE
 90   CONTINUE
      WRITE(6,*) '** TEST NO. 9 **'
      WRITE(6,1000) R4S1 ,R4A1

      DO 100 I=1,10
        IF (L4A1(I)) THEN
          R4S1(1) = R4A1(I) + 1.
          DO 101 J=1,10
            IF (L4A2(I)) THEN
              R4S1(1) = J
              DO 102 K=1,10
                IF (L4A1(I)) THEN
                R4S1(1) = R4A1(K)
                ENDIF
 102          CONTINUE
            ENDIF
 101      CONTINUE
        ENDIF
 100  CONTINUE
      WRITE(6,*) '** TEST NO. 10 **'
      WRITE(6,1000) R4S1

      DO 110 I=1,10
        IF (L4A1(I))  THEN
          R4S1(1) = R4A1(I)
          DO 111 J=1,10
            IF (L4A2(I)) THEN
              R4A1(J) = R4S1(1)
              DO 112 K=1,10
                IF (L4A1(I)) THEN
                  R4S1(1) = R4A1(K)
                ENDIF
 112          CONTINUE
            ENDIF
 111      CONTINUE
        ENDIF
 110  CONTINUE
      WRITE(6,*) '** TEST NO. 11 **'
      WRITE(6,1000) R4S1 ,R4A1
 1000 FORMAT(' ',(6G13.6))
      STOP
      END

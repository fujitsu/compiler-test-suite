      PROGRAM MAIN
      REAL * 4 R4S1,R4S2,R4S3,R4A1(10),R4A2(10)
      LOGICAL * 4 L4S1,L4S2,L4S3,L4S4,L4S5,L4A1(10),L4A2(10)
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     +        , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./

      R4S2 = 0

      DO 10 I=1,10
        R4S1 = I
        L4S1 = .TRUE.
        L4S2 =.FALSE.
        L4S3 = L4A1(I) .AND. L4A2(I)
        L4S4 = .NOT.L4S3
        L4S5 = I.EQ.R4A1(I)
 10   CONTINUE
      WRITE(6,*) '** TEST NO. 1 ***'
      WRITE(6,*) R4S1
      WRITE(6,*) L4S1 , L4S2 , L4S3

      DO 20 I=1,10
        R4A1(I) = R4S1
        R4A2(I) = R4S2
        R4S1 = R4A2(I)
        R4A1(I) = R4S1
        L4A1(I) = L4S1
        L4A2(I) = L4S2
        L4S1 = L4A1(I) .AND. L4A2(I)
        L4A1(I) = L4S1
 20   CONTINUE
      WRITE(6,*) '** TEST NO. 2 **'
      WRITE(6,*) R4A1,R4A2,R4S1
      WRITE(6,*) L4A1,L4A2,L4S1

      DO 30 I=1,10
        R4S1 = R4A1(I) + R4A2(I) + 1.
        R4A1(I) = R4S1 + 1.
        R4S1 = R4A1(I) + R4A2(I)
        L4S1 = .NOT.L4A1(I)
        L4A1(I) = L4S1  .OR. L4A2(I)
        L4S2 = .NOT. L4A2(I)
        L4A2(I) = L4S1 .AND. L4S2
 30   CONTINUE
      WRITE(6,*) '** TEST NO. 3 **'
      WRITE(6,*) R4S1 , R4A1
      WRITE(6,*) L4A1 , L4S1 , L4A2,L4S2

      DO 40 I=1,10
        R4A1(I) = R4S1
        R4S1 = R4A2(I)
        R4A1(I) = R4S1 + R4A2(I)
        L4A1(I) = L4S1
        L4S1 = .NOT. L4A1(I)
        L4S2 = L4S1.AND. L4A2(I)
        L4A1(I) = L4S1.AND.L4S2
 40   CONTINUE
      WRITE(6,*) '** TEST NO. 4 **'
      WRITE(6,*) R4A1,R4S1
      WRITE(6,*) L4A1,L4S1,L4S2

      DO 50 I=1,10
        DO 51 J=1,10
           R4S1 = R4A1(J)
           R4S2 = I
           R4S3 = J
           R4S1 = R4S2 + R4S3
           L4S1 = I.EQ.R4A1(J)
           L4S2 = J.EQ.R4A1(J)
           L4S3 = L4S1 .AND. L4S2
           L4S4 = L4A1(J) .AND. L4S1
 51     CONTINUE
 50   CONTINUE
      WRITE(6,*) '** TEST NO. 5 **'
      WRITE(6,*) R4S1,R4S2,R4S2,L4S1,L4S2,L4S3,L4S4,L4S5

      DO 60 I=1,10
        R4S1 = R4A1(I)
        R4S2 = I
        L4S1 = L4A1(I)
        L4S2 = I.EQ.R4A1(I)
        DO 61 J=1,10
          R4S1 = R4A1(J) + R4A1(J)
          L4S1 = L4S2 .AND.L4A1(J)
          L4S2 = L4S1 .OR. L4A1(J)
 61     CONTINUE
 60   CONTINUE
      WRITE(6,*) '** TEST NO. 6 **'
      WRITE(6,*) R4S1,R4S2,L4S1,L4S2

      DO 70 I=1,10
        R4A1(I) = R4S1
        L4A1(I) = L4S1
        L4A2(I) = L4S2.AND.L4S1
        DO 71 J=1,10
          R4S1 = R4A1(J)
          L4S1 = L4A1(J)
          L4S2 = J.EQ.R4A1(I)
          L4S3 = .NOT.L4A2(I)
          L4S4 = L4A1(I) .AND.L4A2(J)
 71     CONTINUE
 70   CONTINUE
      WRITE(6,*) '** TEST NO. 7 **'
      WRITE(6,*) R4A1,L4A1,L4A2,R4S1
      WRITE(6,*) L4S1,L4S2,L4S3,L4S4

      DO 80 I=1,10
        DO 81 J=1,10
          R4S1 = R4A1(J) + 1.
 81     CONTINUE
        DO 82 K=1,10
          R4S1 = R4A1(K) + R4A2(K)
 82     CONTINUE
 80   CONTINUE
      WRITE(6,*) '**TEST NO. 8 **'
      WRITE(6,*) R4S1

      DO 90 I=1,10
        DO 91 J=1,10
          R4S1 = R4A1(J) + 1.
 91     CONTINUE
        DO 92 K=1,10
          R4A1(K) = R4S1
 92     CONTINUE
 90   CONTINUE
      WRITE(6,*) '** TEST NO. 9 **'
      WRITE(6,*) R4S1 ,R4A1

      DO 100 I=1,10
        R4S1 = R4A1(I) + 1.
        DO 101 J=1,10
          R4S1 = J
          DO 102 K=1,10
            R4S1 = R4A1(K)
 102      CONTINUE
 101    CONTINUE
 100  CONTINUE
      WRITE(6,*) '** TEST NO. 10 **'
      WRITE(6,*) R4S1

      DO 110 I=1,10
        R4S1 = R4A1(I)
        DO 111 J=1,10
          R4A1(J) = R4S1
          DO 112 K=1,10
            R4S1 = R4A1(K)
 112      CONTINUE
 111    CONTINUE
 110  CONTINUE
      WRITE(6,*) '** TEST NO. 11 **'
      WRITE(6,*) R4S1 ,R4A1
      STOP
      END

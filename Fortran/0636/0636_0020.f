      PROGRAM MAIN
      REAL * 4    R4S1,R4S3(10),R4A1(10),R4A2(10)
      LOGICAL * 4 L4S1,L4S3(10),L4A1(10),L4A2(10)
      DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./
      DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     +      ,    .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     +      ,   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA R4S1/1./,R4S3/10*1./
      DATA L4S1/.TRUE./,L4S3/10*.TRUE./
      DO 50 J=1,10
        DO 51 I=1,10
          R4A1(I) = R4S3(I)
          IF (R4A1(1).NE.R4A2(I)) THEN
            R4A2(I) = R4S3(I)
          ENDIF
 51     R4S1 = R4A1(I) + R4A2(I)
        DO 54 I=1,10
          L4A1(I) = L4A2(I)
          IF (R4A1(I).NE.R4A2(I)) THEN
            L4A2(I) = L4A2(I).AND.L4A1(I)
          ENDIF
 54     L4S3(1) = L4A1(I) .AND.L4A2(I)
 50   CONTINUE
      WRITE(6,*) '** TETS NO. 6 - 4 **'
      WRITE(6,*) R4S1,L4S1,R4A1,R4A2,L4A1,L4A2,R4S3,L4S3
      STOP
      END

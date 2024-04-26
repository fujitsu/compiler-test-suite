      REAL * 4 R4S1,R4S2,R4S3/0/,R400C(10),R400A(10),R400B(10)
      REAL * 4 R400X(10),R400Y(10)
      LOGICAL * 4 L4S1,L4S2,L400C(10),L400A(10),L400B(10)
      DATA R400X/5*10.,5*11./
      DATA R400Y/0,1,0,0,1,1,0,0,0,1/
      DATA R400A/1.,2.,3.,4.,5.,10.,9.,8.,7.,6./
      DATA R400B/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./
      DATA L400A/.TRUE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.,
     &          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA L400B/.FALSE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,
     &          .TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE./
      EQUIVALENCE (R4S1,R4S3),(R4S2,R400A(2)),(R400C(1),R400A(3))
      EQUIVALENCE (L4S1,L400A(1)),(L4S2,L400A(2)),(L400C(1),L400A(3))
C
      DO 10 I=1,10
        R4S1 = R400X(I)
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) R4S1
C
      DO 20 I=1,10
        R4S1 = R400X(I)
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) R4S1
      WRITE(6,*) R4S3
C
      DO 30 I=1,10
        IF(R400Y(I).EQ.0) THEN
          R4S2 = R400X(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) R4S2
C
      DO 40 I=1,10
        R400A(2) = R400X(I)
   40 CONTINUE
      WRITE(6,*) '** TEST 4 **'
      WRITE(6,*) R400A(2)
      WRITE(6,*) R4S2
C
      DO 50 I=1,10
        R400C(1) = R400A(I)
   50 CONTINUE
      WRITE(6,*) '** TEST 5 **'
      WRITE(6,*) R400C
      WRITE(6,*) R400A
C
      DO 60 I=1,10
        R4S2 = R400A(2)
        L4S1 = L400A(I).AND..TRUE.
        R400C(1) = R400A(I)
   60 CONTINUE
      WRITE(6,*) '** TEST 6 **'
      WRITE(6,*) R4S2
      WRITE(6,*) L4S1
      WRITE(6,*) R400C
C
      DO 70 I=1,10
        L400C(I) = L400B(I)
        R400A(I) = R4S1+R4S2
        L4S2 = L400A(2).OR.L400C(I)
   70 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 7 **'
      WRITE(6,*) R400A
      WRITE(6,*) L4S2
C
      DO 80 I=1,10
        R4S1 = R400B(I)
   80 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 8 **'
      WRITE(6,*) R4S1
C
      DO 90 I=1,10
        R4S1 = R400B(I)
   90 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 9 **'
      WRITE(6,*) R4S1
      WRITE(6,*) R400A
C
      DO 100 I=1,10
        R4S1 = R400A(I)
        R400B(1) = R4S1+R4S2
  100 CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) '** TEST 10 **'
      WRITE(6,*) R400B
C
      STOP
      END

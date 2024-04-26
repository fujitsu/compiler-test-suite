      LOGICAL*4 L400A(10)/.FALSE.,.FALSE.,.FALSE.,.TRUE.,
     &          .TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE./
      LOGICAL*4 L400B(10)/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,
     &          .TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE./
      LOGICAL*4 L400C(10)/5*.FALSE.,5*.TRUE./
      LOGICAL*4 L400D(10)/10*.FALSE./
      LOGICAL*4 L400E(10)/10*.FALSE./
      INTEGER*4 I400A(10)/13,26,5,4,24,0,10,9,11,7/
      INTEGER*4 I400B(10)/2,16,0,0,24,0,14,9,18,4/
      INTEGER*4 I400C(10)/1,0,1,1,0,1,0,1,0,1/
      INTEGER*4 I400D(10)/-1,1,0,0,0,-1,1,1,0,1/
C
      DO 10 I=1,10
        IF(L400A(I)) L400B(I) = IOR(I400A(I),I400B(I))
        L400C(I) = IAND(I400A(I),I400B(I))
   10 CONTINUE
      WRITE(6,*) '**  TEST 1 **'
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        IF(I400C(I)*I400D(I)) 11,22,33
11      L400D(I) = IAND(I400A(I),I400B(I))
22      L400D(I) = IOR(I400A(I),I400B(I))
33      L400D(I) = IEOR(I400A(I),I400B(I))
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) L400D
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        IF(L400A(I)) THEN
          L400A(I) = NOT(I400A(I))
        ENDIF
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) L400A
      WRITE(6,*) ' '
C
      DO 40 I=1,10
        IF(L400A(I)) THEN
          L400B(I) = IAND(I400C(I),I400B(I))
        ELSE
          L400B(I) = IAND(I400C(I),I400D(I))
        ENDIF
   40 CONTINUE
      WRITE(6,*) '** TEST 4 **'
      WRITE(6,*) L400B
      WRITE(6,*) ' '
C
      DO 50 I=1,10
        IF(L400A(I)) THEN
          IF(L400B(I)) THEN
            L400D(I) = NOT(I400A(I))
          ENDIF
        ENDIF
   50 CONTINUE
      WRITE(6,*) '** TEST 5 **'
      WRITE(6,*) L400D
      WRITE(6,*) ' '
C
      DO 60 I=1,10
        IF(L400E(I)) GO TO 70
          L400E(I) = NOT(I400A(I))
   60 CONTINUE
   70 WRITE(6,*) '** TEST 6 **'
      WRITE(6,*) L400E
      STOP
      END

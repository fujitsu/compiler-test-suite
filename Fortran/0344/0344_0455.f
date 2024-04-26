      LOGICAL*4 L400X(10)/.TRUE.,.TRUE.,.FALSE.,.TRUE.,
     &          .TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE./
      LOGICAL*4 L400A(10)/.FALSE.,.FALSE.,.FALSE.,.TRUE.,
     &          .TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE./
      LOGICAL*4 L400B(10)/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,
     &          .TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE./
      LOGICAL*4 L400C(10)/5*.FALSE.,5*.TRUE./
      LOGICAL*4 L400D(10)/10*.FALSE./
      LOGICAL*4 L400E(10)/10*.FALSE./
      LOGICAL*4 L4A/.FALSE./
      INTEGER*4 I400A(10)/20,26,50,41,24,35,10,99,15,77/
      INTEGER*4 I400B(10)/3,2,5,4,4,3,1,9,1,7/
      INTEGER*4 I400C(10)/13,26,5,4,24,3,10,9,11,7/
      INTEGER*4 I400D(10)/2,16,0,0,24,0,14,9,18,4/
      INTEGER*4 I400E(10)/2,4,1,1,5,8,9,1,7,3/
C
      DO 10 I=1,10
        IF(L400A(I)) THEN
          L400A(I) = I400A(I)+I400B(I)
          L400B(I) = I400A(I)-I400D(I)
          L400C(I) = I400A(I)/I400B(I)
          L400D(I) = I400A(I)/I400B(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) '**  TEST 1 **'
      WRITE(6,*) L400A
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) L400D
      WRITE(6,*) ' '
C
      J=0
      DO 20 I=2,10
        IF(L400X(I)) THEN
          J=J+1
          L400A(I) = I400C(J)+I400D(I)
          L400B(I) = I400C(I)-I400D(J)
          L400C(I) = I400C(J)*2
          L400D(I) = 100/I400E(I)
        ELSE
          L400A(I) = I400A(I)
          L400B(I) = I400C(I)
          L400C(I) = I400C(5)
          L400D(I) = 100
        ENDIF
   20 CONTINUE
      WRITE(6,*) '**  TEST 2 **'
      WRITE(6,*) L400A
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) L400D
      WRITE(6,*) ' '
C
      J=0
      DO 30 I=1,10
        J=J+1
        IF(L400X(J)) L400D(I400E(I)) = I+I
          L400E(3) = I400C(I)/2
          L400C(J) = I400C(I)*2
          L4A = (I400C(I)-10)*2
   30 CONTINUE
      WRITE(6,*) '**  TEST 3 **'
      WRITE(6,*) L400D
      WRITE(6,*) L400E
      WRITE(6,*) L400C
      WRITE(6,*) L4A
      WRITE(6,*) ' '
C
      STOP
      END

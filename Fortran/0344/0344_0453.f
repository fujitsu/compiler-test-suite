      LOGICAL*4 L400A(10)/.FALSE.,.FALSE.,.FALSE.,.TRUE.,
     &          .TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE./
      LOGICAL*4 L400B(10)/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,
     &          .TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE./
      LOGICAL*4 L400C(10)/5*.FALSE.,5*.TRUE./
      LOGICAL*4 L400D(10)/10*.FALSE./
      LOGICAL*4 L4A/.FALSE./
      INTEGER*4 I400A(10)/13,26,5,4,24,0,10,9,11,7/
      INTEGER*4 I400E(10)/2,4,1,1,5,8,9,1,7,3/
C
      J=0
      DO 10 I=1,10
        J=J+1
        L400A(I) = I400A(I)
        L400B(I) = I400A(3)
        L400C(I) = I400A(J)
        L400D(I) = 20
   10 CONTINUE
      WRITE(6,*) '**  TEST 1 **'
      WRITE(6,*) L400A
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) L400D
      WRITE(6,*) ' '
C
      J=0
      DO 20 I=1,10,2
        J=J+1
        L400A(I400E(I)) = I400A(I)
        L400B(3) = I400A(I)
        L400C(J) = I400A(I)
        L4A = I400A(I)
   20 CONTINUE
      WRITE(6,*) '**  TEST 2 **'
      WRITE(6,*) L400A
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) L4A
      WRITE(6,*) ' '
C
      STOP
      END

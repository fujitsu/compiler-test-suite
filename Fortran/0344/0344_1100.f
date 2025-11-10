      REAL*8 A(100,100)/10000*0/
      REAL*8 B(100,100)/10000*0/
      REAL*8 C(100,100)/10000*0/
      LOGICAL*4 D(100,100)/10000*.TRUE./
      LOGICAL*4 E(100,100)/10000*.FALSE./
      INTEGER*4 I,J
C
      DO 10 I=1,100
        DO 10 J=1,100
          A(I,J) = DSIN(DFLOAT(I))
          B(I,J) = DCOS(DFLOAT(J))
          C(I,J) = DTAN(DFLOAT(I+J))
   10 CONTINUE
C
      DO 20 I=1,100
        DO 20 J=1,100
          IF(A(I,J).GT.B(I,J)) THEN
            D(I,J) = .TRUE.
            E(I,J) = .FALSE.
          ELSE
            D(I,J) = .FALSE.
            E(I,J) = .TRUE.
          ENDIF
   20 CONTINUE
C
      DO 30 I=1,100
        DO 30 J=1,100
          IF(D(I,J).EQV..TRUE.) THEN
            A(I,J) = 1.0
          ELSE
            A(I,J) = 0.0
          ENDIF
          IF(E(I,J).EQV..TRUE.) THEN
            B(I,J) = 1.0
          ELSE
            B(I,J) = 0.0
          ENDIF
   30 CONTINUE
C
      DO 40 I=1,5
        DO 40 J=1,5
          WRITE(6,1) A(I,J),B(I,J),C(I,J)
   40 CONTINUE
C
      DO 50 I=1,5
        DO 50 J=1,5
          WRITE(6,*) D(I,J),' ',E(I,J)
   50 CONTINUE
 1    format (3e15.7)
C
      STOP
      END

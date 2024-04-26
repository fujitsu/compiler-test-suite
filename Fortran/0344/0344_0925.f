      REAL*8 A(10,10)/100*0/
      REAL*8 B(10,10)/100*0/
      REAL*8 C(10,10)/100*0/
      LOGICAL*4 D(10,10)/100*.TRUE./
      LOGICAL*4 E(10,10)/100*.FALSE./
      INTEGER*4 I,J
C
      DO 10 I=1,10
        DO 10 J=1,10
          A(I,J) = I * J
          B(I,J) = DSIN(A(I,J))
          CALL SUB1(C,D,E)
   10 CONTINUE
C
      DO 20 I=1,10
        DO 20 J=1,10
          WRITE(6,1) A(I,J),B(I,J),C(I,J)
 20    CONTINUE
C
      DO 30 I=1,10
        DO 30 J=1,10
          WRITE(6,*) D(I,J),' ',E(I,J)
   30 CONTINUE
 1    format(3e15.7)
C
      STOP
      END
C
      SUBROUTINE SUB1(C,D,E)
C
      REAL*8 C(10,10)
      LOGICAL*4 D(10,10)
      LOGICAL*4 E(10,10)
      INTEGER*4 I/2/,J
C
    
        DO 10 J=1,10
          C(I,J) = I / J
          IF(C(I,J).GT.10.0) THEN
            D(I,J) = .TRUE.
            E(I,J) = .FALSE.
          ELSE
            D(I,J) = .FALSE.
            E(I,J) = .TRUE.
          ENDIF
  10  CONTINUE
C
      RETURN
      END



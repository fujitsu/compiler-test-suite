      PROGRAM MAIN
      N1 = 10
      CALL SUB(N1)
      N2 = 9
      CALL SUB(N2)
      STOP
      END
C
      SUBROUTINE SUB(N)
      REAL * 4 A(10),B(10),C(10),D(10)
      LOGICAL * 4 L(10)
      DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA D/0.,0.,1.,1.,1.,2.,3.,0.,1.,0./
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
C
      a = 0
      DO 10 I=1,N
        IF(L(I)) GOTO 11
          IF (D(I).GT.0) THEN
            A(I)=B(I)+I
          ENDIF
11      A(I)=B(I)+C(I)
10    CONTINUE
C
      WRITE(6,*) A
      RETURN
      END

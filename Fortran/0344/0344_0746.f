      REAL A(10)/10*1./,B(10)/10*0./
      REAL C(10)/10*1./,D(10)/10*0./
      INTEGER*2 M
      EQUIVALENCE (J,K)
C
      J=0
      DO 10 I=1,10
       IF(I.GE.5) THEN
        J=J+1
        B(J)=A(I)*J
       ENDIF
   10 CONTINUE
C
      M=0
      DO 20 I=1,10
       IF(I.GE.5) THEN
        M=M+1
        D(M)=C(I)+M
       ENDIF
   20 CONTINUE
C
      WRITE(6,1000) B
      WRITE(6,1001) J
      WRITE(6,1001) K
      WRITE(6,1000) D
      WRITE(6,1001) M
 1000 FORMAT(10(1X,F7.2))
 1001 FORMAT(1X,I8)
      STOP
      END

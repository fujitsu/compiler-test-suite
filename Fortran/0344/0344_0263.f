      REAL * 4 A(10),B(10),C(10),D(10),E(10)
      INTEGER * 4 L1(10),L2(10),MMAX,MMIN,IA(10),IB(10)
      LOGICAL * 4 P(10)
      DATA A/7,5,3,4,2,6,1,8,9,10/
      DATA B/1,7,3,4,5,9,2,8,6,10/
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA D/1,2,3,4,5,6,7,8,9,10/
      DATA E/1,2,3,4,5,6,7,8,9,10/
      DATA IA/7,5,3,4,2,6,1,8,9,10/
      DATA IB/1,7,3,4,5,9,2,8,6,10/
      DATA L1/5,4,2,7,10,9,6,4,2,7/
      DATA L2/5,4,1,7,10,1,6,4,1,2/
      DATA P/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./

      CALL SUB(N,M)

      MMAX=0
      MMIN=99999
      DO 1 I=N,M
        IF ((SIN(A(I))+B(I)).GT.0) THEN
          A(I)=B(I)+C(I)
          D(L1(I))=E(L2(I))+1.
          B(I)=A(I)+C(I)
          IF (B(I).GT.0) THEN
            A(I)=B(I)-C(I)
          ENDIF
          A(I)=E(L2(I))+I
        ENDIF
1     CONTINUE
      DO 2 I=N,M
        IF (I.LT.0) GOTO 2
        IF (P(I)) THEN
          C(I)=C(I)+1
        ENDIF
        IF (IA(I).GT.MMAX) THEN
          MMAX=IA(I)
        ENDIF
        IF (IB(I).LT.MMIN) THEN
          MMIN=IB(I)
        ENDIF
2     CONTINUE

      
      WRITE(6,90) A,B,C
90    FORMAT(5F10.5)
      WRITE(6,91) MMAX,MMIN
91    FORMAT(I5)
      STOP
      END
      SUBROUTINE SUB(N,M)
      N=1
      M=10
      RETURN
      END

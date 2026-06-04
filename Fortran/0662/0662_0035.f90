      SUBROUTINE S1(I,J,A,B,C,D)
      INTEGER A(I+1,I+1,I+1),B(I+1,I+1,I+1),C,D
      A=reshape((/ ((/c+d/),jkj=1,j) , C /),(/i+1,i+1,i+1/))+B
      DO 1 K1=1,I+1
      DO 1 K2=1,I+1
      DO 1 K3=1,I+1
         IF (A(K1,K2,K3).NE.C+B(K1,K2,K3)) PRINT *,'FAIL'
         IF (A(K1,K2,K3).NE.4            ) PRINT *,'FAIL'
  1   CONTINUE
      END
      SUBROUTINE S2(I,J,A,B,C,D)
      COMPLEX A(I+1,I+1,I+1),B(I+1,I+1,I+1),C,D
      A=reshape((/ ((/c+d/),jkj=1,j) , C /),(/i+1,i+1,i+1/))+B
      DO 1 K1=1,I+1
      DO 1 K2=1,I+1
      DO 1 K3=1,I+1
         IF (A(K1,K2,K3).NE.C+B(K1,K2,K3)) PRINT *,'FAIL'
         IF (A(K1,K2,K3).NE.(4,4)        ) PRINT *,'FAIL'
  1   CONTINUE
      END
      SUBROUTINE S3(I,J,A,B,C,D,E)
      CHARACTER(*) A(I+1,I+1,I+1),B(I+1,I+1,I+1),C,D,E
      A=reshape((/ ((/c//d/),jkj=1,j) , C//E /),(/i+1,i+1,i+1/))//B
      DO 1 K1=1,I+1
      DO 1 K2=1,I+1
      DO 1 K3=1,I+1
         IF (A(K1,K2,K3).NE.C//D//B(K1,K2,K3)) PRINT *,'FAIL'
         IF (A(K1,K2,K3).NE.'123'        ) PRINT *,'FAIL'
  1   CONTINUE
      END
      SUBROUTINE S4(I,J,A,B,C,D,E,F)
      CHARACTER(*) A(I+1,I+1,I+1),B(I+1,I+1,I+1),C,D,E,F
      F=C//D
      A=reshape((/ ((/ F(I-1:I) /),jkj=1,j) , C//E /),(/i+1,i+1,i+1/)) &
        //B
      DO 1 K1=1,I+1
      DO 1 K2=1,I+1
      DO 1 K3=1,I+1
         IF (A(K1,K2,K3).NE.C//D//B(K1,K2,K3)) PRINT *,'FAIL'
         IF (A(K1,K2,K3).NE.'123'        ) PRINT *,'FAIL'
  1   CONTINUE
      END
      SUBROUTINE X3
      PARAMETER (I=2,J=28)
      CHARACTER A(I+1,I+1,I+1)*3,B(I+1,I+1,I+1),C,D,E
      B='3'
      C='1'
      D='2'
      E='2'
      CALL       S3(I,J,A,B,C,D,E)
      END
      SUBROUTINE X4
      PARAMETER (I=2,J=26)
      CHARACTER A(I+1,I+1,I+1)*3,B(I+1,I+1,I+1),C,D,E,F*2
      B='3'
      C='1'
      D='2'
      E='2'
      CALL       S4(I,J,A,B,C,D,E,F)
      END
      SUBROUTINE X1
      PARAMETER (I=2,J=28)
      INTEGER A(I+1,I+1,I+1),B(I+1,I+1,I+1),C,D
      B=2
      C=2
      D=0
      CALL       S1(I,J,A,B,C,D)
      END
      SUBROUTINE X2
      PARAMETER (I=2,J=28)
      COMPLEX A(I+1,I+1,I+1),B(I+1,I+1,I+1),C,D
      B=(2,2)
      C=(2,2)
      D=0
      CALL       S2(I,J,A,B,C,D)
      END
      CALL X1
      CALL X2
      CALL X3
      CALL X4
      PRINT *,'PASS'
      END

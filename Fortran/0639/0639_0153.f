          REAL*8 A(2200),B(2200),C(2200),X(2200)
          INTEGER K(2200)
          DATA K/440*100,440*200,440*300,440*400,440*555/
          LOGICAL L(2200)
          DATA L/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          REAL*8 AZ(2200)/2200*2.2/,AW(2200)/2200*3.3/

          DO 10 J = 1 , 2
          M = J + 10
          DO 10 I = 1 , 2200
            N = I + 10
            A(I) = I + 10
            IF( L(I) ) THEN
              AZ(K(I)) = A(I) - 2.0D0
            ENDIF
            B(I) = I + N - 9
            IF( L(I) ) THEN
              AW(K(I)) = B(I) - 2.0D0
            ENDIF
            C(I) = I + M - 5
            X(I) = B(I) - C(I) + A(I)
 10       CONTINUE
          PRINT *,X ,AW,AZ
          END

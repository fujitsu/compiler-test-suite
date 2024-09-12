          REAL*8 A(2200),B(2200),C(2200),X(2200)
          DATA A,B,C/2200*1.0D0,2200*1.0D0,2200*2.0D0/
          INTEGER K(2200)
          DATA K/440*100,440*200,440*300,440*400,440*555/
          LOGICAL L(2200),L1(2200),L2(2200),LSW
          DATA L/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          DATA L1/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          DATA L2/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          REAL*8 AZ(2200)/2200*2.0/

          DO 11 I = 1 , 2200 , 3
           K(I) = I
           B(I) = I
           NN = I  /  2
           IF( K(I) .GE. 1100 ) THEN
             L(I) = .FALSE.
             B(I) = A(I) - K(I)
             C(I) = K(I) + A(I)
           ENDIF
 11       CONTINUE

          DO 10 J = 1 , 2
          M = J + 10
          DO 10 I = 1 , 2200
            N = I + 10
            A(I) = I + 10
            LSW = A(I) .GT. C(I)
            IF( L(I) ) LSW = A(I) .LT. B(I)
            IF( LSW ) THEN
              C(I) = I + M - 5
              L1(I) = .NOT.LSW
            ENDIF
            IF( L(I) ) LSW = A(I) .LT. B(I)
            IF( LSW ) THEN
              AZ(I) = A(I) - B(I)
              L2(I) = .NOT.LSW
            ENDIF
            X(I) = B(I) - C(I) + A(I) - AZ(I)
 10       CONTINUE
          PRINT *,X
          END

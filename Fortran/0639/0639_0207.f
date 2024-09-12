          REAL*8 A(2220),B(2240),C(2200),X(2200)
          DATA A,B/2220*1.0D0,2240*2.0D0/
          DATA C/2200*2.0D0/
          INTEGER K(2200)
          DATA K/440*100,440*200,440*300,440*400,440*555/
          LOGICAL L(2200),L1(2200),L2(2200)
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
           IF( K(I) .GE. 1100 ) THEN
             L(I) = .FALSE.
             B(I) = A(I) - K(I)
           ENDIF
 11       CONTINUE

          DO 10 J = 1 , 2
          M = J + 10
          DO 10 I = 1 , 2200
            N = I + 10
            A(I) = I + 10
            IF( L(I) ) L1(I) = A(I+1) .LT. B(I+10)
            IF( L1(I) ) THEN
              C(I) = I + M - 5
            ENDIF
            IF( L(I) ) L2(I) = A(I+1) .LT. B(I+10)
            IF( L2(I) ) AZ(I) = A(I) - B(I)
            X(I) = B(I) - C(I) + A(I)
 10       CONTINUE
          PRINT *,X
          END

          REAL*8 A(2200),B(2200),C(2200),X(2200)
          INTEGER K(2200)
          DATA K/440*100,440*200,440*300,440*400,440*555/
          LOGICAL L(2200),L1(2200),L2(2200)
          DATA L/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          REAL*8 AZ(2200)/2200*2.2/
          DATA A/2200*1.0D0/

         DATA B,C,X/2200*1.D0,2200*2.1D0,2200*3.1D0/
         DATA L1/1000*.TRUE.,500*.FALSE.,700*.TRUE./
         DATA L2/500*.TRUE.,1500*.FALSE.,200*.TRUE./


          DO 11 M = 1 , 2200 , 3
           I = M
           K(I) = I
           B(I) = I
           NN = I  /  3
           IF( NN .NE. 0 ) THEN
             K(I) =  NN
           ENDIF
           IF( K(I) .EQ. I ) THEN
             L(I) = .FALSE.
             B(I) = A(I) - K(I)
           ENDIF
 11       CONTINUE

          DO 10 J = 1 , 2
            M = J + 10
            AAAA = J + 2
            DO 10 I = 1 , 2200
             N = I + 10
             IF( L(I) ) L1(I) = AAAA .GT. B(I)
             IF( L1(I) ) THEN
               C(I) = I + M - 5
             ENDIF
             IF( L(I) ) L2(I) = AAAA .GT. B(I)
             IF( L2(I) ) AZ(I) = A(I) - B(I)
             X(I) = B(I) - C(I) + A(I)
 10       CONTINUE
          PRINT *,X
          END

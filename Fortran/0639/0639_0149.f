          REAL Z(2200),W(2200),Y(2200),X(2200)
          DATA Z/2200*1.0/,W/2200*2.0/,Y/2200*3.0/,X/2200*4.0/
          REAL A(2200),B(2200),AA(10)
          DATA A/2200*1.0/,B/2200*2.0/,AA/10*3.3/
          INTEGER K(2200)
          DATA K/220*10,220*20,220*30,220*40,220*50,
     E           220*60,220*70,220*80,220*90,220*100/
          LOGICAL L(2200)
          DATA L/440*.TRUE.,220*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.FALSE.,440*.TRUE.,220*.FALSE.,220*.TRUE./
          REAL AZ1(2200),ANS1(2200),           AC1(2200),AC2(2200),
     E         AQ1(2200),AQ2(2200),AQ3(2200)

          DATA ANS1/2200*1.1/
          DATA AZ1/2200*1.0/,AC1/2200*1.0/,AC2/2200*1.0/
          DATA AQ1/2200*2.0/,AQ2/2200*2.0/,AQ3/2200*3.0/

          DO 10 J = 1 , 2
            N1 = J + 1
            DO 10 I = 1 , 2099
              N2 = I + 11
              Z(I) = AZ1(I) - AC2(I+40) + AQ2(N2-10) - AQ3(N1)
              IF( L(I) ) THEN
                A( K(I) ) = AQ2(I+J+10) - AQ1(I+40) - AA(1)- AQ3(I)
              ENDIF
              W(I) = AC1(I) + AQ2(N1) - AC2(I+40) + AA(J)
              IF( .NOT.L(I) ) THEN
                B(K(I)) = AC1(N2) - AQ3(N1+1) - AA(J+1)+ AZ1(N1+1)
              ENDIF
              Y(I) = AQ1(I) - AQ2(I+11-10) + AQ1(I+11-10) + AA(J)
              X(I) = AQ3(I+11-5) - 2.0 - AC2(I+N1) + AQ2(I+11)
              ANS1(I) = X(I) + Y(I) - W(I) - Z(I)
 10     CONTINUE
        PRINT *,ANS1,A,B
        END

          REAL*4 AAAA
          REAL*8 A(2200),B(2200),C(2200),X(2200)
          INTEGER K(2200)
          DATA K/440*100,440*200,440*300,440*400,440*555/
          LOGICAL L(2200),L1(2200),L2(2200)
          LOGICAL LSM(2200),L3(2200),L4(2200)
          DATA X/2200*0.0D0/
          DATA LSM,L3,L4/2200*.TRUE.,2200*.TRUE.,2200*.TRUE./
          DATA L/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          DATA L1/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          DATA L2/440*.TRUE.,440*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.TRUE.,440*.FALSE.,220*.TRUE./
          REAL*8 AZ(2200)/2200*2.0/
          DATA A/2200*1.0D0/,B/2200*0.D0/,C/2200*0.D0/
          LOGICAL LLX/.TRUE./,LLW/.TRUE./,LLY/.TRUE./
          LOGICAL RC1/.TRUE./,RC2/.TRUE./,RC3/.TRUE./

          DO 11 M = 1 , 2200 , 3
           I = M
           K(I) = I
           B(I) = - I
           NN = I  /  2
           IF( NN .NE. 0 ) THEN
             K(I) =  NN
             L1(I) = .TRUE.
             L3(I) = .TRUE.
           ENDIF
           IF( K(I) .EQ. I ) THEN
             L(I) = .FALSE.
             B(I) = A(I) - K(I) - I
             L2(I) = .FALSE.
             L4(I) = .TRUE.
           ENDIF
 11       CONTINUE

          DO 10 J = 1 , 2
            M = J + 10
            DO 10 I = 1 , 2200
             N = I + 10
             AAAA = B(I) + 1.0D0
             LLX = .NOT.L(I)
             IF( L(I) ) L1(I) = AAAA .GT. B(I)
             IF( RC1 ) THEN
               IF( L1(I) ) THEN
                 C(I) = I + M - 5 - N
                 LLX = .NOT.L1(I)
               ENDIF
             ENDIF
             IF( L(I) ) L2(I) = AAAA .GT. B(I)
             LLW = L(I).AND..TRUE.
             IF( RC2 ) THEN
               IF( L(I) ) L3(I) = AAAA .GT. B(I)
               LLW = L2(I).OR.L1(I)
             ENDIF
             IF( L2(I) ) AZ(I) = A(I) - B(I)
             LLY = L(I).OR.LLX
             IF(LLX.OR.LLW.OR.LLY) AAAA = AZ(I) - B(I)
             IF( RC3 ) THEN
               IF( L(I) ) L4(I) = AAAA .GT. B(I)
               LLY = L2(I).OR.L1(I)
             ENDIF
             LSM(I) = L1(I) .AND. L2(I) .AND. L3(I) .AND. L4(I)
             IF(LSM(I)) X(I) = AAAA - C(I) - B(I) + AZ(I)
 10       CONTINUE
          PRINT *,LSM ,X
          END

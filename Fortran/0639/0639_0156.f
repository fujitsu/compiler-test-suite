        REAL*8 ZZZZ,WWWW,YYYY
        REAL*8 A(2200),B(2200),AA(10)
        DATA A/2200*1.0D0/,B/2200*2.0D0/,AA/10*3.3D0/
        INTEGER K(2200)
        DATA K/220*10,220*20,220*30,220*40,220*50,
     E           220*60,220*70,220*80,220*90,220*100/
        LOGICAL L(2200)
        DATA L/440*.TRUE.,220*.FALSE.,220*.TRUE.,220*.FALSE.,
     E           220*.FALSE.,440*.TRUE.,220*.FALSE.,220*.TRUE./
        REAL*8 AZ1(2200),AC1(2200),
     E         AQ1(2200),AQ2(2200),AQ3(2200)

        DATA AZ1/2200*1.0D0/,AC1/2200*1.0D0/
        DATA AQ1/2200*2.0D0/,AQ2/2200*2.0D0/,AQ3/2200*3.0D0/

          ZZZZ = 0.0
          WWWW = 0.0
          YYYY = 0.0
          AZ1(1234) = 7.0D0
          AC1(777)  = 3.0D0
          AQ2(333)  = 7.0D0
          NN = 2048
          DO 10 J = 1 , 2
            N1 = J + 1
            DO 10 I = 1 , NN , J
              N2 = I + 11
              IF( AZ1(I) .GT. ZZZZ ) THEN
                ZZZZ = AZ1(I)
                IMAXZ = I
              ENDIF
              IF( L(I) ) THEN
                A( K(I) ) =   AQ1(I+40)-AA(1)+AQ3(I)
              ENDIF
              IF( AC1(I) .GT. WWWW ) THEN
                WWWW = AC1(I)
                IMAXW = I
              ENDIF
              IF( .NOT.L(I) ) THEN
                B(K(I)) =    AC1(N2+1)+AQ3(N1+1)-AA(J+1)+AZ1(N1+1)
              ENDIF
              IF( AQ2(I+11) .GT. YYYY ) THEN
                YYYY = AQ2(I+11)
                IMAXQ = I
              ENDIF
 10     CONTINUE
        PRINT *,ZZZZ,WWWW,YYYY,IMAXZ,IMAXW,IMAXQ,A,B
        END

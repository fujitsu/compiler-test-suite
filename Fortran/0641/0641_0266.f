      PROGRAM MAIN
       REAL*8 D11(10), D12(10), D13(10), DS1, DS2, DS3
       REAL*8 D21(10,10), D22(10,10), D23(10,10)
       REAL*8 D31(10,10,10), D32(10,10,10), D33(10,10,10)
       REAL*8 D41(8,8,8,8), D42(8,8,8,8)
       REAL*8 D51(5,5,5,5,5), D52(5,5,5,5,5)
       REAL*8 D61(5,3,3,3,3,2), D62(5,3,3,3,3,2)
       REAL*4 E11(10), E12(10), E13(10), ES1, ES2, ES3
       REAL*4 E21(10,10), E22(10,10), E23(10,10)
       REAL*4 E31(10,10,10), E32(10,10,10), E33(10,10,10)
       REAL*4 E41(8,8,8,8), E42(8,8,8,8)
       REAL*4 E51(5,5,5,5,5), E52(5,5,5,5,5)
       REAL*4 E61(5,3,3,3,3,2), E62(5,3,3,3,3,2)
       INTEGER*4 N11(10), N12(10), N13(10), NS1, NS2, NS3
       INTEGER*4 N21(10,10), N22(10,10), N23(10,10)
       INTEGER*4 N31(10,10,10), N32(10,10,10), N33(10,10,10)
       INTEGER*4 N41(8,8,8,8), N42(8,8,8,8)
       INTEGER*4 N51(5,5,5,5,5), N52(5,5,5,5,5)
       INTEGER*4 N61(5,3,3,3,3,2), N62(5,3,3,3,3,2)
       LOGICAL*4 L11(10), L12(10), L13(10), LS1, LS2, LS3
       LOGICAL*4 L21(10,10), L22(10,10), L23(10,10)
       LOGICAL*4 L31(10,10,10), L32(10,10,10), L33(10,10,10)
       LOGICAL*4 L41(8,8,8,8), L42(8,8,8,8)
       LOGICAL*4 L51(5,5,5,5,5), L52(5,5,5,5,5)
       LOGICAL*4 L61(5,3,3,3,3,2), L62(5,3,3,3,3,2)
       INTEGER N
       PARAMETER (N = 1)
       COMMON /CV5315K/ D62, D61, D52, D51, D42, D41, RR1, D33, D32, D31
     X   , D23, D22, D21, E62, E61, E52, E51, E42, RR2, E41, E33, E32, 
     X   E31, E23, E22, E21, N62, N61, N52, N51, N42, N41, RR3, N33, N32
     X   , N31, N23, N22, N21, L62, L61, L52, L51, L42, L41, RR4, L33, 
     X   L32, RR5, L31
       COMMON /CV5315K/ L23, L22, L21
       INTEGER II4, II3, II2, II1
       REAL RR5 (86), RR4 (86), RR3 (86), RR2 (86), RR1 (86)

       CALL INITR (D11,D12,D13,DS1,DS2,DS3,D21,D22,D23,D31,D32,D33,D41,
     X   D42,D51,D52,D61,D62,E11,E12,E13,ES1,ES2,ES3,E21,E22,E23,E31,E32
     X   ,E33,E41,E42,E51,E52,E61,E62)
       CALL INITIL (N11,N12,N13,NS1,NS2,NS3,N21,N22,N23,N31,N32,N33,N41,
     X   N42,N51,N52,N61,N62,L11,L12,L13,LS1,LS2,LS3,L21,L22,L23,L31,L32
     X   ,L33,L41,L42,L51,L52,L61,L62)
C$OMP PARALLEL SHARED (N11,N41,ES1,N61,IS2) PRIVATE (I0,II1,II2,II3,II4,
C$OMP& I1,I2,I3,I4,I5,I6)

                                                    
       DO I0=1,2
C$OMP SINGLE 
        ES1 = I0 ** I0
C$OMP END SINGLE NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (IS2)
        DO I1=1,5
         II4 = N11(I1) - 1
         DO I2=1,3
          DO I3=1,3
           II2 = I3 * I1
           DO I4=1,3
            II1 = N41(I4,I3,I2,I1)
            DO I5=1,3
             DO I6=1,2
              IS2 = II4
              IS2 = IS2 * II1
              IS2 = IS2 * II1
              IS2 = IS2 * II1
              II3 = IS2 + ES1 - II2
              N61(I1,I2,I3,I4,I5,I6) = II3
             END DO
            END DO
           END DO
          END DO
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 

                                                    
       IS3 = 15
       IS1 = N41(3,3,3,5)
       WRITE (6, *) ES1, IS1, IS2, IS3
       WRITE (6, *) N11
       WRITE (6, *) N61


       STOP 
      END

      SUBROUTINE INITR ( D11, D12, D13, DS1, DS2, DS3, D21, D22, D23, 
     X  D31, D32, D33, D41, D42, D51, D52, D61, D62, E11, E12, E13, ES1
     X  , ES2, ES3, E21, E22, E23, E31, E32, E33, E41, E42, E51, E52, 
     X  E61, E62 )
       REAL*8 D11(10), D12(10), D13(10), DS1, DS2, DS3
       REAL*8 D21(10,10), D22(10,10), D23(10,10)
       REAL*8 D31(10,10,10), D32(10,10,10), D33(10,10,10)
       REAL*8 D41(8,8,8,8), D42(8,8,8,8)
       REAL*8 D51(5,5,5,5,5), D52(5,5,5,5,5)
       REAL*8 D61(5,3,3,3,3,2), D62(5,3,3,3,3,2)
       REAL*4 E11(10), E12(10), E13(10), ES1, ES2, ES3
       REAL*4 E21(10,10), E22(10,10), E23(10,10)
       REAL*4 E31(10,10,10), E32(10,10,10), E33(10,10,10)
       REAL*4 E41(8,8,8,8), E42(8,8,8,8)
       REAL*4 E51(5,5,5,5,5), E52(5,5,5,5,5)
       REAL*4 E61(5,3,3,3,3,2), E62(5,3,3,3,3,2)
       REAL RR1, RR2
       DOUBLEPRECISION DD1, DD2
       PARAMETER (RR1 = 1. / 4., RR2 = 1. / 2., DD1 = 1D0 / 4., DD2 = 
     X   1D0 / 2.)
       INTEGER II6, II5, II4, II3, II2, II1
       REAL RR4, RR3
       DOUBLE PRECISION DD4, DD3
       LOGICAL LL22, LL21, LL20, LL19, LL18, LL17, LL16, LL15, LL14, 
     X   LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3, LL2
     X   , LL1

       ES3 = 3.5
       DO I1=1,6,5
        E11(I1) = I1
        E11(I1+1) = I1 + 1
        E11(I1+2) = I1 + 2
        E11(I1+3) = I1 + 3
        E11(I1+4) = I1 + 4
       END DO
       DO I2=2,7,4
        II1 = I2 + 1
        II2 = I2 + 2
        II3 = I2 + 3
        DO I1=1,9,2
         E21(I1,I2) = E11(I1) / I2
         E21(I1+1,I2) = E11(I1+1) / I2
         E21(I1,I2+1) = E11(I1) / II1
         E21(I1+1,I2+1) = E11(I1+1) / II1
         E21(I1,I2+2) = E11(I1) / II2
         E21(I1+1,I2+2) = E11(I1+1) / II2
         E21(I1,I2+3) = E11(I1) / II3
         E21(I1+1,I2+3) = E11(I1+1) / II3
         E22(I1,I2) = I2 * I1
         E22(I1+1,I2) = I2 * (I1 + 1)
         E22(I1,I2+1) = II1 * I1
         E22(I1+1,I2+1) = II1 * (I1 + 1)
         E22(I1,I2+2) = II2 * I1
         E22(I1+1,I2+2) = II2 * (I1 + 1)
         E22(I1,I2+3) = II3 * I1
         E22(I1+1,I2+3) = II3 * (I1 + 1)
         E23(I1,I2-1) = 0.5
         E23(I1+1,I2-1) = 0.5
         E23(I1,I2) = 0.5
         E23(I1+1,I2) = 0.5
         E23(I1,I2+1) = 0.5
         E23(I1+1,I2+1) = 0.5
         E23(I1,I2+2) = 0.5
         E23(I1+1,I2+2) = 0.5
        END DO
       END DO
       DO I1=1,6,5
        E21(I1,10) = E11(I1) / 10
        E21(I1+1,10) = E11(I1+1) / 10
        E21(I1+2,10) = E11(I1+2) / 10
        E21(I1+3,10) = E11(I1+3) / 10
        E21(I1+4,10) = E11(I1+4) / 10
        E22(I1,10) = I1 * 10
        E22(I1+1,10) = I1 * 10 + 10
        E22(I1+2,10) = I1 * 10 + 20
        E22(I1+3,10) = I1 * 10 + 30
        E22(I1+4,10) = I1 * 10 + 40
        E23(I1,9) = 0.5
        E23(I1+1,9) = 0.5
        E23(I1+2,9) = 0.5
        E23(I1+3,9) = 0.5
        E23(I1+4,9) = 0.5
       END DO
       DO I1=1,10
        ES1 = I1
        E12(I1) = E11(I1) * ES1
        E13(I1) = E12(I1)
        DO I2=2,10
         ES1 = I2 / I1
         IF (I2 .EQ. 10) THEN
          E22(I1,1) = 0.
         END IF
         E21(I1,I2-1) = E21(I1,I2) * ES1
        END DO
       END DO
       DO I2=2,7,4
        DO I1=1,10
         DO I3=1,6,5
          E31(I3,I2,I1) = 0.
          E31(I3+1,I2,I1) = 0.
          E31(I3+2,I2,I1) = 0.
          E31(I3+3,I2,I1) = 0.
          E31(I3+4,I2,I1) = 0.
          E31(I3,I2+1,I1) = 0.
          E31(I3+1,I2+1,I1) = 0.
          E31(I3+2,I2+1,I1) = 0.
          E31(I3+3,I2+1,I1) = 0.
          E31(I3+4,I2+1,I1) = 0.
          E31(I3,I2+2,I1) = 0.
          E31(I3+1,I2+2,I1) = 0.
          E31(I3+2,I2+2,I1) = 0.
          E31(I3+3,I2+2,I1) = 0.
          E31(I3+4,I2+2,I1) = 0.
          E31(I3,I2+3,I1) = 0.
          E31(I3+1,I2+3,I1) = 0.
          E31(I3+2,I2+3,I1) = 0.
          E31(I3+3,I2+3,I1) = 0.
          E31(I3+4,I2+3,I1) = 0.
         END DO
        END DO
       END DO
       DO I1=1,10
        DO I3=1,6,5
         E31(I3,10,I1) = 0.
         E31(I3+1,10,I1) = 0.
         E31(I3+2,10,I1) = 0.
         E31(I3+3,10,I1) = 0.
         E31(I3+4,10,I1) = 0.
        END DO
       END DO
       DO I1=1,7,4
        DO I2=2,10
         DO I3=1,6,5
          E32(I3,I1,I2) = 3.5
          E32(I3+1,I1,I2) = 3.5
          E32(I3+2,I1,I2) = 3.5
          E32(I3+3,I1,I2) = 3.5
          E32(I3+4,I1,I2) = 3.5
          E32(I3,I1+1,I2) = 3.5
          E32(I3+1,I1+1,I2) = 3.5
          E32(I3+2,I1+1,I2) = 3.5
          E32(I3+3,I1+1,I2) = 3.5
          E32(I3+4,I1+1,I2) = 3.5
          E32(I3,I1+2,I2) = 3.5
          E32(I3+1,I1+2,I2) = 3.5
          E32(I3+2,I1+2,I2) = 3.5
          E32(I3+3,I1+2,I2) = 3.5
          E32(I3+4,I1+2,I2) = 3.5
          E32(I3,I1+3,I2) = 3.5
          E32(I3+1,I1+3,I2) = 3.5
          E32(I3+2,I1+3,I2) = 3.5
          E32(I3+3,I1+3,I2) = 3.5
          E32(I3+4,I1+3,I2) = 3.5
         END DO
        END DO
       END DO
       DO I1=9,10,1
        DO I2=2,10
         DO I3=1,6,5
          E32(I3,I1,I2) = 3.5
          E32(I3+1,I1,I2) = 3.5
          E32(I3+2,I1,I2) = 3.5
          E32(I3+3,I1,I2) = 3.5
          E32(I3+4,I1,I2) = 3.5
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (E41,E42,E51,E52,E61,E62,E33,ES2) PRIVATE (RR3,LL5
C$OMP& ,LL6,LL7,RR4,LL8,LL9,LL10,LL11,LL12,LL13,I3,I2,I1,I4,I5,LL1,LL2)
C$OMP DO LASTPRIVATE (ES2)
       DO I3=1,10
        LL13 = I3 .LE. 8
        DO I2=2,10
         LL11 = LL13
         LL12 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL12 .AND. LL11) THEN
           LL7 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            ES2 = I3 + I4
            E41(I1,I4,I3,I2) = ES2
            E42(I1,I4+4,I2,I3) = ES2 * RR1
            IF (LL7 .AND. I4 .LE. 5) THEN
             RR3 = ES2 * RR2
             LL5 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              E51(I1,I2,I3,I4,I5) = ES2
              E52(I1,I2,I3,I4,I5) = RR3
              IF (LL5 .AND. I5 .LE. 3) THEN
               E61(I1,I2,I3,I4,I5,1) = 0.5
               E61(I1,I2,I3,I4,I5,2) = 0.5
               E62(I1,I2,I3,I4,I5,1) = 100.5
               E62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL6 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL1 = LL6 .AND. I5 .LE. 3
              IF (LL1) THEN
               E61(I1,I2,I3,I4,I5,1) = 0.5
               E61(I1,I2,I3,I4,I5,2) = 0.5
               E62(I1,I2,I3,I4,I5,1) = 100.5
               E62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            END IF
            ES2 = I4 / 2
           END DO
          ELSE
           LL10 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            ES2 = I3 + I4
            IF (LL10 .AND. I4 .LE. 5) THEN
             RR4 = ES2 * RR2
             LL8 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              E51(I1,I2,I3,I4,I5) = ES2
              E52(I1,I2,I3,I4,I5) = RR4
              IF (LL8 .AND. I5 .LE. 3) THEN
               E61(I1,I2,I3,I4,I5,1) = 0.5
               E61(I1,I2,I3,I4,I5,2) = 0.5
               E62(I1,I2,I3,I4,I5,1) = 100.5
               E62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL9 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL2 = LL9 .AND. I5 .LE. 3
              IF (LL2) THEN
               E61(I1,I2,I3,I4,I5,1) = 0.5
               E61(I1,I2,I3,I4,I5,2) = 0.5
               E62(I1,I2,I3,I4,I5,1) = 100.5
               E62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            END IF
            ES2 = I4 / 2
           END DO
          END IF
          E33(I1,I2,I3) = ES2
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       DS3 = 3.5
       DO I1=1,6,5
        D11(I1) = I1
        D11(I1+1) = I1 + 1
        D11(I1+2) = I1 + 2
        D11(I1+3) = I1 + 3
        D11(I1+4) = I1 + 4
       END DO
       DO I2=2,7,4
        II4 = I2 + 1
        II5 = I2 + 2
        II6 = I2 + 3
        DO I1=1,9,2
         D21(I1,I2) = D11(I1) / I2
         D21(I1+1,I2) = D11(I1+1) / I2
         D21(I1,I2+1) = D11(I1) / II4
         D21(I1+1,I2+1) = D11(I1+1) / II4
         D21(I1,I2+2) = D11(I1) / II5
         D21(I1+1,I2+2) = D11(I1+1) / II5
         D21(I1,I2+3) = D11(I1) / II6
         D21(I1+1,I2+3) = D11(I1+1) / II6
         D22(I1,I2) = I2 * I1
         D22(I1+1,I2) = I2 * (I1 + 1)
         D22(I1,I2+1) = II4 * I1
         D22(I1+1,I2+1) = II4 * (I1 + 1)
         D22(I1,I2+2) = II5 * I1
         D22(I1+1,I2+2) = II5 * (I1 + 1)
         D22(I1,I2+3) = II6 * I1
         D22(I1+1,I2+3) = II6 * (I1 + 1)
         D23(I1,I2-1) = 0.5
         D23(I1+1,I2-1) = 0.5
         D23(I1,I2) = 0.5
         D23(I1+1,I2) = 0.5
         D23(I1,I2+1) = 0.5
         D23(I1+1,I2+1) = 0.5
         D23(I1,I2+2) = 0.5
         D23(I1+1,I2+2) = 0.5
        END DO
       END DO
       DO I1=1,6,5
        D21(I1,10) = D11(I1) / 10
        D21(I1+1,10) = D11(I1+1) / 10
        D21(I1+2,10) = D11(I1+2) / 10
        D21(I1+3,10) = D11(I1+3) / 10
        D21(I1+4,10) = D11(I1+4) / 10
        D22(I1,10) = I1 * 10
        D22(I1+1,10) = I1 * 10 + 10
        D22(I1+2,10) = I1 * 10 + 20
        D22(I1+3,10) = I1 * 10 + 30
        D22(I1+4,10) = I1 * 10 + 40
        D23(I1,9) = 0.5
        D23(I1+1,9) = 0.5
        D23(I1+2,9) = 0.5
        D23(I1+3,9) = 0.5
        D23(I1+4,9) = 0.5
       END DO
       DO I1=1,10
        DS1 = I1
        D12(I1) = D11(I1) * DS1
        D13(I1) = D12(I1)
        DO I2=2,10
         DS1 = I2 / I1
         IF (I2 .EQ. 10) THEN
          D22(I1,1) = 0D0
         END IF
         D21(I1,I2-1) = D21(I1,I2) * DS1
        END DO
       END DO
       DO I2=2,7,4
        DO I1=1,10
         DO I3=1,6,5
          D31(I3,I2,I1) = 0D0
          D31(I3+1,I2,I1) = 0D0
          D31(I3+2,I2,I1) = 0D0
          D31(I3+3,I2,I1) = 0D0
          D31(I3+4,I2,I1) = 0D0
          D31(I3,I2+1,I1) = 0D0
          D31(I3+1,I2+1,I1) = 0D0
          D31(I3+2,I2+1,I1) = 0D0
          D31(I3+3,I2+1,I1) = 0D0
          D31(I3+4,I2+1,I1) = 0D0
          D31(I3,I2+2,I1) = 0D0
          D31(I3+1,I2+2,I1) = 0D0
          D31(I3+2,I2+2,I1) = 0D0
          D31(I3+3,I2+2,I1) = 0D0
          D31(I3+4,I2+2,I1) = 0D0
          D31(I3,I2+3,I1) = 0D0
          D31(I3+1,I2+3,I1) = 0D0
          D31(I3+2,I2+3,I1) = 0D0
          D31(I3+3,I2+3,I1) = 0D0
          D31(I3+4,I2+3,I1) = 0D0
         END DO
        END DO
       END DO
       DO I1=1,10
        DO I3=1,6,5
         D31(I3,10,I1) = 0D0
         D31(I3+1,10,I1) = 0D0
         D31(I3+2,10,I1) = 0D0
         D31(I3+3,10,I1) = 0D0
         D31(I3+4,10,I1) = 0D0
        END DO
       END DO
       DO I1=1,7,4
        DO I2=2,10
         DO I3=1,6,5
          D32(I3,I1,I2) = 3.5
          D32(I3+1,I1,I2) = 3.5
          D32(I3+2,I1,I2) = 3.5
          D32(I3+3,I1,I2) = 3.5
          D32(I3+4,I1,I2) = 3.5
          D32(I3,I1+1,I2) = 3.5
          D32(I3+1,I1+1,I2) = 3.5
          D32(I3+2,I1+1,I2) = 3.5
          D32(I3+3,I1+1,I2) = 3.5
          D32(I3+4,I1+1,I2) = 3.5
          D32(I3,I1+2,I2) = 3.5
          D32(I3+1,I1+2,I2) = 3.5
          D32(I3+2,I1+2,I2) = 3.5
          D32(I3+3,I1+2,I2) = 3.5
          D32(I3+4,I1+2,I2) = 3.5
          D32(I3,I1+3,I2) = 3.5
          D32(I3+1,I1+3,I2) = 3.5
          D32(I3+2,I1+3,I2) = 3.5
          D32(I3+3,I1+3,I2) = 3.5
          D32(I3+4,I1+3,I2) = 3.5
         END DO
        END DO
       END DO
       DO I1=9,10,1
        DO I2=2,10
         DO I3=1,6,5
          D32(I3,I1,I2) = 3.5
          D32(I3+1,I1,I2) = 3.5
          D32(I3+2,I1,I2) = 3.5
          D32(I3+3,I1,I2) = 3.5
          D32(I3+4,I1,I2) = 3.5
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (D41,D42,D51,D52,D61,D62,D33,DS2) PRIVATE (DD3,
C$OMP& LL14,LL15,LL16,DD4,LL17,LL18,LL19,LL20,LL21,LL22,I3,I2,I1,I4,I5,
C$OMP& LL3,LL4)
C$OMP DO LASTPRIVATE (DS2)
       DO I3=1,10
        LL22 = I3 .LE. 8
        DO I2=2,10
         LL20 = LL22
         LL21 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL21 .AND. LL20) THEN
           LL16 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            DS2 = I3 + I4
            D41(I1,I4,I3,I2) = DS2
            D42(I1,I4+4,I2,I3) = DS2 * DD1
            IF (LL16 .AND. I4 .LE. 5) THEN
             DD3 = DS2 * DD2
             LL14 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              D51(I1,I2,I3,I4,I5) = DS2
              D52(I1,I2,I3,I4,I5) = DD3
              IF (LL14 .AND. I5 .LE. 3) THEN
               D61(I1,I2,I3,I4,I5,1) = 0.5
               D61(I1,I2,I3,I4,I5,2) = 0.5
               D62(I1,I2,I3,I4,I5,1) = 100.5
               D62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL15 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL3 = LL15 .AND. I5 .LE. 3
              IF (LL3) THEN
               D61(I1,I2,I3,I4,I5,1) = 0.5
               D61(I1,I2,I3,I4,I5,2) = 0.5
               D62(I1,I2,I3,I4,I5,1) = 100.5
               D62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            END IF
            DS2 = I4 / 2
           END DO
          ELSE
           LL19 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            DS2 = I3 + I4
            IF (LL19 .AND. I4 .LE. 5) THEN
             DD4 = DS2 * DD2
             LL17 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              D51(I1,I2,I3,I4,I5) = DS2
              D52(I1,I2,I3,I4,I5) = DD4
              IF (LL17 .AND. I5 .LE. 3) THEN
               D61(I1,I2,I3,I4,I5,1) = 0.5
               D61(I1,I2,I3,I4,I5,2) = 0.5
               D62(I1,I2,I3,I4,I5,1) = 100.5
               D62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL18 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL4 = LL18 .AND. I5 .LE. 3
              IF (LL4) THEN
               D61(I1,I2,I3,I4,I5,1) = 0.5
               D61(I1,I2,I3,I4,I5,2) = 0.5
               D62(I1,I2,I3,I4,I5,1) = 100.5
               D62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            END IF
            DS2 = I4 / 2
           END DO
          END IF
          D33(I1,I2,I3) = DS2
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END

      SUBROUTINE INITIL ( I11, I12, I13, IS1, IS2, IS3, I21, I22, I23, 
     X  I31, I32, I33, I41, I42, I51, I52, I61, I62, L11, L12, L13, LS1
     X  , LS2, LS3, L21, L22, L23, L31, L32, L33, L41, L42, L51, L52, 
     X  L61, L62 )
       INTEGER*4 I11(10), I12(10), I13(10), IS1, IS2, IS3
       INTEGER*4 I21(10,10), I22(10,10), I23(10,10)
       INTEGER*4 I31(10,10,10), I32(10,10,10), I33(10,10,10)
       INTEGER*4 I41(8,8,8,8), I42(8,8,8,8)
       INTEGER*4 I51(5,5,5,5,5), I52(5,5,5,5,5)
       INTEGER*4 I61(5,3,3,3,3,2), I62(5,3,3,3,3,2)
       LOGICAL*4 L11(10), L12(10), L13(10), LS1, LS2, LS3
       LOGICAL*4 L21(10,10), L22(10,10), L23(10,10)
       LOGICAL*4 L31(10,10,10), L32(10,10,10), L33(10,10,10)
       LOGICAL*4 L41(8,8,8,8), L42(8,8,8,8)
       LOGICAL*4 L51(5,5,5,5,5), L52(5,5,5,5,5)
       LOGICAL*4 L61(5,3,3,3,3,2), L62(5,3,3,3,3,2)
       REAL RR1
       PARAMETER (RR1 = 1. / 2.)
       INTEGER II36, II35, II34, II33, II32, II31, II30, II29, II28, 
     X   II27, II26, II25, II24, II23, II22, II21, II20, II19, II18, 
     X   II17, II16, II15, II14, II13, II12, II11, II10, II9, II8, II7, 
     X   II6, II5, II4, II3, II2, II1
       REAL RR3, RR2
       LOGICAL LL28, LL27, LL26, LL25, LL24, LL23, LL22, LL21, LL20, 
     X   LL19, LL18, LL17, LL16, LL15, LL14, LL13, LL12, LL11, LL10, LL9
     X   , LL8, LL7, LL6, LL5, LL4, LL3, LL2, LL1

       IS3 = 104
       I41=0
       I42=0
       DO I1=1,6,5
        II19 = I1
        II20 = I1 + 1
        II21 = I1 + 2
        II22 = I1 + 3
        II23 = I1 + 4
        II24 = II19 * I1
        II25 = II20 * (I1 + 1)
        II26 = II21 * (I1 + 2)
        II27 = II22 * (I1 + 3)
        II28 = II23 * (I1 + 4)
        I13(I1) = II24
        I13(I1+1) = II25
        I13(I1+2) = II26
        I13(I1+3) = II27
        I13(I1+4) = II28
        I12(I1+4) = II28
        I12(I1+3) = II27
        I12(I1+2) = II26
        I12(I1+1) = II25
        I12(I1) = II24
        I11(I1+4) = II23
        I11(I1+3) = II22
        I11(I1+2) = II21
        I11(I1+1) = II20
        I11(I1) = II19
       END DO
       DO I2=2,7,4
        II1 = I2 + 1
        II2 = I2 + 2
        II3 = I2 + 3
        DO I1=1,6,5
         II7 = I11(I1) * 10
         II8 = I11(I1+1) * 10
         II9 = I11(I1+2) * 10
         II10 = I11(I1+3) * 10
         II6 = I11(I1+4) * 10
         I21(I1,I2) = II7 / I2
         I21(I1+1,I2) = II8 / I2
         I21(I1+2,I2) = II9 / I2
         I21(I1+3,I2) = II10 / I2
         I21(I1+4,I2) = II6 / I2
         II7 = I11(I1) * 10
         II8 = I11(I1+1) * 10
         II9 = I11(I1+2) * 10
         II10 = I11(I1+3) * 10
         II6 = I11(I1+4) * 10
         I21(I1,I2+1) = II7 / II1
         I21(I1+1,I2+1) = II8 / II1
         I21(I1+2,I2+1) = II9 / II1
         I21(I1+3,I2+1) = II10 / II1
         I21(I1+4,I2+1) = II6 / II1
         II7 = I11(I1) * 10
         II8 = I11(I1+1) * 10
         II9 = I11(I1+2) * 10
         II10 = I11(I1+3) * 10
         II6 = I11(I1+4) * 10
         I21(I1,I2+2) = II7 / II2
         I21(I1+1,I2+2) = II8 / II2
         I21(I1+2,I2+2) = II9 / II2
         I21(I1+3,I2+2) = II10 / II2
         I21(I1+4,I2+2) = II6 / II2
         II7 = I11(I1) * 10
         II8 = I11(I1+1) * 10
         II9 = I11(I1+2) * 10
         II10 = I11(I1+3) * 10
         II6 = I11(I1+4) * 10
         I21(I1,I2+3) = II7 / II3
         I21(I1+1,I2+3) = II8 / II3
         I21(I1+2,I2+3) = II9 / II3
         I21(I1+3,I2+3) = II10 / II3
         I21(I1+4,I2+3) = II6 / II3
         I22(I1,I2) = I2 * I1
         I22(I1+1,I2) = I2 * (I1 + 1)
         I22(I1+2,I2) = I2 * (I1 + 2)
         I22(I1+3,I2) = I2 * (I1 + 3)
         I22(I1+4,I2) = I2 * (I1 + 4)
         I22(I1,I2+1) = II1 * I1
         I22(I1+1,I2+1) = II1 * (I1 + 1)
         I22(I1+2,I2+1) = II1 * (I1 + 2)
         I22(I1+3,I2+1) = II1 * (I1 + 3)
         I22(I1+4,I2+1) = II1 * (I1 + 4)
         I22(I1,I2+2) = II2 * I1
         I22(I1+1,I2+2) = II2 * (I1 + 1)
         I22(I1+2,I2+2) = II2 * (I1 + 2)
         I22(I1+3,I2+2) = II2 * (I1 + 3)
         I22(I1+4,I2+2) = II2 * (I1 + 4)
         I22(I1,I2+3) = II3 * I1
         I22(I1+1,I2+3) = II3 * (I1 + 1)
         I22(I1+2,I2+3) = II3 * (I1 + 2)
         I22(I1+3,I2+3) = II3 * (I1 + 3)
         I22(I1+4,I2+3) = II3 * (I1 + 4)
         I23(I1,I2-1) = 0.5
         I23(I1+1,I2-1) = 0.5
         I23(I1+2,I2-1) = 0.5
         I23(I1+3,I2-1) = 0.5
         I23(I1+4,I2-1) = 0.5
         I23(I1,I2) = 0.5
         I23(I1+1,I2) = 0.5
         I23(I1+2,I2) = 0.5
         I23(I1+3,I2) = 0.5
         I23(I1+4,I2) = 0.5
         I23(I1,I2+1) = 0.5
         I23(I1+1,I2+1) = 0.5
         I23(I1+2,I2+1) = 0.5
         I23(I1+3,I2+1) = 0.5
         I23(I1+4,I2+1) = 0.5
         I23(I1,I2+2) = 0.5
         I23(I1+1,I2+2) = 0.5
         I23(I1+2,I2+2) = 0.5
         I23(I1+3,I2+2) = 0.5
         I23(I1+4,I2+2) = 0.5
        END DO
       END DO
       DO I1=1,6,5
        I21(I1,10) = I11(I1)
        I21(I1+1,10) = I11(I1+1)
        I21(I1+2,10) = I11(I1+2)
        I21(I1+3,10) = I11(I1+3)
        I21(I1+4,10) = I11(I1+4)
        I22(I1,10) = I1 * 10
        I22(I1+1,10) = I1 * 10 + 10
        I22(I1+2,10) = I1 * 10 + 20
        I22(I1+3,10) = I1 * 10 + 30
        I22(I1+4,10) = I1 * 10 + 40
        I23(I1,9) = 0.5
        I23(I1+1,9) = 0.5
        I23(I1+2,9) = 0.5
        I23(I1+3,9) = 0.5
        I23(I1+4,9) = 0.5
       END DO
       DO I2=2,10
        IF (I2 .EQ. 10) THEN
         DO I1=1,6,5
          II11 = I2 / I1 + 104
          II12 = I2 / (I1 + 1) + 104
          II13 = I2 / (I1 + 2) + 104
          II14 = I2 / (I1 + 3) + 104
          IS1 = I2 / (I1 + 4) + 104
          I22(I1,1) = 0
          I22(I1+1,1) = 0
          I22(I1+2,1) = 0
          I22(I1+3,1) = 0
          I22(I1+4,1) = 0
          II29 = I21(I1,I2) * II11
          II30 = I21(I1+1,I2) * II12
          II31 = I21(I1+2,I2) * II13
          II32 = I21(I1+3,I2) * II14
          I21(I1+4,I2-1) = I21(I1+4,I2) * IS1
          I21(I1+3,I2-1) = II32
          I21(I1+2,I2-1) = II31
          I21(I1+1,I2-1) = II30
          I21(I1,I2-1) = II29
         END DO
        ELSE
         DO I1=1,6,5
          II15 = I2 / I1 + 104
          II16 = I2 / (I1 + 1) + 104
          II17 = I2 / (I1 + 2) + 104
          II18 = I2 / (I1 + 3) + 104
          IS1 = I2 / (I1 + 4) + 104
          II33 = I21(I1,I2) * II15
          II34 = I21(I1+1,I2) * II16
          II35 = I21(I1+2,I2) * II17
          II36 = I21(I1+3,I2) * II18
          I21(I1+4,I2-1) = I21(I1+4,I2) * IS1
          I21(I1+3,I2-1) = II36
          I21(I1+2,I2-1) = II35
          I21(I1+1,I2-1) = II34
          I21(I1,I2-1) = II33
         END DO
        END IF
       END DO
       DO I2=2,7,4
        DO I1=1,10
         DO I3=1,6,5
          I31(I3,I2,I1) = 0
          I31(I3+1,I2,I1) = 0
          I31(I3+2,I2,I1) = 0
          I31(I3+3,I2,I1) = 0
          I31(I3+4,I2,I1) = 0
          I31(I3,I2+1,I1) = 0
          I31(I3+1,I2+1,I1) = 0
          I31(I3+2,I2+1,I1) = 0
          I31(I3+3,I2+1,I1) = 0
          I31(I3+4,I2+1,I1) = 0
          I31(I3,I2+2,I1) = 0
          I31(I3+1,I2+2,I1) = 0
          I31(I3+2,I2+2,I1) = 0
          I31(I3+3,I2+2,I1) = 0
          I31(I3+4,I2+2,I1) = 0
          I31(I3,I2+3,I1) = 0
          I31(I3+1,I2+3,I1) = 0
          I31(I3+2,I2+3,I1) = 0
          I31(I3+3,I2+3,I1) = 0
          I31(I3+4,I2+3,I1) = 0
         END DO
        END DO
       END DO
       DO I1=1,10
        DO I3=1,6,5
         I31(I3,10,I1) = 0
         I31(I3+1,10,I1) = 0
         I31(I3+2,10,I1) = 0
         I31(I3+3,10,I1) = 0
         I31(I3+4,10,I1) = 0
        END DO
       END DO
       DO I1=1,7,4
        DO I2=2,10
         DO I3=1,6,5
          I32(I3,I1,I2) = 3.5
          I32(I3+1,I1,I2) = 3.5
          I32(I3+2,I1,I2) = 3.5
          I32(I3+3,I1,I2) = 3.5
          I32(I3+4,I1,I2) = 3.5
          I32(I3,I1+1,I2) = 3.5
          I32(I3+1,I1+1,I2) = 3.5
          I32(I3+2,I1+1,I2) = 3.5
          I32(I3+3,I1+1,I2) = 3.5
          I32(I3+4,I1+1,I2) = 3.5
          I32(I3,I1+2,I2) = 3.5
          I32(I3+1,I1+2,I2) = 3.5
          I32(I3+2,I1+2,I2) = 3.5
          I32(I3+3,I1+2,I2) = 3.5
          I32(I3+4,I1+2,I2) = 3.5
          I32(I3,I1+3,I2) = 3.5
          I32(I3+1,I1+3,I2) = 3.5
          I32(I3+2,I1+3,I2) = 3.5
          I32(I3+3,I1+3,I2) = 3.5
          I32(I3+4,I1+3,I2) = 3.5
         END DO
        END DO
       END DO
       DO I1=9,10,1
        DO I2=2,10
         DO I3=1,6,5
          I32(I3,I1,I2) = 3.5
          I32(I3+1,I1,I2) = 3.5
          I32(I3+2,I1,I2) = 3.5
          I32(I3+3,I1,I2) = 3.5
          I32(I3+4,I1,I2) = 3.5
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (I41,I42,I51,I52,I61,I62,I33,IS2) PRIVATE (II4,RR2
C$OMP& ,LL5,LL6,LL7,II5,RR3,LL8,LL9,LL10,LL11,LL12,LL13,I3,I2,I1,I4,I5,
C$OMP& LL1,LL2)
C$OMP DO LASTPRIVATE (IS2)
       DO I3=1,10
        LL13 = I3 .LE. 8
        DO I2=2,10
         LL11 = LL13
         LL12 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL12 .AND. LL11) THEN
           LL7 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            I41(I1,I4,I3,I2) = I3 + I4
            I42(I1,I4+4,I2,I3) = (I3 + I4) / 3
            IF (LL7 .AND. I4 .LE. 5) THEN
             II4 = I3 + I4
             RR2 = II4 * RR1
             LL5 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              I51(I1,I2,I3,I4,I5) = II4
              I52(I1,I2,I3,I4,I5) = RR2
              IF (LL5 .AND. I5 .LE. 3) THEN
               I61(I1,I2,I3,I4,I5,1) = 0.5
               I61(I1,I2,I3,I4,I5,2) = 0.5
               I62(I1,I2,I3,I4,I5,1) = 100.5
               I62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL6 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL1 = LL6 .AND. I5 .LE. 3
              IF (LL1) THEN
               I61(I1,I2,I3,I4,I5,1) = 0.5
               I61(I1,I2,I3,I4,I5,2) = 0.5
               I62(I1,I2,I3,I4,I5,1) = 100.5
               I62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            END IF
           END DO
           IS2 = 2
          ELSE
           LL10 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            IF (LL10 .AND. I4 .LE. 5) THEN
             II5 = I3 + I4
             RR3 = II5 * RR1
             LL8 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              I51(I1,I2,I3,I4,I5) = II5
              I52(I1,I2,I3,I4,I5) = RR3
              IF (LL8 .AND. I5 .LE. 3) THEN
               I61(I1,I2,I3,I4,I5,1) = 0.5
               I61(I1,I2,I3,I4,I5,2) = 0.5
               I62(I1,I2,I3,I4,I5,1) = 100.5
               I62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL9 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL2 = LL9 .AND. I5 .LE. 3
              IF (LL2) THEN
               I61(I1,I2,I3,I4,I5,1) = 0.5
               I61(I1,I2,I3,I4,I5,2) = 0.5
               I62(I1,I2,I3,I4,I5,1) = 100.5
               I62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            END IF
           END DO
           IS2 = 2
          END IF
          I33(I1,I2,I3) = IS2
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       LS3 = .TRUE.
       DO I1=1,6,5
        L11(I1) = .TRUE.
        L11(I1+1) = .TRUE.
        L11(I1+2) = .TRUE.
        L11(I1+3) = .TRUE.
        L11(I1+4) = .TRUE.
       END DO
       DO I2=2,7,4
        LL14 = MOD (I2, 2) .EQ. 0
        LL15 = MOD (I2 + 1, 2) .EQ. 0
        LL16 = MOD (I2 + 2, 2) .EQ. 0
        LL17 = MOD (I2 + 3, 2) .EQ. 0
        DO I1=1,6,5
         L21(I1,I2) = L11(I1)
         L21(I1+1,I2) = L11(I1+1)
         L21(I1+2,I2) = L11(I1+2)
         L21(I1+3,I2) = L11(I1+3)
         L21(I1+4,I2) = L11(I1+4)
         L21(I1,I2+1) = L11(I1)
         L21(I1+1,I2+1) = L11(I1+1)
         L21(I1+2,I2+1) = L11(I1+2)
         L21(I1+3,I2+1) = L11(I1+3)
         L21(I1+4,I2+1) = L11(I1+4)
         L21(I1,I2+2) = L11(I1)
         L21(I1+1,I2+2) = L11(I1+1)
         L21(I1+2,I2+2) = L11(I1+2)
         L21(I1+3,I2+2) = L11(I1+3)
         L21(I1+4,I2+2) = L11(I1+4)
         L21(I1,I2+3) = L11(I1)
         L21(I1+1,I2+3) = L11(I1+1)
         L21(I1+2,I2+3) = L11(I1+2)
         L21(I1+3,I2+3) = L11(I1+3)
         L21(I1+4,I2+3) = L11(I1+4)
         L22(I1,I2) = I2 .GT. I1
         L22(I1+1,I2) = I2 .GT. I1 + 1
         L22(I1+2,I2) = I2 .GT. I1 + 2
         L22(I1+3,I2) = I2 .GT. I1 + 3
         L22(I1+4,I2) = I2 .GT. I1 + 4
         L22(I1,I2+1) = I2 .GT. I1 - 1
         L22(I1+1,I2+1) = I2 .GT. I1
         L22(I1+2,I2+1) = I2 .GT. I1 + 1
         L22(I1+3,I2+1) = I2 .GT. I1 + 2
         L22(I1+4,I2+1) = I2 .GT. I1 + 3
         L22(I1,I2+2) = I2 .GT. I1 - 2
         L22(I1+1,I2+2) = I2 .GT. I1 - 1
         L22(I1+2,I2+2) = I2 .GT. I1
         L22(I1+3,I2+2) = I2 .GT. I1 + 1
         L22(I1+4,I2+2) = I2 .GT. I1 + 2
         L22(I1,I2+3) = I2 .GT. I1 - 3
         L22(I1+1,I2+3) = I2 .GT. I1 - 2
         L22(I1+2,I2+3) = I2 .GT. I1 - 1
         L22(I1+3,I2+3) = I2 .GT. I1
         L22(I1+4,I2+3) = I2 .GT. I1 + 1
         L23(I1,I2-1) = LL14
         L23(I1+1,I2-1) = LL14
         L23(I1+2,I2-1) = LL14
         L23(I1+3,I2-1) = LL14
         L23(I1+4,I2-1) = LL14
         L23(I1,I2) = LL15
         L23(I1+1,I2) = LL15
         L23(I1+2,I2) = LL15
         L23(I1+3,I2) = LL15
         L23(I1+4,I2) = LL15
         L23(I1,I2+1) = LL16
         L23(I1+1,I2+1) = LL16
         L23(I1+2,I2+1) = LL16
         L23(I1+3,I2+1) = LL16
         L23(I1+4,I2+1) = LL16
         L23(I1,I2+2) = LL17
         L23(I1+1,I2+2) = LL17
         L23(I1+2,I2+2) = LL17
         L23(I1+3,I2+2) = LL17
         L23(I1+4,I2+2) = LL17
        END DO
       END DO
       DO I1=1,6,5
        L21(I1,10) = L11(I1)
        L21(I1+1,10) = L11(I1+1)
        L21(I1+2,10) = L11(I1+2)
        L21(I1+3,10) = L11(I1+3)
        L21(I1+4,10) = L11(I1+4)
        L22(I1,10) = 10 .GT. I1
        L22(I1+1,10) = 9 .GT. I1
        L22(I1+2,10) = 8 .GT. I1
        L22(I1+3,10) = 7 .GT. I1
        L22(I1+4,10) = 6 .GT. I1
        L23(I1,9) = .TRUE.
        L23(I1+1,9) = .TRUE.
        L23(I1+2,9) = .TRUE.
        L23(I1+3,9) = .TRUE.
        L23(I1+4,9) = .TRUE.
       END DO
C$OMP PARALLEL SHARED (L12,L11,L13,L22,L21,L32,LS1) PRIVATE (I1,I2,I3)
C$OMP DO LASTPRIVATE (LS1)
       DO I1=1,10
        LS1 = I1 .GE. 3
        L12(I1) = L11(I1) .AND. LS1
        L13(I1) = L12(I1)
        DO I2=2,10
         LS1 = I2 / I1 .NE. 0
         IF (I2 .EQ. 10) THEN
          L22(I1,1) = .FALSE.
         END IF
         L21(I1,I2-1) = L21(I1,I2) .AND. LS1
         DO I3=1,6,5
          L32(I3,I1,I2) = LS1
          L32(I3+1,I1,I2) = LS1
          L32(I3+2,I1,I2) = LS1
          L32(I3+3,I1,I2) = LS1
          L32(I3+4,I1,I2) = LS1
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=2,7,4
        DO I1=1,10
         DO I3=1,6,5
          L31(I3,I2,I1) = .TRUE.
          L31(I3+1,I2,I1) = .TRUE.
          L31(I3+2,I2,I1) = .TRUE.
          L31(I3+3,I2,I1) = .TRUE.
          L31(I3+4,I2,I1) = .TRUE.
          L31(I3,I2+1,I1) = .TRUE.
          L31(I3+1,I2+1,I1) = .TRUE.
          L31(I3+2,I2+1,I1) = .TRUE.
          L31(I3+3,I2+1,I1) = .TRUE.
          L31(I3+4,I2+1,I1) = .TRUE.
          L31(I3,I2+2,I1) = .TRUE.
          L31(I3+1,I2+2,I1) = .TRUE.
          L31(I3+2,I2+2,I1) = .TRUE.
          L31(I3+3,I2+2,I1) = .TRUE.
          L31(I3+4,I2+2,I1) = .TRUE.
          L31(I3,I2+3,I1) = .TRUE.
          L31(I3+1,I2+3,I1) = .TRUE.
          L31(I3+2,I2+3,I1) = .TRUE.
          L31(I3+3,I2+3,I1) = .TRUE.
          L31(I3+4,I2+3,I1) = .TRUE.
         END DO
        END DO
       END DO
       DO I1=1,10
        DO I3=1,6,5
         L31(I3,10,I1) = .TRUE.
         L31(I3+1,10,I1) = .TRUE.
         L31(I3+2,10,I1) = .TRUE.
         L31(I3+3,10,I1) = .TRUE.
         L31(I3+4,10,I1) = .TRUE.
        END DO
       END DO
C$OMP PARALLEL SHARED (L41,L42,L51,L52,L61,L62,L33,LS2) PRIVATE (LL18,
C$OMP& LL19,LL20,LL21,LL22,LL23,LL24,LL25,LL26,LL27,LL28,I3,I2,I1,I4,I5,
C$OMP& LL3,LL4)
C$OMP DO LASTPRIVATE (LS2)
       DO I3=1,10
        LL28 = I3 .LE. 8
        DO I2=2,10
         LL26 = LL28
         LL27 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL27 .AND. LL26) THEN
           LL21 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            LS2 = I3 .LE. I4
            L41(I1,I4,I3,I2) = LS2
            L42(I1,I4+4,I2,I3) = LS2
            IF (LL21 .AND. I4 .LE. 5) THEN
             LL18 = I3 .LE. I4
             LL19 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              L51(I1,I2,I3,I4,I5) = LL18
              L52(I1,I2,I3,I4,I5) = LL18 .AND. I5 .GE. 3
              IF (LL19 .AND. I5 .LE. 3) THEN
               L61(I1,I2,I3,I4,I5,1) = .FALSE.
               L61(I1,I2,I3,I4,I5,2) = .FALSE.
               L62(I1,I2,I3,I4,I5,1) = .TRUE.
               L62(I1,I2,I3,I4,I5,2) = .TRUE.
              END IF
             END DO
            ELSE
             LL20 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL3 = LL20 .AND. I5 .LE. 3
              IF (LL3) THEN
               L61(I1,I2,I3,I4,I5,1) = .FALSE.
               L61(I1,I2,I3,I4,I5,2) = .FALSE.
               L62(I1,I2,I3,I4,I5,1) = .TRUE.
               L62(I1,I2,I3,I4,I5,2) = .TRUE.
              END IF
             END DO
            END IF
           END DO
           LS2 = MOD (I3, 2) .NE. 0
          ELSE
           LL25 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            IF (LL25 .AND. I4 .LE. 5) THEN
             LL22 = I3 .LE. I4
             LL23 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              L51(I1,I2,I3,I4,I5) = LL22
              L52(I1,I2,I3,I4,I5) = LL22 .AND. I5 .GE. 3
              IF (LL23 .AND. I5 .LE. 3) THEN
               L61(I1,I2,I3,I4,I5,1) = .FALSE.
               L61(I1,I2,I3,I4,I5,2) = .FALSE.
               L62(I1,I2,I3,I4,I5,1) = .TRUE.
               L62(I1,I2,I3,I4,I5,2) = .TRUE.
              END IF
             END DO
            ELSE
             LL24 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL4 = LL24 .AND. I5 .LE. 3
              IF (LL4) THEN
               L61(I1,I2,I3,I4,I5,1) = .FALSE.
               L61(I1,I2,I3,I4,I5,2) = .FALSE.
               L62(I1,I2,I3,I4,I5,1) = .TRUE.
               L62(I1,I2,I3,I4,I5,2) = .TRUE.
              END IF
             END DO
            END IF
           END DO
           LS2 = MOD (I3, 2) .NE. 0
          END IF
          L33(I1,I2,I3) = LS2
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END

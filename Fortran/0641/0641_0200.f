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
       COMPLEX*16 CD11(10), CD12(10), CD13(10), CDS1, CDS2, CDS3
       COMPLEX*16 CD21(10,10), CD22(10,10), CD23(10,10)
       COMPLEX*16 CD31(10,10,10), CD32(10,10,10), CD33(10,10,10)
       COMPLEX*16 CD41(8,8,8,8), CD42(8,8,8,8)
       COMPLEX*16 CD51(5,5,5,5,5), CD52(5,5,5,5,5)
       COMPLEX*16 CD61(5,3,3,3,3,2), CD62(5,3,3,3,3,2)
       COMPLEX*8 CE11(10), CE12(10), CE13(10), CES1, CES2, CES3
       COMPLEX*8 CE21(10,10), CE22(10,10), CE23(10,10)
       COMPLEX*8 CE31(10,10,10), CE32(10,10,10), CE33(10,10,10)
       COMPLEX*8 CE41(8,8,8,8), CE42(8,8,8,8)
       COMPLEX*8 CE51(5,5,5,5,5), CE52(5,5,5,5,5)
       COMPLEX*8 CE61(5,3,3,3,3,2), CE62(5,3,3,3,3,2)
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
       INTEGER N, L
       PARAMETER (N = 1, L = 5)
       COMMON /CV5313K/ CD62, CD61, CD52, CD51, CD42, RR2, CD41, RR3, 
     X   CD33, CD32, CD31, CD23, CD22, CD21, CD13, CD12, CD11, CE62, 
     X   CE61, CE52, CE51, CE42, CE41, RR4, CE33, CE32, CE31, CE23, CE22
     X   , CE21, D62, D61, D52, D51, RR5, D42, D41, RR6, D33, D32, D31, 
     X   D23, D22, D21, E62, E61, E52, E51, E42, E41
       COMMON /CV5313K/ E33, E32, E31, E23, E22, RR7, E21, N62, N61, N52
     X   , N51, RR8, N42, N41, RR9, N33, N32, N31, N23, N22, N21, L62, 
     X   RR10, L61, L52, RR11, L51, L42, L41, RR12, L33, L32, RR13, L31,
     X    L23, L22, RR14, L21
       INTEGER II2, II1, I51, I41, I31, I21
       REAL RR1
       LOGICAL LL3, LL2, LL1
       REAL RR14 (150), RR13 (86), RR12 (86), RR11 (102), RR10 (230), 
     X   RR9 (86), RR8 (86), RR7 (86), RR6 (86), RR5 (102), RR4 (150), 
     X   RR3 (86), RR2 (86)

       CALL INITR (D11,D12,D13,DS1,DS2,DS3,D21,D22,D23,D31,D32,D33,D41,
     X   D42,D51,D52,D61,D62,E11,E12,E13,ES1,ES2,ES3,E21,E22,E23,E31,E32
     X   ,E33,E41,E42,E51,E52,E61,E62)
       CALL INITC (CD11,CD12,CD13,CDS1,CDS2,CDS3,CD21,CD22,CD23,CD31,
     X   CD32,CD33,CD41,CD42,CD51,CD52,CD61,CD62,CE11,CE12,CE13,CES1,
     X   CES2,CES3,CE21,CE22,CE23,CE31,CE32,CE33,CE41,CE42,CE51,CE52,
     X   CE61,CE62)
       CALL INITIL (N11,N12,N13,NS1,NS2,NS3,N21,N22,N23,N31,N32,N33,N41,
     X   N42,N51,N52,N61,N62,L11,L12,L13,LS1,LS2,LS3,L21,L22,L23,L31,L32
     X   ,L33,L41,L42,L51,L52,L61,L62)

       NS1 = N11(10)
       I5 = NS1 + 1
       DO I21=1,5
        CDS2 = CMPLX (0., FLOAT (I21))
        II1 = 4 - I21
        LL3 = 1 .GT. I21
        DO I31=I21+2,5
         LL2 = LL3 .OR. I31 .EQ. 4
         DO I41=1,5,1
          LS1 = I31 .EQ. I41
          LL1 = LL2
          DO I51=1,5
           IF (LL1 .OR. LS1) THEN
            LS1 = .TRUE.
            N51(I41,I51,I31,I21,1) = I51 + I31 + IMAG (CDS2) * N11(10)
           END IF
          END DO
          I5 = 6
         END DO
        END DO
        IF (II1 .GT. 0) I4 = 6
        N22(I21,1) = I5 - N11(10)
       END DO
       I3 = 7
       E11(1) = I3 + I4
       WRITE (6, *) E11, 2, 6, I3, I4, I5, LS1, N51, N22
       RR1 = 1 / 12.5

       DO I1=1,10
        CDS1 = CMPLX (SIN (DFLOAT (I1)), COS (DFLOAT (I1)))
        II2 = (I1 + 1) / 2
        DO I21=1,5
         N21(I21,I1) = I3 * 3.5
         DO I31=1,3
          NS2 = N31(I1,I21,I31) / (-1) ** MAX (N32(I21,I31,I1), 1)
          DO I41=1,5
           DO I51=1,5
            E51(I41,I51,I31,I21,II2) = REAL (CDS1) + IMAG (CDS1) * NS2
           END DO
          END DO
          E31(I1,I21,I31) = CDS1 * RR1
         END DO
         I3 = 4
        END DO
        N11(I1) = N21(6,I1) - 10
       END DO
       WRITE (6, *) N21, E51, N11, E31

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
       LOGICAL LL42, LL41, LL40, LL39, LL38, LL37, LL36, LL35, LL34, 
     X   LL33, LL32, LL31, LL30, LL29, LL28, LL27, LL26, LL25, LL24, 
     X   LL23, LL22, LL21, LL20, LL19, LL18, LL17, LL16, LL15, LL14, 
     X   LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3
       LOGICAL LL2, LL1

       DO I=1,6,5
        E11(I) = 0.
        E11(I+1) = 0.
        E11(I+2) = 0.
        E11(I+3) = 0.
        E11(I+4) = 0.
        E12(I) = 0.
        E12(I+1) = 0.
        E12(I+2) = 0.
        E12(I+3) = 0.
        E12(I+4) = 0.
        E13(I) = 0.
        E13(I+1) = 0.
        E13(I+2) = 0.
        E13(I+3) = 0.
        E13(I+4) = 0.
       END DO
       DO J=1,7,4

        DO I=1,6,5
         E21(I,J) = 0.
         E21(I+1,J) = 0.
         E21(I+2,J) = 0.
         E21(I+3,J) = 0.
         E21(I+4,J) = 0.
         E21(I,J+1) = 0.
         E21(I+1,J+1) = 0.
         E21(I+2,J+1) = 0.
         E21(I+3,J+1) = 0.
         E21(I+4,J+1) = 0.
         E21(I,J+2) = 0.
         E21(I+1,J+2) = 0.
         E21(I+2,J+2) = 0.
         E21(I+3,J+2) = 0.
         E21(I+4,J+2) = 0.
         E21(I,J+3) = 0.
         E21(I+1,J+3) = 0.
         E21(I+2,J+3) = 0.
         E21(I+3,J+3) = 0.
         E21(I+4,J+3) = 0.
         E22(I,J) = 0.
         E22(I+1,J) = 0.
         E22(I+2,J) = 0.
         E22(I+3,J) = 0.
         E22(I+4,J) = 0.
         E22(I,J+1) = 0.
         E22(I+1,J+1) = 0.
         E22(I+2,J+1) = 0.
         E22(I+3,J+1) = 0.
         E22(I+4,J+1) = 0.
         E22(I,J+2) = 0.
         E22(I+1,J+2) = 0.
         E22(I+2,J+2) = 0.
         E22(I+3,J+2) = 0.
         E22(I+4,J+2) = 0.
         E22(I,J+3) = 0.
         E22(I+1,J+3) = 0.
         E22(I+2,J+3) = 0.
         E22(I+3,J+3) = 0.
         E22(I+4,J+3) = 0.
         E23(I,J) = 0.
         E23(I+1,J) = 0.
         E23(I+2,J) = 0.
         E23(I+3,J) = 0.
         E23(I+4,J) = 0.
         E23(I,J+1) = 0.
         E23(I+1,J+1) = 0.
         E23(I+2,J+1) = 0.
         E23(I+3,J+1) = 0.
         E23(I+4,J+1) = 0.
         E23(I,J+2) = 0.
         E23(I+1,J+2) = 0.
         E23(I+2,J+2) = 0.
         E23(I+3,J+2) = 0.
         E23(I+4,J+2) = 0.
         E23(I,J+3) = 0.
         E23(I+1,J+3) = 0.
         E23(I+2,J+3) = 0.
         E23(I+3,J+3) = 0.
         E23(I+4,J+3) = 0.
        END DO
       END DO
       DO J=9,10,1

        DO I=1,6,5
         E21(I,J) = 0.
         E21(I+1,J) = 0.
         E21(I+2,J) = 0.
         E21(I+3,J) = 0.
         E21(I+4,J) = 0.
         E22(I,J) = 0.
         E22(I+1,J) = 0.
         E22(I+2,J) = 0.
         E22(I+3,J) = 0.
         E22(I+4,J) = 0.
         E23(I,J) = 0.
         E23(I+1,J) = 0.
         E23(I+2,J) = 0.
         E23(I+3,J) = 0.
         E23(I+4,J) = 0.
        END DO
       END DO
C$OMP PARALLEL SHARED (E31,E32,E33,E41,E42,E51,E52,E61,E62) PRIVATE (K,J
C$OMP& ,I,L,LL9,LL10,LL11,LL12,LL13,LL14,LL15,LL16,LL1,M,LL2)
C$OMP DO 
       DO K=1,10
        DO J=1,7,4

         DO I=1,6,5
          E31(I,J,K) = 0.
          E31(I+1,J,K) = 0.
          E31(I+2,J,K) = 0.
          E31(I+3,J,K) = 0.
          E31(I+4,J,K) = 0.
          E31(I,J+1,K) = 0.
          E31(I+1,J+1,K) = 0.
          E31(I+2,J+1,K) = 0.
          E31(I+3,J+1,K) = 0.
          E31(I+4,J+1,K) = 0.
          E31(I,J+2,K) = 0.
          E31(I+1,J+2,K) = 0.
          E31(I+2,J+2,K) = 0.
          E31(I+3,J+2,K) = 0.
          E31(I+4,J+2,K) = 0.
          E31(I,J+3,K) = 0.
          E31(I+1,J+3,K) = 0.
          E31(I+2,J+3,K) = 0.
          E31(I+3,J+3,K) = 0.
          E31(I+4,J+3,K) = 0.
          E32(I,J,K) = 0.
          E32(I+1,J,K) = 0.
          E32(I+2,J,K) = 0.
          E32(I+3,J,K) = 0.
          E32(I+4,J,K) = 0.
          E32(I,J+1,K) = 0.
          E32(I+1,J+1,K) = 0.
          E32(I+2,J+1,K) = 0.
          E32(I+3,J+1,K) = 0.
          E32(I+4,J+1,K) = 0.
          E32(I,J+2,K) = 0.
          E32(I+1,J+2,K) = 0.
          E32(I+2,J+2,K) = 0.
          E32(I+3,J+2,K) = 0.
          E32(I+4,J+2,K) = 0.
          E32(I,J+3,K) = 0.
          E32(I+1,J+3,K) = 0.
          E32(I+2,J+3,K) = 0.
          E32(I+3,J+3,K) = 0.
          E32(I+4,J+3,K) = 0.
          E33(I,J,K) = 0.
          E33(I+1,J,K) = 0.
          E33(I+2,J,K) = 0.
          E33(I+3,J,K) = 0.
          E33(I+4,J,K) = 0.
          E33(I,J+1,K) = 0.
          E33(I+1,J+1,K) = 0.
          E33(I+2,J+1,K) = 0.
          E33(I+3,J+1,K) = 0.
          E33(I+4,J+1,K) = 0.
          E33(I,J+2,K) = 0.
          E33(I+1,J+2,K) = 0.
          E33(I+2,J+2,K) = 0.
          E33(I+3,J+2,K) = 0.
          E33(I+4,J+2,K) = 0.
          E33(I,J+3,K) = 0.
          E33(I+1,J+3,K) = 0.
          E33(I+2,J+3,K) = 0.
          E33(I+3,J+3,K) = 0.
          E33(I+4,J+3,K) = 0.
         END DO
        END DO
        DO J=9,10,1

         DO I=1,6,5
          E31(I,J,K) = 0.
          E31(I+1,J,K) = 0.
          E31(I+2,J,K) = 0.
          E31(I+3,J,K) = 0.
          E31(I+4,J,K) = 0.
          E32(I,J,K) = 0.
          E32(I+1,J,K) = 0.
          E32(I+2,J,K) = 0.
          E32(I+3,J,K) = 0.
          E32(I+4,J,K) = 0.
          E33(I,J,K) = 0.
          E33(I+1,J,K) = 0.
          E33(I+2,J,K) = 0.
          E33(I+3,J,K) = 0.
          E33(I+4,J,K) = 0.
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,8
        DO K=1,5,4
         DO J=1,8
          E41(1,J,K,L) = 0.
          E41(2,J,K,L) = 0.
          E41(3,J,K,L) = 0.
          E41(4,J,K,L) = 0.
          E41(5,J,K,L) = 0.
          E41(6,J,K,L) = 0.
          E41(7,J,K,L) = 0.
          E41(8,J,K,L) = 0.
          E41(1,J,K+1,L) = 0.
          E41(2,J,K+1,L) = 0.
          E41(3,J,K+1,L) = 0.
          E41(4,J,K+1,L) = 0.
          E41(5,J,K+1,L) = 0.
          E41(6,J,K+1,L) = 0.
          E41(7,J,K+1,L) = 0.
          E41(8,J,K+1,L) = 0.
          E41(1,J,K+2,L) = 0.
          E41(2,J,K+2,L) = 0.
          E41(3,J,K+2,L) = 0.
          E41(4,J,K+2,L) = 0.
          E41(5,J,K+2,L) = 0.
          E41(6,J,K+2,L) = 0.
          E41(7,J,K+2,L) = 0.
          E41(8,J,K+2,L) = 0.
          E41(1,J,K+3,L) = 0.
          E41(2,J,K+3,L) = 0.
          E41(3,J,K+3,L) = 0.
          E41(4,J,K+3,L) = 0.
          E41(5,J,K+3,L) = 0.
          E41(6,J,K+3,L) = 0.
          E41(7,J,K+3,L) = 0.
          E41(8,J,K+3,L) = 0.
          E42(1,J,K,L) = 0.
          E42(2,J,K,L) = 0.
          E42(3,J,K,L) = 0.
          E42(4,J,K,L) = 0.
          E42(5,J,K,L) = 0.
          E42(6,J,K,L) = 0.
          E42(7,J,K,L) = 0.
          E42(8,J,K,L) = 0.
          E42(1,J,K+1,L) = 0.
          E42(2,J,K+1,L) = 0.
          E42(3,J,K+1,L) = 0.
          E42(4,J,K+1,L) = 0.
          E42(5,J,K+1,L) = 0.
          E42(6,J,K+1,L) = 0.
          E42(7,J,K+1,L) = 0.
          E42(8,J,K+1,L) = 0.
          E42(1,J,K+2,L) = 0.
          E42(2,J,K+2,L) = 0.
          E42(3,J,K+2,L) = 0.
          E42(4,J,K+2,L) = 0.
          E42(5,J,K+2,L) = 0.
          E42(6,J,K+2,L) = 0.
          E42(7,J,K+2,L) = 0.
          E42(8,J,K+2,L) = 0.
          E42(1,J,K+3,L) = 0.
          E42(2,J,K+3,L) = 0.
          E42(3,J,K+3,L) = 0.
          E42(4,J,K+3,L) = 0.
          E42(5,J,K+3,L) = 0.
          E42(6,J,K+3,L) = 0.
          E42(7,J,K+3,L) = 0.
          E42(8,J,K+3,L) = 0.
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J=1,8
        LL16 = J .LE. 5
        DO K=1,8
         LL14 = K .LE. 5
         LL15 = LL16
         DO L=1,8
          LL11 = L .LE. 5
          LL12 = LL14
          LL13 = LL15
          DO I=1,8
           LL1 = I .LE. 5 .AND. LL13 .AND. LL12 .AND. LL11
           IF (LL1) THEN
            LL9 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             E51(I,J,K,L,M) = 0.
             E52(I,J,K,L,M) = 0.
             IF (LL9 .AND. M .LE. 3) THEN
              E61(I,J,K,L,M,1) = 0.
              E61(I,J,K,L,M,2) = 0.
              E62(I,J,K,L,M,1) = 0.
              E62(I,J,K,L,M,2) = 0.
             END IF
            END DO
           END IF
           IF (.NOT.LL1) THEN
            LL10 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             LL2 = LL10 .AND. M .LE. 3
             IF (LL2) THEN
              E61(I,J,K,L,M,1) = 0.
              E61(I,J,K,L,M,2) = 0.
              E62(I,J,K,L,M,1) = 0.
              E62(I,J,K,L,M,2) = 0.
             END IF
            END DO
           END IF
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,6,5
        D11(I) = 0D0
        D11(I+1) = 0D0
        D11(I+2) = 0D0
        D11(I+3) = 0D0
        D11(I+4) = 0D0
        D12(I) = 0D0
        D12(I+1) = 0D0
        D12(I+2) = 0D0
        D12(I+3) = 0D0
        D12(I+4) = 0D0
        D13(I) = 0D0
        D13(I+1) = 0D0
        D13(I+2) = 0D0
        D13(I+3) = 0D0
        D13(I+4) = 0D0
       END DO
       DO J=1,7,4
        DO I=1,6,5
         D21(I,J) = 0D0
         D21(I+1,J) = 0D0
         D21(I+2,J) = 0D0
         D21(I+3,J) = 0D0
         D21(I+4,J) = 0D0
         D21(I,J+1) = 0D0
         D21(I+1,J+1) = 0D0
         D21(I+2,J+1) = 0D0
         D21(I+3,J+1) = 0D0
         D21(I+4,J+1) = 0D0
         D21(I,J+2) = 0D0
         D21(I+1,J+2) = 0D0
         D21(I+2,J+2) = 0D0
         D21(I+3,J+2) = 0D0
         D21(I+4,J+2) = 0D0
         D21(I,J+3) = 0D0
         D21(I+1,J+3) = 0D0
         D21(I+2,J+3) = 0D0
         D21(I+3,J+3) = 0D0
         D21(I+4,J+3) = 0D0
         D22(I,J) = 0D0
         D22(I+1,J) = 0D0
         D22(I+2,J) = 0D0
         D22(I+3,J) = 0D0
         D22(I+4,J) = 0D0
         D22(I,J+1) = 0D0
         D22(I+1,J+1) = 0D0
         D22(I+2,J+1) = 0D0
         D22(I+3,J+1) = 0D0
         D22(I+4,J+1) = 0D0
         D22(I,J+2) = 0D0
         D22(I+1,J+2) = 0D0
         D22(I+2,J+2) = 0D0
         D22(I+3,J+2) = 0D0
         D22(I+4,J+2) = 0D0
         D22(I,J+3) = 0D0
         D22(I+1,J+3) = 0D0
         D22(I+2,J+3) = 0D0
         D22(I+3,J+3) = 0D0
         D22(I+4,J+3) = 0D0
         D23(I,J) = 0D0
         D23(I+1,J) = 0D0
         D23(I+2,J) = 0D0
         D23(I+3,J) = 0D0
         D23(I+4,J) = 0D0
         D23(I,J+1) = 0D0
         D23(I+1,J+1) = 0D0
         D23(I+2,J+1) = 0D0
         D23(I+3,J+1) = 0D0
         D23(I+4,J+1) = 0D0
         D23(I,J+2) = 0D0
         D23(I+1,J+2) = 0D0
         D23(I+2,J+2) = 0D0
         D23(I+3,J+2) = 0D0
         D23(I+4,J+2) = 0D0
         D23(I,J+3) = 0D0
         D23(I+1,J+3) = 0D0
         D23(I+2,J+3) = 0D0
         D23(I+3,J+3) = 0D0
         D23(I+4,J+3) = 0D0
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         D21(I,J) = 0D0
         D21(I+1,J) = 0D0
         D21(I+2,J) = 0D0
         D21(I+3,J) = 0D0
         D21(I+4,J) = 0D0
         D22(I,J) = 0D0
         D22(I+1,J) = 0D0
         D22(I+2,J) = 0D0
         D22(I+3,J) = 0D0
         D22(I+4,J) = 0D0
         D23(I,J) = 0D0
         D23(I+1,J) = 0D0
         D23(I+2,J) = 0D0
         D23(I+3,J) = 0D0
         D23(I+4,J) = 0D0
        END DO
       END DO
C$OMP PARALLEL SHARED (D31,D32,D33,D41,D42,D51,D52,D61,D62) PRIVATE (K,J
C$OMP& ,I,L,LL17,LL18,LL19,LL20,LL21,LL22,LL23,LL24,LL3,M,LL4)
C$OMP DO 
       DO K=1,10
        DO J=1,7,4
         DO I=1,6,5
          D31(I,J,K) = 0D0
          D31(I+1,J,K) = 0D0
          D31(I+2,J,K) = 0D0
          D31(I+3,J,K) = 0D0
          D31(I+4,J,K) = 0D0
          D31(I,J+1,K) = 0D0
          D31(I+1,J+1,K) = 0D0
          D31(I+2,J+1,K) = 0D0
          D31(I+3,J+1,K) = 0D0
          D31(I+4,J+1,K) = 0D0
          D31(I,J+2,K) = 0D0
          D31(I+1,J+2,K) = 0D0
          D31(I+2,J+2,K) = 0D0
          D31(I+3,J+2,K) = 0D0
          D31(I+4,J+2,K) = 0D0
          D31(I,J+3,K) = 0D0
          D31(I+1,J+3,K) = 0D0
          D31(I+2,J+3,K) = 0D0
          D31(I+3,J+3,K) = 0D0
          D31(I+4,J+3,K) = 0D0
          D32(I,J,K) = 0D0
          D32(I+1,J,K) = 0D0
          D32(I+2,J,K) = 0D0
          D32(I+3,J,K) = 0D0
          D32(I+4,J,K) = 0D0
          D32(I,J+1,K) = 0D0
          D32(I+1,J+1,K) = 0D0
          D32(I+2,J+1,K) = 0D0
          D32(I+3,J+1,K) = 0D0
          D32(I+4,J+1,K) = 0D0
          D32(I,J+2,K) = 0D0
          D32(I+1,J+2,K) = 0D0
          D32(I+2,J+2,K) = 0D0
          D32(I+3,J+2,K) = 0D0
          D32(I+4,J+2,K) = 0D0
          D32(I,J+3,K) = 0D0
          D32(I+1,J+3,K) = 0D0
          D32(I+2,J+3,K) = 0D0
          D32(I+3,J+3,K) = 0D0
          D32(I+4,J+3,K) = 0D0
          D33(I,J,K) = 0D0
          D33(I+1,J,K) = 0D0
          D33(I+2,J,K) = 0D0
          D33(I+3,J,K) = 0D0
          D33(I+4,J,K) = 0D0
          D33(I,J+1,K) = 0D0
          D33(I+1,J+1,K) = 0D0
          D33(I+2,J+1,K) = 0D0
          D33(I+3,J+1,K) = 0D0
          D33(I+4,J+1,K) = 0D0
          D33(I,J+2,K) = 0D0
          D33(I+1,J+2,K) = 0D0
          D33(I+2,J+2,K) = 0D0
          D33(I+3,J+2,K) = 0D0
          D33(I+4,J+2,K) = 0D0
          D33(I,J+3,K) = 0D0
          D33(I+1,J+3,K) = 0D0
          D33(I+2,J+3,K) = 0D0
          D33(I+3,J+3,K) = 0D0
          D33(I+4,J+3,K) = 0D0
         END DO
        END DO
        DO J=9,10,1
         DO I=1,6,5
          D31(I,J,K) = 0D0
          D31(I+1,J,K) = 0D0
          D31(I+2,J,K) = 0D0
          D31(I+3,J,K) = 0D0
          D31(I+4,J,K) = 0D0
          D32(I,J,K) = 0D0
          D32(I+1,J,K) = 0D0
          D32(I+2,J,K) = 0D0
          D32(I+3,J,K) = 0D0
          D32(I+4,J,K) = 0D0
          D33(I,J,K) = 0D0
          D33(I+1,J,K) = 0D0
          D33(I+2,J,K) = 0D0
          D33(I+3,J,K) = 0D0
          D33(I+4,J,K) = 0D0
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,8
        DO K=1,5,4
         DO J=1,8
          D41(1,J,K,L) = 0D0
          D41(2,J,K,L) = 0D0
          D41(3,J,K,L) = 0D0
          D41(4,J,K,L) = 0D0
          D41(5,J,K,L) = 0D0
          D41(6,J,K,L) = 0D0
          D41(7,J,K,L) = 0D0
          D41(8,J,K,L) = 0D0
          D41(1,J,K+1,L) = 0D0
          D41(2,J,K+1,L) = 0D0
          D41(3,J,K+1,L) = 0D0
          D41(4,J,K+1,L) = 0D0
          D41(5,J,K+1,L) = 0D0
          D41(6,J,K+1,L) = 0D0
          D41(7,J,K+1,L) = 0D0
          D41(8,J,K+1,L) = 0D0
          D41(1,J,K+2,L) = 0D0
          D41(2,J,K+2,L) = 0D0
          D41(3,J,K+2,L) = 0D0
          D41(4,J,K+2,L) = 0D0
          D41(5,J,K+2,L) = 0D0
          D41(6,J,K+2,L) = 0D0
          D41(7,J,K+2,L) = 0D0
          D41(8,J,K+2,L) = 0D0
          D41(1,J,K+3,L) = 0D0
          D41(2,J,K+3,L) = 0D0
          D41(3,J,K+3,L) = 0D0
          D41(4,J,K+3,L) = 0D0
          D41(5,J,K+3,L) = 0D0
          D41(6,J,K+3,L) = 0D0
          D41(7,J,K+3,L) = 0D0
          D41(8,J,K+3,L) = 0D0
          D42(1,J,K,L) = 0D0
          D42(2,J,K,L) = 0D0
          D42(3,J,K,L) = 0D0
          D42(4,J,K,L) = 0D0
          D42(5,J,K,L) = 0D0
          D42(6,J,K,L) = 0D0
          D42(7,J,K,L) = 0D0
          D42(8,J,K,L) = 0D0
          D42(1,J,K+1,L) = 0D0
          D42(2,J,K+1,L) = 0D0
          D42(3,J,K+1,L) = 0D0
          D42(4,J,K+1,L) = 0D0
          D42(5,J,K+1,L) = 0D0
          D42(6,J,K+1,L) = 0D0
          D42(7,J,K+1,L) = 0D0
          D42(8,J,K+1,L) = 0D0
          D42(1,J,K+2,L) = 0D0
          D42(2,J,K+2,L) = 0D0
          D42(3,J,K+2,L) = 0D0
          D42(4,J,K+2,L) = 0D0
          D42(5,J,K+2,L) = 0D0
          D42(6,J,K+2,L) = 0D0
          D42(7,J,K+2,L) = 0D0
          D42(8,J,K+2,L) = 0D0
          D42(1,J,K+3,L) = 0D0
          D42(2,J,K+3,L) = 0D0
          D42(3,J,K+3,L) = 0D0
          D42(4,J,K+3,L) = 0D0
          D42(5,J,K+3,L) = 0D0
          D42(6,J,K+3,L) = 0D0
          D42(7,J,K+3,L) = 0D0
          D42(8,J,K+3,L) = 0D0
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J=1,8
        LL24 = J .LE. 5
        DO K=1,8
         LL22 = K .LE. 5
         LL23 = LL24
         DO L=1,8
          LL19 = L .LE. 5
          LL20 = LL22
          LL21 = LL23
          DO I=1,8
           LL3 = I .LE. 5 .AND. LL21 .AND. LL20 .AND. LL19
           IF (LL3) THEN
            LL17 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             D51(I,J,K,L,M) = 0D0
             D52(I,J,K,L,M) = 0D0
             IF (LL17 .AND. M .LE. 3) THEN
              D61(I,J,K,L,M,1) = 0D0
              D61(I,J,K,L,M,2) = 0D0
              D62(I,J,K,L,M,1) = 0D0
              D62(I,J,K,L,M,2) = 0D0
             END IF
            END DO
           END IF
           IF (.NOT.LL3) THEN
            LL18 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             LL4 = LL18 .AND. M .LE. 3
             IF (LL4) THEN
              D61(I,J,K,L,M,1) = 0D0
              D61(I,J,K,L,M,2) = 0D0
              D62(I,J,K,L,M,1) = 0D0
              D62(I,J,K,L,M,2) = 0D0
             END IF
            END DO
           END IF
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
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
C$OMP PARALLEL SHARED (E41,E42,E51,E52,E61,E62,E33,ES2) PRIVATE (RR3,
C$OMP& LL25,LL26,LL27,RR4,LL28,LL29,LL30,LL31,LL32,LL33,I3,I2,I1,I4,I5,
C$OMP& LL5,LL6)
C$OMP DO LASTPRIVATE (ES2)
       DO I3=1,10
        LL33 = I3 .LE. 8
        DO I2=2,10
         LL31 = LL33
         LL32 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL32 .AND. LL31) THEN
           LL27 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            ES2 = I3 + I4
            E41(I1,I4,I3,I2) = ES2
            E42(I1,I4+4,I2,I3) = ES2 * RR1
            IF (LL27 .AND. I4 .LE. 5) THEN
             RR3 = ES2 * RR2
             LL25 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              E51(I1,I2,I3,I4,I5) = ES2
              E52(I1,I2,I3,I4,I5) = RR3
              IF (LL25 .AND. I5 .LE. 3) THEN
               E61(I1,I2,I3,I4,I5,1) = 0.5
               E61(I1,I2,I3,I4,I5,2) = 0.5
               E62(I1,I2,I3,I4,I5,1) = 100.5
               E62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL26 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL5 = LL26 .AND. I5 .LE. 3
              IF (LL5) THEN
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
           LL30 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            ES2 = I3 + I4
            IF (LL30 .AND. I4 .LE. 5) THEN
             RR4 = ES2 * RR2
             LL28 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              E51(I1,I2,I3,I4,I5) = ES2
              E52(I1,I2,I3,I4,I5) = RR4
              IF (LL28 .AND. I5 .LE. 3) THEN
               E61(I1,I2,I3,I4,I5,1) = 0.5
               E61(I1,I2,I3,I4,I5,2) = 0.5
               E62(I1,I2,I3,I4,I5,1) = 100.5
               E62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL29 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL6 = LL29 .AND. I5 .LE. 3
              IF (LL6) THEN
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
C$OMP& LL34,LL35,LL36,DD4,LL37,LL38,LL39,LL40,LL41,LL42,I3,I2,I1,I4,I5,
C$OMP& LL7,LL8)
C$OMP DO LASTPRIVATE (DS2)
       DO I3=1,10
        LL42 = I3 .LE. 8
        DO I2=2,10
         LL40 = LL42
         LL41 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL41 .AND. LL40) THEN
           LL36 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            DS2 = I3 + I4
            D41(I1,I4,I3,I2) = DS2
            D42(I1,I4+4,I2,I3) = DS2 * DD1
            IF (LL36 .AND. I4 .LE. 5) THEN
             DD3 = DS2 * DD2
             LL34 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              D51(I1,I2,I3,I4,I5) = DS2
              D52(I1,I2,I3,I4,I5) = DD3
              IF (LL34 .AND. I5 .LE. 3) THEN
               D61(I1,I2,I3,I4,I5,1) = 0.5
               D61(I1,I2,I3,I4,I5,2) = 0.5
               D62(I1,I2,I3,I4,I5,1) = 100.5
               D62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL35 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL7 = LL35 .AND. I5 .LE. 3
              IF (LL7) THEN
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
           LL39 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            DS2 = I3 + I4
            IF (LL39 .AND. I4 .LE. 5) THEN
             DD4 = DS2 * DD2
             LL37 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              D51(I1,I2,I3,I4,I5) = DS2
              D52(I1,I2,I3,I4,I5) = DD4
              IF (LL37 .AND. I5 .LE. 3) THEN
               D61(I1,I2,I3,I4,I5,1) = 0.5
               D61(I1,I2,I3,I4,I5,2) = 0.5
               D62(I1,I2,I3,I4,I5,1) = 100.5
               D62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL38 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL8 = LL38 .AND. I5 .LE. 3
              IF (LL8) THEN
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
    
      SUBROUTINE INITC ( CD11, CD12, CD13, CDS1, CDS2, CDS3, CD21, CD22
     X  , CD23, CD31, CD32, CD33, CD41, CD42, CD51, CD52, CD61, CD62, 
     X  CE11, CE12, CE13, CES1, CES2, CES3, CE21, CE22, CE23, CE31, CE32
     X  , CE33, CE41, CE42, CE51, CE52, CE61, CE62 )
       COMPLEX*16 CD11(10), CD12(10), CD13(10), CDS1, CDS2, CDS3
       COMPLEX*16 CD21(10,10), CD22(10,10), CD23(10,10)
       COMPLEX*16 CD31(10,10,10), CD32(10,10,10), CD33(10,10,10)
       COMPLEX*16 CD41(8,8,8,8), CD42(8,8,8,8)
       COMPLEX*16 CD51(5,5,5,5,5), CD52(5,5,5,5,5)
       COMPLEX*16 CD61(5,3,3,3,3,2), CD62(5,3,3,3,3,2)
       COMPLEX*8 CE11(10), CE12(10), CE13(10), CES1, CES2, CES3
       COMPLEX*8 CE21(10,10), CE22(10,10), CE23(10,10)
       COMPLEX*8 CE31(10,10,10), CE32(10,10,10), CE33(10,10,10)
       COMPLEX*8 CE41(8,8,8,8), CE42(8,8,8,8)
       COMPLEX*8 CE51(5,5,5,5,5), CE52(5,5,5,5,5)
       COMPLEX*8 CE61(5,3,3,3,3,2), CE62(5,3,3,3,3,2)
       COMPLEX CC1, CC2
       DOUBLE COMPLEX DC1, DC2
       PARAMETER (CC1 = (1., 0.) / 4., CC2 = (1., 0.) / 2., DC1 = (1
     X   D0, 0D0) / 4., DC2 = (1D0, 0D0) / 2.)
       INTEGER II27, II26, II25, II24, II23, II22, II21, II20, II19, 
     X   II18, II17, II16, II15, II14, II13, II12, II11, II10, II9, II8
     X   , II7, II6, II5, II4, II3, II2, II1
       LOGICAL LL42, LL41, LL40, LL39, LL38, LL37, LL36, LL35, LL34, 
     X   LL33, LL32, LL31, LL30, LL29, LL28, LL27, LL26, LL25, LL24, 
     X   LL23, LL22, LL21, LL20, LL19, LL18, LL17, LL16, LL15, LL14, 
     X   LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3
       LOGICAL LL2, LL1
       COMPLEX CC8, CC7, CC6, CC5, CC4, CC3
       COMPLEX*16 DC4, DC3

       DO I=1,6,5
        CE11(I) = (0., 0.)
        CE11(I+1) = (0., 0.)
        CE11(I+2) = (0., 0.)
        CE11(I+3) = (0., 0.)
        CE11(I+4) = (0., 0.)
        CE12(I) = (0., 0.)
        CE12(I+1) = (0., 0.)
        CE12(I+2) = (0., 0.)
        CE12(I+3) = (0., 0.)
        CE12(I+4) = (0., 0.)
        CE13(I) = (0., 0.)
        CE13(I+1) = (0., 0.)
        CE13(I+2) = (0., 0.)
        CE13(I+3) = (0., 0.)
        CE13(I+4) = (0., 0.)
       END DO
       DO J=1,7,4

        DO I=1,6,5
         CE21(I,J) = (0., 0.)
         CE21(I+1,J) = (0., 0.)
         CE21(I+2,J) = (0., 0.)
         CE21(I+3,J) = (0., 0.)
         CE21(I+4,J) = (0., 0.)
         CE21(I,J+1) = (0., 0.)
         CE21(I+1,J+1) = (0., 0.)
         CE21(I+2,J+1) = (0., 0.)
         CE21(I+3,J+1) = (0., 0.)
         CE21(I+4,J+1) = (0., 0.)
         CE21(I,J+2) = (0., 0.)
         CE21(I+1,J+2) = (0., 0.)
         CE21(I+2,J+2) = (0., 0.)
         CE21(I+3,J+2) = (0., 0.)
         CE21(I+4,J+2) = (0., 0.)
         CE21(I,J+3) = (0., 0.)
         CE21(I+1,J+3) = (0., 0.)
         CE21(I+2,J+3) = (0., 0.)
         CE21(I+3,J+3) = (0., 0.)
         CE21(I+4,J+3) = (0., 0.)
         CE22(I,J) = (0., 0.)
         CE22(I+1,J) = (0., 0.)
         CE22(I+2,J) = (0., 0.)
         CE22(I+3,J) = (0., 0.)
         CE22(I+4,J) = (0., 0.)
         CE22(I,J+1) = (0., 0.)
         CE22(I+1,J+1) = (0., 0.)
         CE22(I+2,J+1) = (0., 0.)
         CE22(I+3,J+1) = (0., 0.)
         CE22(I+4,J+1) = (0., 0.)
         CE22(I,J+2) = (0., 0.)
         CE22(I+1,J+2) = (0., 0.)
         CE22(I+2,J+2) = (0., 0.)
         CE22(I+3,J+2) = (0., 0.)
         CE22(I+4,J+2) = (0., 0.)
         CE22(I,J+3) = (0., 0.)
         CE22(I+1,J+3) = (0., 0.)
         CE22(I+2,J+3) = (0., 0.)
         CE22(I+3,J+3) = (0., 0.)
         CE22(I+4,J+3) = (0., 0.)
         CE23(I,J) = (0., 0.)
         CE23(I+1,J) = (0., 0.)
         CE23(I+2,J) = (0., 0.)
         CE23(I+3,J) = (0., 0.)
         CE23(I+4,J) = (0., 0.)
         CE23(I,J+1) = (0., 0.)
         CE23(I+1,J+1) = (0., 0.)
         CE23(I+2,J+1) = (0., 0.)
         CE23(I+3,J+1) = (0., 0.)
         CE23(I+4,J+1) = (0., 0.)
         CE23(I,J+2) = (0., 0.)
         CE23(I+1,J+2) = (0., 0.)
         CE23(I+2,J+2) = (0., 0.)
         CE23(I+3,J+2) = (0., 0.)
         CE23(I+4,J+2) = (0., 0.)
         CE23(I,J+3) = (0., 0.)
         CE23(I+1,J+3) = (0., 0.)
         CE23(I+2,J+3) = (0., 0.)
         CE23(I+3,J+3) = (0., 0.)
         CE23(I+4,J+3) = (0., 0.)
        END DO
       END DO
       DO J=9,10,1

        DO I=1,6,5
         CE21(I,J) = (0., 0.)
         CE21(I+1,J) = (0., 0.)
         CE21(I+2,J) = (0., 0.)
         CE21(I+3,J) = (0., 0.)
         CE21(I+4,J) = (0., 0.)
         CE22(I,J) = (0., 0.)
         CE22(I+1,J) = (0., 0.)
         CE22(I+2,J) = (0., 0.)
         CE22(I+3,J) = (0., 0.)
         CE22(I+4,J) = (0., 0.)
         CE23(I,J) = (0., 0.)
         CE23(I+1,J) = (0., 0.)
         CE23(I+2,J) = (0., 0.)
         CE23(I+3,J) = (0., 0.)
         CE23(I+4,J) = (0., 0.)
        END DO
       END DO
C$OMP PARALLEL SHARED (CE31,CE32,CE33,CE41,CE42,CE51,CE52,CE61,CE62) 
C$OMP& PRIVATE (K,J,I,L,LL9,LL10,LL11,LL12,LL13,LL14,LL15,LL16,LL1,M,LL2
C$OMP& )
C$OMP DO 
       DO K=1,10
        DO J=1,7,4

         DO I=1,6,5
          CE31(I,J,K) = (0., 0.)
          CE31(I+1,J,K) = (0., 0.)
          CE31(I+2,J,K) = (0., 0.)
          CE31(I+3,J,K) = (0., 0.)
          CE31(I+4,J,K) = (0., 0.)
          CE31(I,J+1,K) = (0., 0.)
          CE31(I+1,J+1,K) = (0., 0.)
          CE31(I+2,J+1,K) = (0., 0.)
          CE31(I+3,J+1,K) = (0., 0.)
          CE31(I+4,J+1,K) = (0., 0.)
          CE31(I,J+2,K) = (0., 0.)
          CE31(I+1,J+2,K) = (0., 0.)
          CE31(I+2,J+2,K) = (0., 0.)
          CE31(I+3,J+2,K) = (0., 0.)
          CE31(I+4,J+2,K) = (0., 0.)
          CE31(I,J+3,K) = (0., 0.)
          CE31(I+1,J+3,K) = (0., 0.)
          CE31(I+2,J+3,K) = (0., 0.)
          CE31(I+3,J+3,K) = (0., 0.)
          CE31(I+4,J+3,K) = (0., 0.)
          CE32(I,J,K) = (0., 0.)
          CE32(I+1,J,K) = (0., 0.)
          CE32(I+2,J,K) = (0., 0.)
          CE32(I+3,J,K) = (0., 0.)
          CE32(I+4,J,K) = (0., 0.)
          CE32(I,J+1,K) = (0., 0.)
          CE32(I+1,J+1,K) = (0., 0.)
          CE32(I+2,J+1,K) = (0., 0.)
          CE32(I+3,J+1,K) = (0., 0.)
          CE32(I+4,J+1,K) = (0., 0.)
          CE32(I,J+2,K) = (0., 0.)
          CE32(I+1,J+2,K) = (0., 0.)
          CE32(I+2,J+2,K) = (0., 0.)
          CE32(I+3,J+2,K) = (0., 0.)
          CE32(I+4,J+2,K) = (0., 0.)
          CE32(I,J+3,K) = (0., 0.)
          CE32(I+1,J+3,K) = (0., 0.)
          CE32(I+2,J+3,K) = (0., 0.)
          CE32(I+3,J+3,K) = (0., 0.)
          CE32(I+4,J+3,K) = (0., 0.)
          CE33(I,J,K) = (0., 0.)
          CE33(I+1,J,K) = (0., 0.)
          CE33(I+2,J,K) = (0., 0.)
          CE33(I+3,J,K) = (0., 0.)
          CE33(I+4,J,K) = (0., 0.)
          CE33(I,J+1,K) = (0., 0.)
          CE33(I+1,J+1,K) = (0., 0.)
          CE33(I+2,J+1,K) = (0., 0.)
          CE33(I+3,J+1,K) = (0., 0.)
          CE33(I+4,J+1,K) = (0., 0.)
          CE33(I,J+2,K) = (0., 0.)
          CE33(I+1,J+2,K) = (0., 0.)
          CE33(I+2,J+2,K) = (0., 0.)
          CE33(I+3,J+2,K) = (0., 0.)
          CE33(I+4,J+2,K) = (0., 0.)
          CE33(I,J+3,K) = (0., 0.)
          CE33(I+1,J+3,K) = (0., 0.)
          CE33(I+2,J+3,K) = (0., 0.)
          CE33(I+3,J+3,K) = (0., 0.)
          CE33(I+4,J+3,K) = (0., 0.)
         END DO
        END DO
        DO J=9,10,1

         DO I=1,6,5
          CE31(I,J,K) = (0., 0.)
          CE31(I+1,J,K) = (0., 0.)
          CE31(I+2,J,K) = (0., 0.)
          CE31(I+3,J,K) = (0., 0.)
          CE31(I+4,J,K) = (0., 0.)
          CE32(I,J,K) = (0., 0.)
          CE32(I+1,J,K) = (0., 0.)
          CE32(I+2,J,K) = (0., 0.)
          CE32(I+3,J,K) = (0., 0.)
          CE32(I+4,J,K) = (0., 0.)
          CE33(I,J,K) = (0., 0.)
          CE33(I+1,J,K) = (0., 0.)
          CE33(I+2,J,K) = (0., 0.)
          CE33(I+3,J,K) = (0., 0.)
          CE33(I+4,J,K) = (0., 0.)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,8
        DO K=1,5,4
         DO J=1,8
          CE41(1,J,K,L) = (0., 0.)
          CE41(2,J,K,L) = (0., 0.)
          CE41(3,J,K,L) = (0., 0.)
          CE41(4,J,K,L) = (0., 0.)
          CE41(5,J,K,L) = (0., 0.)
          CE41(6,J,K,L) = (0., 0.)
          CE41(7,J,K,L) = (0., 0.)
          CE41(8,J,K,L) = (0., 0.)
          CE41(1,J,K+1,L) = (0., 0.)
          CE41(2,J,K+1,L) = (0., 0.)
          CE41(3,J,K+1,L) = (0., 0.)
          CE41(4,J,K+1,L) = (0., 0.)
          CE41(5,J,K+1,L) = (0., 0.)
          CE41(6,J,K+1,L) = (0., 0.)
          CE41(7,J,K+1,L) = (0., 0.)
          CE41(8,J,K+1,L) = (0., 0.)
          CE41(1,J,K+2,L) = (0., 0.)
          CE41(2,J,K+2,L) = (0., 0.)
          CE41(3,J,K+2,L) = (0., 0.)
          CE41(4,J,K+2,L) = (0., 0.)
          CE41(5,J,K+2,L) = (0., 0.)
          CE41(6,J,K+2,L) = (0., 0.)
          CE41(7,J,K+2,L) = (0., 0.)
          CE41(8,J,K+2,L) = (0., 0.)
          CE41(1,J,K+3,L) = (0., 0.)
          CE41(2,J,K+3,L) = (0., 0.)
          CE41(3,J,K+3,L) = (0., 0.)
          CE41(4,J,K+3,L) = (0., 0.)
          CE41(5,J,K+3,L) = (0., 0.)
          CE41(6,J,K+3,L) = (0., 0.)
          CE41(7,J,K+3,L) = (0., 0.)
          CE41(8,J,K+3,L) = (0., 0.)
          CE42(1,J,K,L) = (0., 0.)
          CE42(2,J,K,L) = (0., 0.)
          CE42(3,J,K,L) = (0., 0.)
          CE42(4,J,K,L) = (0., 0.)
          CE42(5,J,K,L) = (0., 0.)
          CE42(6,J,K,L) = (0., 0.)
          CE42(7,J,K,L) = (0., 0.)
          CE42(8,J,K,L) = (0., 0.)
          CE42(1,J,K+1,L) = (0., 0.)
          CE42(2,J,K+1,L) = (0., 0.)
          CE42(3,J,K+1,L) = (0., 0.)
          CE42(4,J,K+1,L) = (0., 0.)
          CE42(5,J,K+1,L) = (0., 0.)
          CE42(6,J,K+1,L) = (0., 0.)
          CE42(7,J,K+1,L) = (0., 0.)
          CE42(8,J,K+1,L) = (0., 0.)
          CE42(1,J,K+2,L) = (0., 0.)
          CE42(2,J,K+2,L) = (0., 0.)
          CE42(3,J,K+2,L) = (0., 0.)
          CE42(4,J,K+2,L) = (0., 0.)
          CE42(5,J,K+2,L) = (0., 0.)
          CE42(6,J,K+2,L) = (0., 0.)
          CE42(7,J,K+2,L) = (0., 0.)
          CE42(8,J,K+2,L) = (0., 0.)
          CE42(1,J,K+3,L) = (0., 0.)
          CE42(2,J,K+3,L) = (0., 0.)
          CE42(3,J,K+3,L) = (0., 0.)
          CE42(4,J,K+3,L) = (0., 0.)
          CE42(5,J,K+3,L) = (0., 0.)
          CE42(6,J,K+3,L) = (0., 0.)
          CE42(7,J,K+3,L) = (0., 0.)
          CE42(8,J,K+3,L) = (0., 0.)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J=1,8
        LL16 = J .LE. 5
        DO K=1,8
         LL14 = K .LE. 5
         LL15 = LL16
         DO L=1,8
          LL11 = L .LE. 5
          LL12 = LL14
          LL13 = LL15
          DO I=1,8
           LL1 = I .LE. 5 .AND. LL13 .AND. LL12 .AND. LL11
           IF (LL1) THEN
            LL9 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             CE51(I,J,K,L,M) = (0., 0.)
             CE52(I,J,K,L,M) = (0., 0.)
             IF (LL9 .AND. M .LE. 3) THEN
              CE61(I,J,K,L,M,1) = (0., 0.)
              CE61(I,J,K,L,M,2) = (0., 0.)
              CE62(I,J,K,L,M,1) = (0., 0.)
              CE62(I,J,K,L,M,2) = (0., 0.)
             END IF
            END DO
           END IF
           IF (.NOT.LL1) THEN
            LL10 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             LL2 = LL10 .AND. M .LE. 3
             IF (LL2) THEN
              CE61(I,J,K,L,M,1) = (0., 0.)
              CE61(I,J,K,L,M,2) = (0., 0.)
              CE62(I,J,K,L,M,1) = (0., 0.)
              CE62(I,J,K,L,M,2) = (0., 0.)
             END IF
            END DO
           END IF
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,6,5
        CD11(I) = 0
        CD11(I+1) = 0
        CD11(I+2) = 0
        CD11(I+3) = 0
        CD11(I+4) = 0
        CD12(I) = 0
        CD12(I+1) = 0
        CD12(I+2) = 0
        CD12(I+3) = 0
        CD12(I+4) = 0
        CD13(I) = 0
        CD13(I+1) = 0
        CD13(I+2) = 0
        CD13(I+3) = 0
        CD13(I+4) = 0
       END DO
       DO J=1,9,2
        DO I=1,6,5
         CD21(I,J) = 0
         CD21(I+1,J) = 0
         CD21(I+2,J) = 0
         CD21(I+3,J) = 0
         CD21(I+4,J) = 0
         CD21(I,J+1) = 0
         CD21(I+1,J+1) = 0
         CD21(I+2,J+1) = 0
         CD21(I+3,J+1) = 0
         CD21(I+4,J+1) = 0
         CD22(I,J) = 0
         CD22(I+1,J) = 0
         CD22(I+2,J) = 0
         CD22(I+3,J) = 0
         CD22(I+4,J) = 0
         CD22(I,J+1) = 0
         CD22(I+1,J+1) = 0
         CD22(I+2,J+1) = 0
         CD22(I+3,J+1) = 0
         CD22(I+4,J+1) = 0
         CD23(I,J) = 0
         CD23(I+1,J) = 0
         CD23(I+2,J) = 0
         CD23(I+3,J) = 0
         CD23(I+4,J) = 0
         CD23(I,J+1) = 0
         CD23(I+1,J+1) = 0
         CD23(I+2,J+1) = 0
         CD23(I+3,J+1) = 0
         CD23(I+4,J+1) = 0
        END DO
       END DO
C$OMP PARALLEL SHARED (CD31,CD32,CD33,CD41,CD42,CD51,CD52,CD61,CD62) 
C$OMP& PRIVATE (K,J,I,L,LL17,LL18,LL19,LL20,LL21,LL22,LL23,LL24,LL3,M,
C$OMP& LL4)
C$OMP DO 
       DO K=1,10
        DO J=1,9,2
         DO I=1,6,5
          CD31(I,J,K) = 0
          CD31(I+1,J,K) = 0
          CD31(I+2,J,K) = 0
          CD31(I+3,J,K) = 0
          CD31(I+4,J,K) = 0
          CD31(I,J+1,K) = 0
          CD31(I+1,J+1,K) = 0
          CD31(I+2,J+1,K) = 0
          CD31(I+3,J+1,K) = 0
          CD31(I+4,J+1,K) = 0
          CD32(I,J,K) = 0
          CD32(I+1,J,K) = 0
          CD32(I+2,J,K) = 0
          CD32(I+3,J,K) = 0
          CD32(I+4,J,K) = 0
          CD32(I,J+1,K) = 0
          CD32(I+1,J+1,K) = 0
          CD32(I+2,J+1,K) = 0
          CD32(I+3,J+1,K) = 0
          CD32(I+4,J+1,K) = 0
          CD33(I,J,K) = 0
          CD33(I+1,J,K) = 0
          CD33(I+2,J,K) = 0
          CD33(I+3,J,K) = 0
          CD33(I+4,J,K) = 0
          CD33(I,J+1,K) = 0
          CD33(I+1,J+1,K) = 0
          CD33(I+2,J+1,K) = 0
          CD33(I+3,J+1,K) = 0
          CD33(I+4,J+1,K) = 0
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,8
        DO K=1,6,3
         DO J=1,8
          CD41(1,J,K,L) = 0
          CD41(2,J,K,L) = 0
          CD41(3,J,K,L) = 0
          CD41(4,J,K,L) = 0
          CD41(5,J,K,L) = 0
          CD41(6,J,K,L) = 0
          CD41(7,J,K,L) = 0
          CD41(8,J,K,L) = 0
          CD41(1,J,K+1,L) = 0
          CD41(2,J,K+1,L) = 0
          CD41(3,J,K+1,L) = 0
          CD41(4,J,K+1,L) = 0
          CD41(5,J,K+1,L) = 0
          CD41(6,J,K+1,L) = 0
          CD41(7,J,K+1,L) = 0
          CD41(8,J,K+1,L) = 0
          CD41(1,J,K+2,L) = 0
          CD41(2,J,K+2,L) = 0
          CD41(3,J,K+2,L) = 0
          CD41(4,J,K+2,L) = 0
          CD41(5,J,K+2,L) = 0
          CD41(6,J,K+2,L) = 0
          CD41(7,J,K+2,L) = 0
          CD41(8,J,K+2,L) = 0
          CD42(1,J,K,L) = 0
          CD42(2,J,K,L) = 0
          CD42(3,J,K,L) = 0
          CD42(4,J,K,L) = 0
          CD42(5,J,K,L) = 0
          CD42(6,J,K,L) = 0
          CD42(7,J,K,L) = 0
          CD42(8,J,K,L) = 0
          CD42(1,J,K+1,L) = 0
          CD42(2,J,K+1,L) = 0
          CD42(3,J,K+1,L) = 0
          CD42(4,J,K+1,L) = 0
          CD42(5,J,K+1,L) = 0
          CD42(6,J,K+1,L) = 0
          CD42(7,J,K+1,L) = 0
          CD42(8,J,K+1,L) = 0
          CD42(1,J,K+2,L) = 0
          CD42(2,J,K+2,L) = 0
          CD42(3,J,K+2,L) = 0
          CD42(4,J,K+2,L) = 0
          CD42(5,J,K+2,L) = 0
          CD42(6,J,K+2,L) = 0
          CD42(7,J,K+2,L) = 0
          CD42(8,J,K+2,L) = 0
         END DO
        END DO
        DO K=7,8,1
         DO J=1,8
          CD41(1,J,K,L) = 0
          CD41(2,J,K,L) = 0
          CD41(3,J,K,L) = 0
          CD41(4,J,K,L) = 0
          CD41(5,J,K,L) = 0
          CD41(6,J,K,L) = 0
          CD41(7,J,K,L) = 0
          CD41(8,J,K,L) = 0
          CD42(1,J,K,L) = 0
          CD42(2,J,K,L) = 0
          CD42(3,J,K,L) = 0
          CD42(4,J,K,L) = 0
          CD42(5,J,K,L) = 0
          CD42(6,J,K,L) = 0
          CD42(7,J,K,L) = 0
          CD42(8,J,K,L) = 0
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J=1,8
        LL24 = J .LE. 5
        DO K=1,8
         LL22 = K .LE. 5
         LL23 = LL24
         DO L=1,8
          LL19 = L .LE. 5
          LL20 = LL22
          LL21 = LL23
          DO I=1,8
           LL3 = I .LE. 5 .AND. LL21 .AND. LL20 .AND. LL19
           IF (LL3) THEN
            LL17 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             CD51(I,J,K,L,M) = 0
             CD52(I,J,K,L,M) = 0
             IF (LL17 .AND. M .LE. 3) THEN
              CD61(I,J,K,L,M,1) = 0
              CD61(I,J,K,L,M,2) = 0
              CD62(I,J,K,L,M,1) = 0
              CD62(I,J,K,L,M,2) = 0
             END IF
            END DO
           END IF
           IF (.NOT.LL3) THEN
            LL18 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             LL4 = LL18 .AND. M .LE. 3
             IF (LL4) THEN
              CD61(I,J,K,L,M,1) = 0
              CD61(I,J,K,L,M,2) = 0
              CD62(I,J,K,L,M,1) = 0
              CD62(I,J,K,L,M,2) = 0
             END IF
            END DO
           END IF
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       CES3 = (3.5,-3.5)
       DO I1=1,6,5
        CE11(I1) = I1 + (1.,.5)
        CE11(I1+1) = 1 + I1 + (1.,.5)
        CE11(I1+2) = 2 + I1 + (1.,.5)
        CE11(I1+3) = 3 + I1 + (1.,.5)
        CE11(I1+4) = 4 + I1 + (1.,.5)
       END DO
       DO I2=2,7,4
        II1 = I2 + 1
        II2 = I2 + 2
        II3 = I2 + 3
        DO I1=1,6,5
         CE21(I1,I2) = CE11(I1) / I2
         CE21(I1+1,I2) = CE11(I1+1) / I2
         CE21(I1+2,I2) = CE11(I1+2) / I2
         CE21(I1+3,I2) = CE11(I1+3) / I2
         CE21(I1+4,I2) = CE11(I1+4) / I2
         CE21(I1,I2+1) = CE11(I1) / II1
         CE21(I1+1,I2+1) = CE11(I1+1) / II1
         CE21(I1+2,I2+1) = CE11(I1+2) / II1
         CE21(I1+3,I2+1) = CE11(I1+3) / II1
         CE21(I1+4,I2+1) = CE11(I1+4) / II1
         CE21(I1,I2+2) = CE11(I1) / II2
         CE21(I1+1,I2+2) = CE11(I1+1) / II2
         CE21(I1+2,I2+2) = CE11(I1+2) / II2
         CE21(I1+3,I2+2) = CE11(I1+3) / II2
         CE21(I1+4,I2+2) = CE11(I1+4) / II2
         CE21(I1,I2+3) = CE11(I1) / II3
         CE21(I1+1,I2+3) = CE11(I1+1) / II3
         CE21(I1+2,I2+3) = CE11(I1+2) / II3
         CE21(I1+3,I2+3) = CE11(I1+3) / II3
         CE21(I1+4,I2+3) = CE11(I1+4) / II3
        END DO
       END DO
       DO I1=1,6,5
        CE21(I1,10) = CE11(I1) / 10
        CE21(I1+1,10) = CE11(I1+1) / 10
        CE21(I1+2,10) = CE11(I1+2) / 10
        CE21(I1+3,10) = CE11(I1+3) / 10
        CE21(I1+4,10) = CE11(I1+4) / 10
       END DO
       CC3 = 1 / (0.,1.)
C$OMP PARALLEL SHARED (CC3,CE12,CE11,CE13,CE22,CE21,CES1) PRIVATE (I1,I2
C$OMP& )
C$OMP DO LASTPRIVATE (CES1)
       DO I1=1,10
        CES1 = I1 * CC3
        CE12(I1) = CE11(I1) * CES1
        CE13(I1) = CE12(I1)
        DO I2=2,10
         CES1 = I2 / I1 - (1.,1.)
         IF (I2 .EQ. 10) THEN
          CE22(I1,1) = CMPLX (I1, I2)
         END IF
         CE21(I1,I2-1) = CE21(I1,I2) * CES1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=2,7,4
        II4 = I2 + 1
        II5 = I2 + 2
        II6 = I2 + 3
        DO I1=1,9,2
         II15 = I2 * I1
         II11 = I2 * (I1 + 1)
         CE22(I1,I2) = II15 * (0.,2.)
         CE22(I1+1,I2) = II11 * (0.,2.)
         II15 = II4 * I1
         II11 = II4 * (I1 + 1)
         CE22(I1,I2+1) = II15 * (0.,2.)
         CE22(I1+1,I2+1) = II11 * (0.,2.)
         II15 = II5 * I1
         II11 = II5 * (I1 + 1)
         CE22(I1,I2+2) = II15 * (0.,2.)
         CE22(I1+1,I2+2) = II11 * (0.,2.)
         II15 = II6 * I1
         II11 = II6 * (I1 + 1)
         CE22(I1,I2+3) = II15 * (0.,2.)
         CE22(I1+1,I2+3) = II11 * (0.,2.)
         CE23(I1,I2-1) = 0.5 - CE21(I1,I2-1)
         CE23(I1+1,I2-1) = 0.5 - CE21(I1+1,I2-1)
         CE23(I1,I2) = 0.5 - CE21(I1,I2)
         CE23(I1+1,I2) = 0.5 - CE21(I1+1,I2)
         CE23(I1,I2+1) = 0.5 - CE21(I1,I2+1)
         CE23(I1+1,I2+1) = 0.5 - CE21(I1+1,I2+1)
         CE23(I1,I2+2) = 0.5 - CE21(I1,I2+2)
         CE23(I1+1,I2+2) = 0.5 - CE21(I1+1,I2+2)
        END DO
       END DO
       DO I1=1,6,5
        II16 = I1 * 10
        II17 = I1 * 10 + 10
        II18 = I1 * 10 + 20
        II19 = I1 * 10 + 30
        II12 = I1 * 10 + 40
        CE22(I1,10) = II16 * (0.,2.)
        CE22(I1+1,10) = II17 * (0.,2.)
        CE22(I1+2,10) = II18 * (0.,2.)
        CE22(I1+3,10) = II19 * (0.,2.)
        CE22(I1+4,10) = II12 * (0.,2.)
        CE23(I1,9) = 0.5 - CE21(I1,9)
        CE23(I1+1,9) = 0.5 - CE21(I1+1,9)
        CE23(I1+2,9) = 0.5 - CE21(I1+2,9)
        CE23(I1+3,9) = 0.5 - CE21(I1+3,9)
        CE23(I1+4,9) = 0.5 - CE21(I1+4,9)
       END DO
C$OMP PARALLEL SHARED (CE31,CE32,CE41,CE42,CE51,CE52,CE61,CE62,CE33,CES2
C$OMP& ) PRIVATE (I1,I2,I3,CC4,CC5,LL25,LL26,LL27,CC6,CC7,LL28,LL29,LL30
C$OMP& ,LL31,LL32,LL33,I4,I5,LL5,LL6)
C$OMP DO 
       DO I1=1,10
        DO I2=2,7,4
         DO I3=1,6,5
          CE31(I3,I2,I1) = (0., 0.)
          CE31(I3+1,I2,I1) = (0., 0.)
          CE31(I3+2,I2,I1) = (0., 0.)
          CE31(I3+3,I2,I1) = (0., 0.)
          CE31(I3+4,I2,I1) = (0., 0.)
          CE31(I3,I2+1,I1) = (0., 0.)
          CE31(I3+1,I2+1,I1) = (0., 0.)
          CE31(I3+2,I2+1,I1) = (0., 0.)
          CE31(I3+3,I2+1,I1) = (0., 0.)
          CE31(I3+4,I2+1,I1) = (0., 0.)
          CE31(I3,I2+2,I1) = (0., 0.)
          CE31(I3+1,I2+2,I1) = (0., 0.)
          CE31(I3+2,I2+2,I1) = (0., 0.)
          CE31(I3+3,I2+2,I1) = (0., 0.)
          CE31(I3+4,I2+2,I1) = (0., 0.)
          CE31(I3,I2+3,I1) = (0., 0.)
          CE31(I3+1,I2+3,I1) = (0., 0.)
          CE31(I3+2,I2+3,I1) = (0., 0.)
          CE31(I3+3,I2+3,I1) = (0., 0.)
          CE31(I3+4,I2+3,I1) = (0., 0.)
         END DO
        END DO
        DO I3=1,6,5
         CE31(I3,10,I1) = (0., 0.)
         CE31(I3+1,10,I1) = (0., 0.)
         CE31(I3+2,10,I1) = (0., 0.)
         CE31(I3+3,10,I1) = (0., 0.)
         CE31(I3+4,10,I1) = (0., 0.)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I2=2,10
        DO I1=1,7,4
         DO I3=1,6,5
          CE32(I3,I1,I2) = 3.5
          CE32(I3+1,I1,I2) = 3.5
          CE32(I3+2,I1,I2) = 3.5
          CE32(I3+3,I1,I2) = 3.5
          CE32(I3+4,I1,I2) = 3.5
          CE32(I3,I1+1,I2) = 3.5
          CE32(I3+1,I1+1,I2) = 3.5
          CE32(I3+2,I1+1,I2) = 3.5
          CE32(I3+3,I1+1,I2) = 3.5
          CE32(I3+4,I1+1,I2) = 3.5
          CE32(I3,I1+2,I2) = 3.5
          CE32(I3+1,I1+2,I2) = 3.5
          CE32(I3+2,I1+2,I2) = 3.5
          CE32(I3+3,I1+2,I2) = 3.5
          CE32(I3+4,I1+2,I2) = 3.5
          CE32(I3,I1+3,I2) = 3.5
          CE32(I3+1,I1+3,I2) = 3.5
          CE32(I3+2,I1+3,I2) = 3.5
          CE32(I3+3,I1+3,I2) = 3.5
          CE32(I3+4,I1+3,I2) = 3.5
         END DO
        END DO
        DO I1=9,10,1
         DO I3=1,6,5
          CE32(I3,I1,I2) = 3.5
          CE32(I3+1,I1,I2) = 3.5
          CE32(I3+2,I1,I2) = 3.5
          CE32(I3+3,I1,I2) = 3.5
          CE32(I3+4,I1,I2) = 3.5
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (CES2)
       DO I3=1,10
        LL33 = I3 .LE. 8
        DO I2=2,10
         LL31 = LL33
         LL32 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL32 .AND. LL31) THEN
           LL27 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            CES2 = CMPLX (I3, I4)
            CE41(I1,I4,I3,I2) = CES2
            CE42(I1,I4+4,I2,I3) = CES2 * CC1
            IF (LL27 .AND. I4 .LE. 5) THEN
             CC4 = CMPLX (I3, I4)
             CC5 = CC4 * CC2
             LL25 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              CE51(I1,I2,I3,I4,I5) = CC4
              CE52(I1,I2,I3,I4,I5) = CC5
              IF (LL25 .AND. I5 .LE. 3) THEN
               CE61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CE61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CE62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CE62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            ELSE
             LL26 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL5 = LL26 .AND. I5 .LE. 3
              IF (LL5) THEN
               CE61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CE61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CE62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CE62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            END IF
           END DO
           CES2 = 2 + SQRT (CMPLX (0., 4))
          ELSE
           LL30 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            IF (LL30 .AND. I4 .LE. 5) THEN
             CC6 = CMPLX (I3, I4)
             CC7 = CC6 * CC2
             LL28 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              CE51(I1,I2,I3,I4,I5) = CC6
              CE52(I1,I2,I3,I4,I5) = CC7
              IF (LL28 .AND. I5 .LE. 3) THEN
               CE61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CE61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CE62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CE62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            ELSE
             LL29 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL6 = LL29 .AND. I5 .LE. 3
              IF (LL6) THEN
               CE61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CE61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CE62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CE62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            END IF
           END DO
           CES2 = 2 + SQRT (CMPLX (0., 4))
          END IF
          CE33(I1,I2,I3) = CES2
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       CDS3 = (3.5,-3.5)
       DO I1=1,6,5
        CD11(I1) = I1 + (1.,.5)
        CD11(I1+1) = 1 + I1 + (1.,.5)
        CD11(I1+2) = 2 + I1 + (1.,.5)
        CD11(I1+3) = 3 + I1 + (1.,.5)
        CD11(I1+4) = 4 + I1 + (1.,.5)
       END DO
       DO I2=2,7,4
        II7 = I2 + 1
        II8 = I2 + 2
        II9 = I2 + 3
        DO I1=1,6,5
         CD21(I1,I2) = CD11(I1) / I2
         CD21(I1+1,I2) = CD11(I1+1) / I2
         CD21(I1+2,I2) = CD11(I1+2) / I2
         CD21(I1+3,I2) = CD11(I1+3) / I2
         CD21(I1+4,I2) = CD11(I1+4) / I2
         CD21(I1,I2+1) = CD11(I1) / II7
         CD21(I1+1,I2+1) = CD11(I1+1) / II7
         CD21(I1+2,I2+1) = CD11(I1+2) / II7
         CD21(I1+3,I2+1) = CD11(I1+3) / II7
         CD21(I1+4,I2+1) = CD11(I1+4) / II7
         CD21(I1,I2+2) = CD11(I1) / II8
         CD21(I1+1,I2+2) = CD11(I1+1) / II8
         CD21(I1+2,I2+2) = CD11(I1+2) / II8
         CD21(I1+3,I2+2) = CD11(I1+3) / II8
         CD21(I1+4,I2+2) = CD11(I1+4) / II8
         CD21(I1,I2+3) = CD11(I1) / II9
         CD21(I1+1,I2+3) = CD11(I1+1) / II9
         CD21(I1+2,I2+3) = CD11(I1+2) / II9
         CD21(I1+3,I2+3) = CD11(I1+3) / II9
         CD21(I1+4,I2+3) = CD11(I1+4) / II9
        END DO
       END DO
       DO I1=1,6,5
        CD21(I1,10) = CD11(I1) / 10
        CD21(I1+1,10) = CD11(I1+1) / 10
        CD21(I1+2,10) = CD11(I1+2) / 10
        CD21(I1+3,10) = CD11(I1+3) / 10
        CD21(I1+4,10) = CD11(I1+4) / 10
       END DO
       CC8 = 1 / (0.,1.)
C$OMP PARALLEL SHARED (CC8,CD12,CD11,CD13,CD22,CD21,CDS1) PRIVATE (I1,I2
C$OMP& )
C$OMP DO LASTPRIVATE (CDS1)
       DO I1=1,10
        CDS1 = I1 * CC8
        CD12(I1) = CD11(I1) * CDS1
        CD13(I1) = CD12(I1)
        DO I2=2,10
         CDS1 = I2 / I1 - (1.,1.)
         IF (I2 .EQ. 10) THEN
          CD22(I1,1) = CMPLX (I1, I2)
         END IF
         CD21(I1,I2-1) = CD21(I1,I2) * CDS1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=2,9,2
        II10 = I2 + 1
        DO I1=1,6,5
         II20 = I2 * I1
         II21 = I2 * (I1 + 1)
         II22 = I2 * (I1 + 2)
         II23 = I2 * (I1 + 3)
         II13 = I2 * (I1 + 4)
         CD22(I1,I2) = II20 * (0.,2.)
         CD22(I1+1,I2) = II21 * (0.,2.)
         CD22(I1+2,I2) = II22 * (0.,2.)
         CD22(I1+3,I2) = II23 * (0.,2.)
         CD22(I1+4,I2) = II13 * (0.,2.)
         II20 = II10 * I1
         II21 = II10 * (I1 + 1)
         II22 = II10 * (I1 + 2)
         II23 = II10 * (I1 + 3)
         II13 = II10 * (I1 + 4)
         CD22(I1,I2+1) = II20 * (0.,2.)
         CD22(I1+1,I2+1) = II21 * (0.,2.)
         CD22(I1+2,I2+1) = II22 * (0.,2.)
         CD22(I1+3,I2+1) = II23 * (0.,2.)
         CD22(I1+4,I2+1) = II13 * (0.,2.)
         CD23(I1,I2-1) = 0.5 - CD21(I1,I2-1)
         CD23(I1+1,I2-1) = 0.5 - CD21(I1+1,I2-1)
         CD23(I1+2,I2-1) = 0.5 - CD21(I1+2,I2-1)
         CD23(I1+3,I2-1) = 0.5 - CD21(I1+3,I2-1)
         CD23(I1+4,I2-1) = 0.5 - CD21(I1+4,I2-1)
         CD23(I1,I2) = 0.5 - CD21(I1,I2)
         CD23(I1+1,I2) = 0.5 - CD21(I1+1,I2)
         CD23(I1+2,I2) = 0.5 - CD21(I1+2,I2)
         CD23(I1+3,I2) = 0.5 - CD21(I1+3,I2)
         CD23(I1+4,I2) = 0.5 - CD21(I1+4,I2)
        END DO
       END DO
       DO I1=1,6,5
        II24 = I1 * 10
        II25 = I1 * 10 + 10
        II26 = I1 * 10 + 20
        II27 = I1 * 10 + 30
        II14 = I1 * 10 + 40
        CD22(I1,10) = II24 * (0.,2.)
        CD22(I1+1,10) = II25 * (0.,2.)
        CD22(I1+2,10) = II26 * (0.,2.)
        CD22(I1+3,10) = II27 * (0.,2.)
        CD22(I1+4,10) = II14 * (0.,2.)
        CD23(I1,9) = 0.5 - CD21(I1,9)
        CD23(I1+1,9) = 0.5 - CD21(I1+1,9)
        CD23(I1+2,9) = 0.5 - CD21(I1+2,9)
        CD23(I1+3,9) = 0.5 - CD21(I1+3,9)
        CD23(I1+4,9) = 0.5 - CD21(I1+4,9)
       END DO
C$OMP PARALLEL SHARED (CD31,CD32,CD41,CD42,CD51,CD52,CD61,CD62,CD33,CDS2
C$OMP& ) PRIVATE (I1,I2,I3,DC3,LL34,LL35,LL36,DC4,LL37,LL38,LL39,LL40,
C$OMP& LL41,LL42,I4,I5,LL7,LL8)
C$OMP DO 
       DO I1=1,10
        DO I2=2,7,4
         DO I3=1,6,5
          CD31(I3,I2,I1) = 0.
          CD31(I3+1,I2,I1) = 0.
          CD31(I3+2,I2,I1) = 0.
          CD31(I3+3,I2,I1) = 0.
          CD31(I3+4,I2,I1) = 0.
          CD31(I3,I2+1,I1) = 0.
          CD31(I3+1,I2+1,I1) = 0.
          CD31(I3+2,I2+1,I1) = 0.
          CD31(I3+3,I2+1,I1) = 0.
          CD31(I3+4,I2+1,I1) = 0.
          CD31(I3,I2+2,I1) = 0.
          CD31(I3+1,I2+2,I1) = 0.
          CD31(I3+2,I2+2,I1) = 0.
          CD31(I3+3,I2+2,I1) = 0.
          CD31(I3+4,I2+2,I1) = 0.
          CD31(I3,I2+3,I1) = 0.
          CD31(I3+1,I2+3,I1) = 0.
          CD31(I3+2,I2+3,I1) = 0.
          CD31(I3+3,I2+3,I1) = 0.
          CD31(I3+4,I2+3,I1) = 0.
         END DO
        END DO
        DO I3=1,6,5
         CD31(I3,10,I1) = 0.
         CD31(I3+1,10,I1) = 0.
         CD31(I3+2,10,I1) = 0.
         CD31(I3+3,10,I1) = 0.
         CD31(I3+4,10,I1) = 0.
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I2=2,10
        DO I1=1,7,4
         DO I3=1,6,5
          CD32(I3,I1,I2) = 3.5
          CD32(I3+1,I1,I2) = 3.5
          CD32(I3+2,I1,I2) = 3.5
          CD32(I3+3,I1,I2) = 3.5
          CD32(I3+4,I1,I2) = 3.5
          CD32(I3,I1+1,I2) = 3.5
          CD32(I3+1,I1+1,I2) = 3.5
          CD32(I3+2,I1+1,I2) = 3.5
          CD32(I3+3,I1+1,I2) = 3.5
          CD32(I3+4,I1+1,I2) = 3.5
          CD32(I3,I1+2,I2) = 3.5
          CD32(I3+1,I1+2,I2) = 3.5
          CD32(I3+2,I1+2,I2) = 3.5
          CD32(I3+3,I1+2,I2) = 3.5
          CD32(I3+4,I1+2,I2) = 3.5
          CD32(I3,I1+3,I2) = 3.5
          CD32(I3+1,I1+3,I2) = 3.5
          CD32(I3+2,I1+3,I2) = 3.5
          CD32(I3+3,I1+3,I2) = 3.5
          CD32(I3+4,I1+3,I2) = 3.5
         END DO
        END DO
        DO I1=9,10,1
         DO I3=1,6,5
          CD32(I3,I1,I2) = 3.5
          CD32(I3+1,I1,I2) = 3.5
          CD32(I3+2,I1,I2) = 3.5
          CD32(I3+3,I1,I2) = 3.5
          CD32(I3+4,I1,I2) = 3.5
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (CDS2)
       DO I3=1,10
        LL42 = I3 .LE. 8
        DO I2=2,10
         LL40 = LL42
         LL41 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL41 .AND. LL40) THEN
           LL36 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            CDS2 = CMPLX (I3, I4)
            CD41(I1,I4,I3,I2) = CDS2
            CD42(I1,I4+4,I2,I3) = CDS2 * DC1
            IF (LL36 .AND. I4 .LE. 5) THEN
             DC3 = CDS2 * DC2
             LL34 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              CD51(I1,I2,I3,I4,I5) = CDS2
              CD52(I1,I2,I3,I4,I5) = DC3
              IF (LL34 .AND. I5 .LE. 3) THEN
               CD61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CD61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CD62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CD62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            ELSE
             LL35 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL7 = LL35 .AND. I5 .LE. 3
              IF (LL7) THEN
               CD61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CD61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CD62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CD62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            END IF
            CDS2 = I4 / 2 + SQRT (CMPLX (0., I4))
           END DO
          ELSE
           LL39 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            CDS2 = CMPLX (I3, I4)
            IF (LL39 .AND. I4 .LE. 5) THEN
             DC4 = CDS2 * DC2
             LL37 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              CD51(I1,I2,I3,I4,I5) = CDS2
              CD52(I1,I2,I3,I4,I5) = DC4
              IF (LL37 .AND. I5 .LE. 3) THEN
               CD61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CD61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CD62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CD62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            ELSE
             LL38 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL8 = LL38 .AND. I5 .LE. 3
              IF (LL8) THEN
               CD61(I1,I2,I3,I4,I5,1) = (.5,.5)
               CD61(I1,I2,I3,I4,I5,2) = (.5,.5)
               CD62(I1,I2,I3,I4,I5,1) = (100.5,100)
               CD62(I1,I2,I3,I4,I5,2) = (100.5,100)
              END IF
             END DO
            END IF
            CDS2 = I4 / 2 + SQRT (CMPLX (0., I4))
           END DO
          END IF
          CD33(I1,I2,I3) = CDS2
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
       LOGICAL LL48, LL47, LL46, LL45, LL44, LL43, LL42, LL41, LL40, 
     X   LL39, LL38, LL37, LL36, LL35, LL34, LL33, LL32, LL31, LL30, 
     X   LL29, LL28, LL27, LL26, LL25, LL24, LL23, LL22, LL21, LL20, 
     X   LL19, LL18, LL17, LL16, LL15, LL14, LL13, LL12, LL11, LL10, LL9
       LOGICAL LL8, LL7, LL6, LL5, LL4, LL3, LL2, LL1

       DO I=1,6,5
        I11(I) = 0
        I11(I+1) = 0
        I11(I+2) = 0
        I11(I+3) = 0
        I11(I+4) = 0
        I12(I) = 0
        I12(I+1) = 0
        I12(I+2) = 0
        I12(I+3) = 0
        I12(I+4) = 0
        I13(I) = 0
        I13(I+1) = 0
        I13(I+2) = 0
        I13(I+3) = 0
        I13(I+4) = 0
       END DO
       DO J=1,7,4

        DO I=1,6,5
         I21(I,J) = 0
         I21(I+1,J) = 0
         I21(I+2,J) = 0
         I21(I+3,J) = 0
         I21(I+4,J) = 0
         I21(I,J+1) = 0
         I21(I+1,J+1) = 0
         I21(I+2,J+1) = 0
         I21(I+3,J+1) = 0
         I21(I+4,J+1) = 0
         I21(I,J+2) = 0
         I21(I+1,J+2) = 0
         I21(I+2,J+2) = 0
         I21(I+3,J+2) = 0
         I21(I+4,J+2) = 0
         I21(I,J+3) = 0
         I21(I+1,J+3) = 0
         I21(I+2,J+3) = 0
         I21(I+3,J+3) = 0
         I21(I+4,J+3) = 0
         I22(I,J) = 0
         I22(I+1,J) = 0
         I22(I+2,J) = 0
         I22(I+3,J) = 0
         I22(I+4,J) = 0
         I22(I,J+1) = 0
         I22(I+1,J+1) = 0
         I22(I+2,J+1) = 0
         I22(I+3,J+1) = 0
         I22(I+4,J+1) = 0
         I22(I,J+2) = 0
         I22(I+1,J+2) = 0
         I22(I+2,J+2) = 0
         I22(I+3,J+2) = 0
         I22(I+4,J+2) = 0
         I22(I,J+3) = 0
         I22(I+1,J+3) = 0
         I22(I+2,J+3) = 0
         I22(I+3,J+3) = 0
         I22(I+4,J+3) = 0
         I23(I,J) = 0
         I23(I+1,J) = 0
         I23(I+2,J) = 0
         I23(I+3,J) = 0
         I23(I+4,J) = 0
         I23(I,J+1) = 0
         I23(I+1,J+1) = 0
         I23(I+2,J+1) = 0
         I23(I+3,J+1) = 0
         I23(I+4,J+1) = 0
         I23(I,J+2) = 0
         I23(I+1,J+2) = 0
         I23(I+2,J+2) = 0
         I23(I+3,J+2) = 0
         I23(I+4,J+2) = 0
         I23(I,J+3) = 0
         I23(I+1,J+3) = 0
         I23(I+2,J+3) = 0
         I23(I+3,J+3) = 0
         I23(I+4,J+3) = 0
        END DO
       END DO
       DO J=9,10,1

        DO I=1,6,5
         I21(I,J) = 0
         I21(I+1,J) = 0
         I21(I+2,J) = 0
         I21(I+3,J) = 0
         I21(I+4,J) = 0
         I22(I,J) = 0
         I22(I+1,J) = 0
         I22(I+2,J) = 0
         I22(I+3,J) = 0
         I22(I+4,J) = 0
         I23(I,J) = 0
         I23(I+1,J) = 0
         I23(I+2,J) = 0
         I23(I+3,J) = 0
         I23(I+4,J) = 0
        END DO
       END DO
C$OMP PARALLEL SHARED (I31,I32,I33,I41,I42,I51,I52,I61,I62) PRIVATE (K,J
C$OMP& ,I,L,LL9,LL10,LL11,LL12,LL13,LL14,LL15,LL16,LL1,M,LL2)
C$OMP DO 
       DO K=1,10
        DO J=1,7,4

         DO I=1,6,5
          I31(I,J,K) = 0
          I31(I+1,J,K) = 0
          I31(I+2,J,K) = 0
          I31(I+3,J,K) = 0
          I31(I+4,J,K) = 0
          I31(I,J+1,K) = 0
          I31(I+1,J+1,K) = 0
          I31(I+2,J+1,K) = 0
          I31(I+3,J+1,K) = 0
          I31(I+4,J+1,K) = 0
          I31(I,J+2,K) = 0
          I31(I+1,J+2,K) = 0
          I31(I+2,J+2,K) = 0
          I31(I+3,J+2,K) = 0
          I31(I+4,J+2,K) = 0
          I31(I,J+3,K) = 0
          I31(I+1,J+3,K) = 0
          I31(I+2,J+3,K) = 0
          I31(I+3,J+3,K) = 0
          I31(I+4,J+3,K) = 0
          I32(I,J,K) = 0
          I32(I+1,J,K) = 0
          I32(I+2,J,K) = 0
          I32(I+3,J,K) = 0
          I32(I+4,J,K) = 0
          I32(I,J+1,K) = 0
          I32(I+1,J+1,K) = 0
          I32(I+2,J+1,K) = 0
          I32(I+3,J+1,K) = 0
          I32(I+4,J+1,K) = 0
          I32(I,J+2,K) = 0
          I32(I+1,J+2,K) = 0
          I32(I+2,J+2,K) = 0
          I32(I+3,J+2,K) = 0
          I32(I+4,J+2,K) = 0
          I32(I,J+3,K) = 0
          I32(I+1,J+3,K) = 0
          I32(I+2,J+3,K) = 0
          I32(I+3,J+3,K) = 0
          I32(I+4,J+3,K) = 0
          I33(I,J,K) = 0
          I33(I+1,J,K) = 0
          I33(I+2,J,K) = 0
          I33(I+3,J,K) = 0
          I33(I+4,J,K) = 0
          I33(I,J+1,K) = 0
          I33(I+1,J+1,K) = 0
          I33(I+2,J+1,K) = 0
          I33(I+3,J+1,K) = 0
          I33(I+4,J+1,K) = 0
          I33(I,J+2,K) = 0
          I33(I+1,J+2,K) = 0
          I33(I+2,J+2,K) = 0
          I33(I+3,J+2,K) = 0
          I33(I+4,J+2,K) = 0
          I33(I,J+3,K) = 0
          I33(I+1,J+3,K) = 0
          I33(I+2,J+3,K) = 0
          I33(I+3,J+3,K) = 0
          I33(I+4,J+3,K) = 0
         END DO
        END DO
        DO J=9,10,1

         DO I=1,6,5
          I31(I,J,K) = 0
          I31(I+1,J,K) = 0
          I31(I+2,J,K) = 0
          I31(I+3,J,K) = 0
          I31(I+4,J,K) = 0
          I32(I,J,K) = 0
          I32(I+1,J,K) = 0
          I32(I+2,J,K) = 0
          I32(I+3,J,K) = 0
          I32(I+4,J,K) = 0
          I33(I,J,K) = 0
          I33(I+1,J,K) = 0
          I33(I+2,J,K) = 0
          I33(I+3,J,K) = 0
          I33(I+4,J,K) = 0
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,8
        DO K=1,5,4
         DO J=1,8
          I41(1,J,K,L) = 0
          I41(2,J,K,L) = 0
          I41(3,J,K,L) = 0
          I41(4,J,K,L) = 0
          I41(5,J,K,L) = 0
          I41(6,J,K,L) = 0
          I41(7,J,K,L) = 0
          I41(8,J,K,L) = 0
          I41(1,J,K+1,L) = 0
          I41(2,J,K+1,L) = 0
          I41(3,J,K+1,L) = 0
          I41(4,J,K+1,L) = 0
          I41(5,J,K+1,L) = 0
          I41(6,J,K+1,L) = 0
          I41(7,J,K+1,L) = 0
          I41(8,J,K+1,L) = 0
          I41(1,J,K+2,L) = 0
          I41(2,J,K+2,L) = 0
          I41(3,J,K+2,L) = 0
          I41(4,J,K+2,L) = 0
          I41(5,J,K+2,L) = 0
          I41(6,J,K+2,L) = 0
          I41(7,J,K+2,L) = 0
          I41(8,J,K+2,L) = 0
          I41(1,J,K+3,L) = 0
          I41(2,J,K+3,L) = 0
          I41(3,J,K+3,L) = 0
          I41(4,J,K+3,L) = 0
          I41(5,J,K+3,L) = 0
          I41(6,J,K+3,L) = 0
          I41(7,J,K+3,L) = 0
          I41(8,J,K+3,L) = 0
          I42(1,J,K,L) = 0
          I42(2,J,K,L) = 0
          I42(3,J,K,L) = 0
          I42(4,J,K,L) = 0
          I42(5,J,K,L) = 0
          I42(6,J,K,L) = 0
          I42(7,J,K,L) = 0
          I42(8,J,K,L) = 0
          I42(1,J,K+1,L) = 0
          I42(2,J,K+1,L) = 0
          I42(3,J,K+1,L) = 0
          I42(4,J,K+1,L) = 0
          I42(5,J,K+1,L) = 0
          I42(6,J,K+1,L) = 0
          I42(7,J,K+1,L) = 0
          I42(8,J,K+1,L) = 0
          I42(1,J,K+2,L) = 0
          I42(2,J,K+2,L) = 0
          I42(3,J,K+2,L) = 0
          I42(4,J,K+2,L) = 0
          I42(5,J,K+2,L) = 0
          I42(6,J,K+2,L) = 0
          I42(7,J,K+2,L) = 0
          I42(8,J,K+2,L) = 0
          I42(1,J,K+3,L) = 0
          I42(2,J,K+3,L) = 0
          I42(3,J,K+3,L) = 0
          I42(4,J,K+3,L) = 0
          I42(5,J,K+3,L) = 0
          I42(6,J,K+3,L) = 0
          I42(7,J,K+3,L) = 0
          I42(8,J,K+3,L) = 0
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J=1,8
        LL16 = J .LE. 5
        DO K=1,8
         LL14 = K .LE. 5
         LL15 = LL16
         DO L=1,8
          LL11 = L .LE. 5
          LL12 = LL14
          LL13 = LL15
          DO I=1,8
           LL1 = I .LE. 5 .AND. LL13 .AND. LL12 .AND. LL11
           IF (LL1) THEN
            LL9 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             I51(I,J,K,L,M) = 0
             I52(I,J,K,L,M) = 0
             IF (LL9 .AND. M .LE. 3) THEN
              I61(I,J,K,L,M,1) = 0
              I61(I,J,K,L,M,2) = 0
              I62(I,J,K,L,M,1) = 0
              I62(I,J,K,L,M,2) = 0
             END IF
            END DO
           END IF
           IF (.NOT.LL1) THEN
            LL10 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             LL2 = LL10 .AND. M .LE. 3
             IF (LL2) THEN
              I61(I,J,K,L,M,1) = 0
              I61(I,J,K,L,M,2) = 0
              I62(I,J,K,L,M,1) = 0
              I62(I,J,K,L,M,2) = 0
             END IF
            END DO
           END IF
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,6,5
        L11(I) = .FALSE.
        L11(I+1) = .FALSE.
        L11(I+2) = .FALSE.
        L11(I+3) = .FALSE.
        L11(I+4) = .FALSE.
        L12(I) = .FALSE.
        L12(I+1) = .FALSE.
        L12(I+2) = .FALSE.
        L12(I+3) = .FALSE.
        L12(I+4) = .FALSE.
        L13(I) = .FALSE.
        L13(I+1) = .FALSE.
        L13(I+2) = .FALSE.
        L13(I+3) = .FALSE.
        L13(I+4) = .FALSE.
       END DO
       DO J=1,7,4
        DO I=1,6,5
         L21(I,J) = .FALSE.
         L21(I+1,J) = .FALSE.
         L21(I+2,J) = .FALSE.
         L21(I+3,J) = .FALSE.
         L21(I+4,J) = .FALSE.
         L21(I,J+1) = .FALSE.
         L21(I+1,J+1) = .FALSE.
         L21(I+2,J+1) = .FALSE.
         L21(I+3,J+1) = .FALSE.
         L21(I+4,J+1) = .FALSE.
         L21(I,J+2) = .FALSE.
         L21(I+1,J+2) = .FALSE.
         L21(I+2,J+2) = .FALSE.
         L21(I+3,J+2) = .FALSE.
         L21(I+4,J+2) = .FALSE.
         L21(I,J+3) = .FALSE.
         L21(I+1,J+3) = .FALSE.
         L21(I+2,J+3) = .FALSE.
         L21(I+3,J+3) = .FALSE.
         L21(I+4,J+3) = .FALSE.
         L22(I,J) = .FALSE.
         L22(I+1,J) = .FALSE.
         L22(I+2,J) = .FALSE.
         L22(I+3,J) = .FALSE.
         L22(I+4,J) = .FALSE.
         L22(I,J+1) = .FALSE.
         L22(I+1,J+1) = .FALSE.
         L22(I+2,J+1) = .FALSE.
         L22(I+3,J+1) = .FALSE.
         L22(I+4,J+1) = .FALSE.
         L22(I,J+2) = .FALSE.
         L22(I+1,J+2) = .FALSE.
         L22(I+2,J+2) = .FALSE.
         L22(I+3,J+2) = .FALSE.
         L22(I+4,J+2) = .FALSE.
         L22(I,J+3) = .FALSE.
         L22(I+1,J+3) = .FALSE.
         L22(I+2,J+3) = .FALSE.
         L22(I+3,J+3) = .FALSE.
         L22(I+4,J+3) = .FALSE.
         L23(I,J) = .FALSE.
         L23(I+1,J) = .FALSE.
         L23(I+2,J) = .FALSE.
         L23(I+3,J) = .FALSE.
         L23(I+4,J) = .FALSE.
         L23(I,J+1) = .FALSE.
         L23(I+1,J+1) = .FALSE.
         L23(I+2,J+1) = .FALSE.
         L23(I+3,J+1) = .FALSE.
         L23(I+4,J+1) = .FALSE.
         L23(I,J+2) = .FALSE.
         L23(I+1,J+2) = .FALSE.
         L23(I+2,J+2) = .FALSE.
         L23(I+3,J+2) = .FALSE.
         L23(I+4,J+2) = .FALSE.
         L23(I,J+3) = .FALSE.
         L23(I+1,J+3) = .FALSE.
         L23(I+2,J+3) = .FALSE.
         L23(I+3,J+3) = .FALSE.
         L23(I+4,J+3) = .FALSE.
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         L21(I,J) = .FALSE.
         L21(I+1,J) = .FALSE.
         L21(I+2,J) = .FALSE.
         L21(I+3,J) = .FALSE.
         L21(I+4,J) = .FALSE.
         L22(I,J) = .FALSE.
         L22(I+1,J) = .FALSE.
         L22(I+2,J) = .FALSE.
         L22(I+3,J) = .FALSE.
         L22(I+4,J) = .FALSE.
         L23(I,J) = .FALSE.
         L23(I+1,J) = .FALSE.
         L23(I+2,J) = .FALSE.
         L23(I+3,J) = .FALSE.
         L23(I+4,J) = .FALSE.
        END DO
       END DO
C$OMP PARALLEL SHARED (L31,L32,L33,L41,L42,L51,L52,L61,L62) PRIVATE (K,J
C$OMP& ,I,L,LL17,LL18,LL19,LL20,LL21,LL22,LL23,LL24,LL3,M,LL4)
C$OMP DO 
       DO K=1,10
        DO J=1,7,4
         DO I=1,6,5
          L31(I,J,K) = .FALSE.
          L31(I+1,J,K) = .FALSE.
          L31(I+2,J,K) = .FALSE.
          L31(I+3,J,K) = .FALSE.
          L31(I+4,J,K) = .FALSE.
          L31(I,J+1,K) = .FALSE.
          L31(I+1,J+1,K) = .FALSE.
          L31(I+2,J+1,K) = .FALSE.
          L31(I+3,J+1,K) = .FALSE.
          L31(I+4,J+1,K) = .FALSE.
          L31(I,J+2,K) = .FALSE.
          L31(I+1,J+2,K) = .FALSE.
          L31(I+2,J+2,K) = .FALSE.
          L31(I+3,J+2,K) = .FALSE.
          L31(I+4,J+2,K) = .FALSE.
          L31(I,J+3,K) = .FALSE.
          L31(I+1,J+3,K) = .FALSE.
          L31(I+2,J+3,K) = .FALSE.
          L31(I+3,J+3,K) = .FALSE.
          L31(I+4,J+3,K) = .FALSE.
          L32(I,J,K) = .FALSE.
          L32(I+1,J,K) = .FALSE.
          L32(I+2,J,K) = .FALSE.
          L32(I+3,J,K) = .FALSE.
          L32(I+4,J,K) = .FALSE.
          L32(I,J+1,K) = .FALSE.
          L32(I+1,J+1,K) = .FALSE.
          L32(I+2,J+1,K) = .FALSE.
          L32(I+3,J+1,K) = .FALSE.
          L32(I+4,J+1,K) = .FALSE.
          L32(I,J+2,K) = .FALSE.
          L32(I+1,J+2,K) = .FALSE.
          L32(I+2,J+2,K) = .FALSE.
          L32(I+3,J+2,K) = .FALSE.
          L32(I+4,J+2,K) = .FALSE.
          L32(I,J+3,K) = .FALSE.
          L32(I+1,J+3,K) = .FALSE.
          L32(I+2,J+3,K) = .FALSE.
          L32(I+3,J+3,K) = .FALSE.
          L32(I+4,J+3,K) = .FALSE.
          L33(I,J,K) = .FALSE.
          L33(I+1,J,K) = .FALSE.
          L33(I+2,J,K) = .FALSE.
          L33(I+3,J,K) = .FALSE.
          L33(I+4,J,K) = .FALSE.
          L33(I,J+1,K) = .FALSE.
          L33(I+1,J+1,K) = .FALSE.
          L33(I+2,J+1,K) = .FALSE.
          L33(I+3,J+1,K) = .FALSE.
          L33(I+4,J+1,K) = .FALSE.
          L33(I,J+2,K) = .FALSE.
          L33(I+1,J+2,K) = .FALSE.
          L33(I+2,J+2,K) = .FALSE.
          L33(I+3,J+2,K) = .FALSE.
          L33(I+4,J+2,K) = .FALSE.
          L33(I,J+3,K) = .FALSE.
          L33(I+1,J+3,K) = .FALSE.
          L33(I+2,J+3,K) = .FALSE.
          L33(I+3,J+3,K) = .FALSE.
          L33(I+4,J+3,K) = .FALSE.
         END DO
        END DO
        DO J=9,10,1
         DO I=1,6,5
          L31(I,J,K) = .FALSE.
          L31(I+1,J,K) = .FALSE.
          L31(I+2,J,K) = .FALSE.
          L31(I+3,J,K) = .FALSE.
          L31(I+4,J,K) = .FALSE.
          L32(I,J,K) = .FALSE.
          L32(I+1,J,K) = .FALSE.
          L32(I+2,J,K) = .FALSE.
          L32(I+3,J,K) = .FALSE.
          L32(I+4,J,K) = .FALSE.
          L33(I,J,K) = .FALSE.
          L33(I+1,J,K) = .FALSE.
          L33(I+2,J,K) = .FALSE.
          L33(I+3,J,K) = .FALSE.
          L33(I+4,J,K) = .FALSE.
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,8
        DO K=1,5,4
         DO J=1,8
          L41(1,J,K,L) = .FALSE.
          L41(2,J,K,L) = .FALSE.
          L41(3,J,K,L) = .FALSE.
          L41(4,J,K,L) = .FALSE.
          L41(5,J,K,L) = .FALSE.
          L41(6,J,K,L) = .FALSE.
          L41(7,J,K,L) = .FALSE.
          L41(8,J,K,L) = .FALSE.
          L41(1,J,K+1,L) = .FALSE.
          L41(2,J,K+1,L) = .FALSE.
          L41(3,J,K+1,L) = .FALSE.
          L41(4,J,K+1,L) = .FALSE.
          L41(5,J,K+1,L) = .FALSE.
          L41(6,J,K+1,L) = .FALSE.
          L41(7,J,K+1,L) = .FALSE.
          L41(8,J,K+1,L) = .FALSE.
          L41(1,J,K+2,L) = .FALSE.
          L41(2,J,K+2,L) = .FALSE.
          L41(3,J,K+2,L) = .FALSE.
          L41(4,J,K+2,L) = .FALSE.
          L41(5,J,K+2,L) = .FALSE.
          L41(6,J,K+2,L) = .FALSE.
          L41(7,J,K+2,L) = .FALSE.
          L41(8,J,K+2,L) = .FALSE.
          L41(1,J,K+3,L) = .FALSE.
          L41(2,J,K+3,L) = .FALSE.
          L41(3,J,K+3,L) = .FALSE.
          L41(4,J,K+3,L) = .FALSE.
          L41(5,J,K+3,L) = .FALSE.
          L41(6,J,K+3,L) = .FALSE.
          L41(7,J,K+3,L) = .FALSE.
          L41(8,J,K+3,L) = .FALSE.
          L42(1,J,K,L) = .FALSE.
          L42(2,J,K,L) = .FALSE.
          L42(3,J,K,L) = .FALSE.
          L42(4,J,K,L) = .FALSE.
          L42(5,J,K,L) = .FALSE.
          L42(6,J,K,L) = .FALSE.
          L42(7,J,K,L) = .FALSE.
          L42(8,J,K,L) = .FALSE.
          L42(1,J,K+1,L) = .FALSE.
          L42(2,J,K+1,L) = .FALSE.
          L42(3,J,K+1,L) = .FALSE.
          L42(4,J,K+1,L) = .FALSE.
          L42(5,J,K+1,L) = .FALSE.
          L42(6,J,K+1,L) = .FALSE.
          L42(7,J,K+1,L) = .FALSE.
          L42(8,J,K+1,L) = .FALSE.
          L42(1,J,K+2,L) = .FALSE.
          L42(2,J,K+2,L) = .FALSE.
          L42(3,J,K+2,L) = .FALSE.
          L42(4,J,K+2,L) = .FALSE.
          L42(5,J,K+2,L) = .FALSE.
          L42(6,J,K+2,L) = .FALSE.
          L42(7,J,K+2,L) = .FALSE.
          L42(8,J,K+2,L) = .FALSE.
          L42(1,J,K+3,L) = .FALSE.
          L42(2,J,K+3,L) = .FALSE.
          L42(3,J,K+3,L) = .FALSE.
          L42(4,J,K+3,L) = .FALSE.
          L42(5,J,K+3,L) = .FALSE.
          L42(6,J,K+3,L) = .FALSE.
          L42(7,J,K+3,L) = .FALSE.
          L42(8,J,K+3,L) = .FALSE.
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J=1,8
        LL24 = J .LE. 5
        DO K=1,8
         LL22 = K .LE. 5
         LL23 = LL24
         DO L=1,8
          LL19 = L .LE. 5
          LL20 = LL22
          LL21 = LL23
          DO I=1,8
           LL3 = I .LE. 5 .AND. LL21 .AND. LL20 .AND. LL19
           IF (LL3) THEN
            LL17 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             L51(I,J,K,L,M) = .FALSE.
             L52(I,J,K,L,M) = .FALSE.
             IF (LL17 .AND. M .LE. 3) THEN
              L61(I,J,K,L,M,1) = .FALSE.
              L61(I,J,K,L,M,2) = .FALSE.
              L62(I,J,K,L,M,1) = .FALSE.
              L62(I,J,K,L,M,2) = .FALSE.
             END IF
            END DO
           END IF
           IF (.NOT.LL3) THEN
            LL18 = I .LE. 5 .AND. J .LE. 3 .AND. K .LE. 3 .AND. L .LE. 3
            DO M=1,5
             LL4 = LL18 .AND. M .LE. 3
             IF (LL4) THEN
              L61(I,J,K,L,M,1) = .FALSE.
              L61(I,J,K,L,M,2) = .FALSE.
              L62(I,J,K,L,M,1) = .FALSE.
              L62(I,J,K,L,M,2) = .FALSE.
             END IF
            END DO
           END IF
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       IS3 = 104
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
C$OMP& ,LL25,LL26,LL27,II5,RR3,LL28,LL29,LL30,LL31,LL32,LL33,I3,I2,I1,I4
C$OMP& ,I5,LL5,LL6)
C$OMP DO LASTPRIVATE (IS2)
       DO I3=1,10
        LL33 = I3 .LE. 8
        DO I2=2,10
         LL31 = LL33
         LL32 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL32 .AND. LL31) THEN
           LL27 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            I41(I1,I4,I3,I2) = I3 + I4
            I42(I1,I4+4,I2,I3) = (I3 + I4) / 3
            IF (LL27 .AND. I4 .LE. 5) THEN
             II4 = I3 + I4
             RR2 = II4 * RR1
             LL25 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              I51(I1,I2,I3,I4,I5) = II4
              I52(I1,I2,I3,I4,I5) = RR2
              IF (LL25 .AND. I5 .LE. 3) THEN
               I61(I1,I2,I3,I4,I5,1) = 0.5
               I61(I1,I2,I3,I4,I5,2) = 0.5
               I62(I1,I2,I3,I4,I5,1) = 100.5
               I62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL26 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL5 = LL26 .AND. I5 .LE. 3
              IF (LL5) THEN
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
           LL30 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            IF (LL30 .AND. I4 .LE. 5) THEN
             II5 = I3 + I4
             RR3 = II5 * RR1
             LL28 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              I51(I1,I2,I3,I4,I5) = II5
              I52(I1,I2,I3,I4,I5) = RR3
              IF (LL28 .AND. I5 .LE. 3) THEN
               I61(I1,I2,I3,I4,I5,1) = 0.5
               I61(I1,I2,I3,I4,I5,2) = 0.5
               I62(I1,I2,I3,I4,I5,1) = 100.5
               I62(I1,I2,I3,I4,I5,2) = 100.5
              END IF
             END DO
            ELSE
             LL29 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL6 = LL29 .AND. I5 .LE. 3
              IF (LL6) THEN
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
        LL34 = MOD (I2, 2) .EQ. 0
        LL35 = MOD (I2 + 1, 2) .EQ. 0
        LL36 = MOD (I2 + 2, 2) .EQ. 0
        LL37 = MOD (I2 + 3, 2) .EQ. 0
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
         L23(I1,I2-1) = LL34
         L23(I1+1,I2-1) = LL34
         L23(I1+2,I2-1) = LL34
         L23(I1+3,I2-1) = LL34
         L23(I1+4,I2-1) = LL34
         L23(I1,I2) = LL35
         L23(I1+1,I2) = LL35
         L23(I1+2,I2) = LL35
         L23(I1+3,I2) = LL35
         L23(I1+4,I2) = LL35
         L23(I1,I2+1) = LL36
         L23(I1+1,I2+1) = LL36
         L23(I1+2,I2+1) = LL36
         L23(I1+3,I2+1) = LL36
         L23(I1+4,I2+1) = LL36
         L23(I1,I2+2) = LL37
         L23(I1+1,I2+2) = LL37
         L23(I1+2,I2+2) = LL37
         L23(I1+3,I2+2) = LL37
         L23(I1+4,I2+2) = LL37
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
C$OMP PARALLEL SHARED (L41,L42,L51,L52,L61,L62,L33,LS2) PRIVATE (LL38,
C$OMP& LL39,LL40,LL41,LL42,LL43,LL44,LL45,LL46,LL47,LL48,I3,I2,I1,I4,I5,
C$OMP& LL7,LL8)
C$OMP DO LASTPRIVATE (LS2)
       DO I3=1,10
        LL48 = I3 .LE. 8
        DO I2=2,10
         LL46 = LL48
         LL47 = I2 .LE. 8
         DO I1=1,10
          IF (I1 .LE. 8 .AND. LL47 .AND. LL46) THEN
           LL41 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            LS2 = I3 .LE. I4
            L41(I1,I4,I3,I2) = LS2
            L42(I1,I4+4,I2,I3) = LS2
            IF (LL41 .AND. I4 .LE. 5) THEN
             LL38 = I3 .LE. I4
             LL39 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              L51(I1,I2,I3,I4,I5) = LL38
              L52(I1,I2,I3,I4,I5) = LL38 .AND. I5 .GE. 3
              IF (LL39 .AND. I5 .LE. 3) THEN
               L61(I1,I2,I3,I4,I5,1) = .FALSE.
               L61(I1,I2,I3,I4,I5,2) = .FALSE.
               L62(I1,I2,I3,I4,I5,1) = .TRUE.
               L62(I1,I2,I3,I4,I5,2) = .TRUE.
              END IF
             END DO
            ELSE
             LL40 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL7 = LL40 .AND. I5 .LE. 3
              IF (LL7) THEN
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
           LL45 = I1 .LE. 5 .AND. I2 .LE. 5 .AND. I3 .LE. 5
           DO I4=1,4
            IF (LL45 .AND. I4 .LE. 5) THEN
             LL42 = I3 .LE. I4
             LL43 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              L51(I1,I2,I3,I4,I5) = LL42
              L52(I1,I2,I3,I4,I5) = LL42 .AND. I5 .GE. 3
              IF (LL43 .AND. I5 .LE. 3) THEN
               L61(I1,I2,I3,I4,I5,1) = .FALSE.
               L61(I1,I2,I3,I4,I5,2) = .FALSE.
               L62(I1,I2,I3,I4,I5,1) = .TRUE.
               L62(I1,I2,I3,I4,I5,2) = .TRUE.
              END IF
             END DO
            ELSE
             LL44 = I1 .LE. 5 .AND. I2 .LE. 3 .AND. I3 .LE. 3 .AND. I4
     X          .LE. 3
             DO I5=1,5
              LL8 = LL44 .AND. I5 .LE. 3
              IF (LL8) THEN
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

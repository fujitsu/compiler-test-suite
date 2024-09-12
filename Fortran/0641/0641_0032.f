      PROGRAM MAIN
       CALL EQIF3
       STOP 
      END
 
      SUBROUTINE EQIF3
       REAL*4 RX, RY, RZ, RA(20), RB(10), RC(10)
       REAL*8 DX, DY, DZ, DA(20), DB(10), DC(10,10)
       COMPLEX*8 CEX, CEY, CEZ, CEA(20)
       COMPLEX*16 CDX, CDY, CDZ, CDA(20)
       LOGICAL*4 LX, LY, LZ, LA(20), L(10)
       INTEGER*4 IX, IY, IZ, IA(20), IB(10)

       EQUIVALENCE (RX, RA(1)), (RY, RA(13)), (RZ, CAZ), (RB(1), RZ), (
     X   DX, DA(1)), (DY, DA(13)), (DZ, CDZ), (DB(1), DZ), (CEX, CEA(1)
     X   ), (CEY, CEA(13)), (CDX, CDA(1)), (CDY, CDA(13)), (LX, LA(1)), 
     X   (LY, LA(13)), (LZ, IZ), (IB(1), IZ), (IX, IA(1)), (IY, IA(13))

       DATA RA/20*1.0/ 
       DATA RB/10*1.0/ 
       DATA RC/10*1.0/ 
       DATA DA/20*1.0/ 
       DATA DB/10*1.0/ 
       DATA DC/100*1.0/ 
       DATA CEA/20*(1.,1.)/ 
       DATA CDA/20*(1.,1.)/ 
       DATA LA/20*.TRUE./ 
       DATA IA/20*1/ 
       DATA IB/10*1/ 
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1

       DO I=1,10
        RY = I * I
        DY = I * I + 1
        CEY = CMPLX (I, I)
        LY = I .GE. 5 .AND. I .LE. 9
        IY = I + I * I
        IF (RA(I+5) .GT. 8. .AND. DA(I+5) .GT. 7D0 .AND. CABS (CEA(I+5))
     X     .GT. 4. .AND. LA(I+5) .AND. IA(I+5) .GT. 14) THEN
         RB(I) = RC(I)
         DB(I) = 1 + RC(I) * RC(I)
         IB(I) = RC(I) * 2
        END IF
        CAZ = CMPLX (RX, RX)
        CDZ = CMPLX (DX, DX)
        IZ = IX + 1
        DO J=1,6,5
         DD1 = DC(I,J) + RX
         DD2 = DC(I,J+1) + RX
         DD3 = DC(I,J+2) + RX
         DD4 = DC(I,J+3) + RX
         DD5 = DC(I,J+4) + RX
         DC(I,J+4) = DD5
         DC(I,J+3) = DD4
         DC(I,J+2) = DD3
         DC(I,J+1) = DD2
         DC(I,J) = DD1
        END DO
        RA(I) = 1 + RZ + RA(20)
        DA(I) = DZ + IA(20)
        L(I) = LZ .OR. RA(I) .GT. 5.
       END DO

       WRITE (6, *) 'RA=', RA
       WRITE (6, *) 'DA=', DA
       WRITE (6, *) 'CEA=', CEA
       WRITE (6, *) 'CDA=', CDA
       WRITE (6, *) 'RB=', RB
       WRITE (6, *) 'DB=', DB
       WRITE (6, *) 'LA=', LA
       WRITE (6, *) 'IA=', IA
       WRITE (6, *) 'L=', L
       WRITE (6, *) 'IB=', IB
       WRITE (6, *) 'DC=', DC
       RETURN 
      END

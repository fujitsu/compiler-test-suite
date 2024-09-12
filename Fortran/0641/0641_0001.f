      PROGRAM MAIN
       INTEGER*4 NA1(10), NA2(10)
       REAL*4 RA1(10), RA2(10), RA3(10), RA4(10)
       REAL*8 DA1(10), DA2(10), DA3(10), DA4(10)
       COMPLEX*8 CA1(10)
       COMPLEX*16 CDA1(10)
       INTEGER II5, II4, II3, II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO I=1,6,5
        RA1(I) = FLOAT (I)
        RA1(I+1) = FLOAT (I + 1)
        RA1(I+2) = FLOAT (I + 2)
        RA1(I+3) = FLOAT (I + 3)
        RA1(I+4) = FLOAT (I + 4)
        DA1(I) = DFLOAT (I)
        DA1(I+1) = DFLOAT (I + 1)
        DA1(I+2) = DFLOAT (I + 2)
        DA1(I+3) = DFLOAT (I + 3)
        DA1(I+4) = DFLOAT (I + 4)
        CA1(I) = CMPLX (I, I)
        CA1(I+1) = CMPLX (I + 1, I + 1)
        CA1(I+2) = CMPLX (I + 2, I + 2)
        CA1(I+3) = CMPLX (I + 3, I + 3)
        CA1(I+4) = CMPLX (I + 4, I + 4)
        II2 = -I
        II3 = -1 - I
        II4 = -2 - I
        II5 = -3 - I
        II1 = -4 - I
        CDA1(I) = DCMPLX (I, II2)
        CDA1(I+1) = DCMPLX (I + 1, II3)
        CDA1(I+2) = DCMPLX (I + 2, II4)
        CDA1(I+3) = DCMPLX (I + 3, II5)
        CDA1(I+4) = DCMPLX (I + 4, II1)
       END DO

       DO I=1,10
        NA1(I) = IFIX (RA1(11-I))
        NA2(I) = IDINT (DA1(11-I))
        RA2(I) = REAL (NA2(I))
        RA3(I) = SNGL (DREAL (FLOAT (NA1(I)) + CDA1(I)))
        DA2(I) = DIM (DA1(I), IMAG (CA1(I)))
       END DO

       DO I=1,6,5
        RR2 = CABS (CA1(I))
        RR3 = CABS (CA1(I+1))
        RR4 = CABS (CA1(I+2))
        RR5 = CABS (CA1(I+3))
        RR1 = CABS (CA1(I+4))
        RA4(I) = RR2 + RA3(I)
        RA4(I+1) = RR3 + RA3(I+1)
        RA4(I+2) = RR4 + RA3(I+2)
        RA4(I+3) = RR5 + RA3(I+3)
        RA4(I+4) = RR1 + RA3(I+4)
        DA3(I) = CDABS (CDA1(I))
        DA3(I+1) = CDABS (CDA1(I+1))
        DA3(I+2) = CDABS (CDA1(I+2))
        DA3(I+3) = CDABS (CDA1(I+3))
        DA3(I+4) = CDABS (CDA1(I+4))
        DD5 = ABS (DA2(I))
        DD6 = ABS (DA2(I+1))
        DD7 = ABS (DA2(I+2))
        DD8 = ABS (DA2(I+3))
        DD1 = ABS (DA2(I+4))
        DD9 = REAL (RA1(I), KIND = 8)
        DD10 = REAL (RA1(I+1), KIND = 8)
        DD11 = REAL (RA1(I+2), KIND = 8)
        DD12 = REAL (RA1(I+3), KIND = 8)
        DD3 = REAL (RA1(I+4), KIND = 8)
        RR2 = -RA2(I)
        RR3 = -RA2(I+1)
        RR4 = -RA2(I+2)
        RR5 = -RA2(I+3)
        RR1 = -RA2(I+4)
        DD13 = REAL (RR2, KIND = 8)
        DD14 = REAL (RR3, KIND = 8)
        DD15 = REAL (RR4, KIND = 8)
        DD16 = REAL (RR5, KIND = 8)
        DD4 = REAL (RR1, KIND = 8)
        DD17 = DD9 * DD13
        DD18 = DD10 * DD14
        DD19 = DD11 * DD15
        DD20 = DD12 * DD16
        DD2 = DD3 * DD4
        DA4(I) = DD5 + DD17
        DA4(I+1) = DD6 + DD18
        DA4(I+2) = DD7 + DD19
        DA4(I+3) = DD8 + DD20
        DA4(I+4) = DD1 + DD2
       END DO

       WRITE (6, *) NA1, NA2, CA1, CDA1
       WRITE (6, *) RA1, RA2, RA3, RA4
       WRITE (6, *) DA1, DA2, DA3, DA4
      END

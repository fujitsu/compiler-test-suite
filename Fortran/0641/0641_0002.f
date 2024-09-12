      PROGRAM MAIN
       INTEGER*4 NA1(10), NA2(10)
       REAL*4 RA1(10), RA2(10), RA3(10), RA4(10)
       REAL*8 DA1(10), DA2(10), DA3(10), DA4(10)
       COMPLEX*8 CA1(10), CA2(10)
       COMPLEX*16 CDA1(10), CDA2(10)
       INTEGER II30, II29, II28, II27, II26, II25, II24, II23, II22, 
     X   II21, II20, II19, II18, II17, II16, II15, II14, II13, II12, 
     X   II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC10, DC9, DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

       DO I=1,6,5
        II7 = IOR (I, 1)
        II8 = IOR (I + 1, 1)
        II9 = IOR (I + 2, 1)
        II10 = IOR (I + 3, 1)
        II1 = IOR (I + 4, 1)
        NA1(I) = IEOR (II7, -1)
        NA1(I+1) = IEOR (II8, -1)
        NA1(I+2) = IEOR (II9, -1)
        NA1(I+3) = IEOR (II10, -1)
        NA1(I+4) = IEOR (II1, -1)
        II7 = MOD (I, 2)
        II8 = MOD (I + 1, 2)
        II9 = MOD (I + 2, 2)
        II10 = MOD (I + 3, 2)
        II1 = MOD (I + 4, 2)
        RA1(I) = FLOAT (II7)
        RA1(I+1) = FLOAT (II8)
        RA1(I+2) = FLOAT (II9)
        RA1(I+3) = FLOAT (II10)
        RA1(I+4) = FLOAT (II1)
        DA1(I) = DFLOAT (I)
        DA1(I+1) = DFLOAT (I + 1)
        DA1(I+2) = DFLOAT (I + 2)
        DA1(I+3) = DFLOAT (I + 3)
        DA1(I+4) = DFLOAT (I + 4)
        II7 = I * 2
        II8 = I * 2 + 2
        II9 = I * 2 + 4
        II10 = I * 2 + 6
        II1 = I * 2 + 8
        II11 = I / 2
        II12 = (I + 1) / 2
        II13 = (I + 2) / 2
        II14 = (I + 3) / 2
        II2 = (I + 4) / 2
        CA1(I) = CMPLX (II7, II11)
        CA1(I+1) = CMPLX (II8, II12)
        CA1(I+2) = CMPLX (II9, II13)
        CA1(I+3) = CMPLX (II10, II14)
        CA1(I+4) = CMPLX (II1, II2)
        II7 = -I
        II8 = -1 - I
        II9 = -2 - I
        II10 = -3 - I
        II1 = -4 - I
        CDA1(I) = DCMPLX (I, II7)
        CDA1(I+1) = DCMPLX (I + 1, II8)
        CDA1(I+2) = DCMPLX (I + 2, II9)
        CDA1(I+3) = DCMPLX (I + 3, II10)
        CDA1(I+4) = DCMPLX (I + 4, II1)
       END DO

       DO I=1,6,5
        II15 = INT (RA1(11-I)) + NA1(I)
        II16 = INT (RA1(10-I)) + NA1(I+1)
        II17 = INT (RA1(9-I)) + NA1(I+2)
        II18 = INT (RA1(8-I)) + NA1(I+3)
        II3 = INT (RA1(7-I)) + NA1(I+4)
        NA1(I) = ISIGN (NA1(I), II15)
        NA1(I+1) = ISIGN (NA1(I+1), II16)
        NA1(I+2) = ISIGN (NA1(I+2), II17)
        NA1(I+3) = ISIGN (NA1(I+3), II18)
        NA1(I+4) = ISIGN (NA1(I+4), II3)
        II15 = NINT (DA1(11-I))
        II16 = NINT (DA1(10-I))
        II17 = NINT (DA1(9-I))
        II18 = NINT (DA1(8-I))
        II3 = NINT (DA1(7-I))
        DD7 = REAL (RA1(MIN0 (I*2, 10)), KIND = 8)
        DD8 = REAL (RA1(MIN0 (I*2+2, 10)), KIND = 8)
        DD9 = REAL (RA1(MIN0 (I*2+4, 10)), KIND = 8)
        DD10 = REAL (RA1(MIN0 (I*2+6, 10)), KIND = 8)
        DD2 = REAL (RA1(MIN0 (I*2+8, 10)), KIND = 8)
        DD11 = DD7 * 1.5D0
        DD12 = DD8 * 1.5D0
        DD13 = DD9 * 1.5D0
        DD14 = DD10 * 1.5D0
        DD1 = DD2 * 1.5D0
        NA2(I) = IABS (II15) - IDNINT (DD11)
        NA2(I+1) = IABS (II16) - IDNINT (DD12)
        NA2(I+2) = IABS (II17) - IDNINT (DD13)
        NA2(I+3) = IABS (II18) - IDNINT (DD14)
        NA2(I+4) = IABS (II3) - IDNINT (DD1)
        RA2(I) = AMIN0 (NA2(I), I)
        RA2(I+1) = AMIN0 (NA2(I+1), I + 1)
        RA2(I+2) = AMIN0 (NA2(I+2), I + 2)
        RA2(I+3) = AMIN0 (NA2(I+3), I + 3)
        RA2(I+4) = AMIN0 (NA2(I+4), I + 4)
        RR3 = FLOAT (NA1(I))
        RR4 = FLOAT (NA1(I+1))
        RR5 = FLOAT (NA1(I+2))
        RR6 = FLOAT (NA1(I+3))
        RR1 = FLOAT (NA1(I+4))
        DC3 = RR3 + CDA1(I)
        DC4 = RR4 + CDA1(I+1)
        DC5 = RR5 + CDA1(I+2)
        DC6 = RR6 + CDA1(I+3)
        DC1 = RR1 + CDA1(I+4)
        RA3(I) = DREAL (DC3)
        RA3(I+1) = DREAL (DC4)
        RA3(I+2) = DREAL (DC5)
        RA3(I+3) = DREAL (DC6)
        RA3(I+4) = DREAL (DC1)
        RR3 = AIMAG (CA1(I))
        RR4 = AIMAG (CA1(I+1))
        RR5 = AIMAG (CA1(I+2))
        RR6 = AIMAG (CA1(I+3))
        RR1 = AIMAG (CA1(I+4))
        DD11 = DBLE (RR3)
        DD12 = DBLE (RR4)
        DD13 = DBLE (RR5)
        DD14 = DBLE (RR6)
        DD1 = DBLE (RR1)
        DA2(I) = DDIM (DA1(I), DD11)
        DA2(I+1) = DDIM (DA1(I+1), DD12)
        DA2(I+2) = DDIM (DA1(I+2), DD13)
        DA2(I+3) = DDIM (DA1(I+3), DD14)
        DA2(I+4) = DDIM (DA1(I+4), DD1)
       END DO

       DO I=1,6,5
        II19 = INT (RA1(I))
        II20 = INT (RA1(I+1))
        II21 = INT (RA1(I+2))
        II22 = INT (RA1(I+3))
        II5 = INT (RA1(I+4))
        II23 = IOR (II19, I)
        II24 = IOR (II20, I + 1)
        II25 = IOR (II21, I + 2)
        II26 = IOR (II22, I + 3)
        II4 = IOR (II5, I + 4)
        II27 = I * I
        II28 = (I + 1) * (I + 1)
        II29 = (I + 2) * (I + 2)
        II30 = (I + 3) * (I + 3)
        II6 = (I + 4) * (I + 4)
        RA4(I) = IDIM (II23, II27)
        RA4(I+1) = IDIM (II24, II28)
        RA4(I+2) = IDIM (II25, II29)
        RA4(I+3) = IDIM (II26, II30)
        RA4(I+4) = IDIM (II4, II6)
        DD15 = DREAL (CDA1(I))
        DD16 = DREAL (CDA1(I+1))
        DD17 = DREAL (CDA1(I+2))
        DD18 = DREAL (CDA1(I+3))
        DD4 = DREAL (CDA1(I+4))
        DC7 = CDA1(I) + DD15
        DC8 = CDA1(I+1) + DD16
        DC9 = CDA1(I+2) + DD17
        DC10 = CDA1(I+3) + DD18
        DC2 = CDA1(I+4) + DD4
        DD19 = DIMAG (DC7)
        DD20 = DIMAG (DC8)
        DD21 = DIMAG (DC9)
        DD22 = DIMAG (DC10)
        DD3 = DIMAG (DC2)
        DA3(I) = DABS (DD19)
        DA3(I+1) = DABS (DD20)
        DA3(I+2) = DABS (DD21)
        DA3(I+3) = DABS (DD22)
        DA3(I+4) = DABS (DD3)
        DD19 = ABS (DA2(I))
        DD20 = ABS (DA2(I+1))
        DD21 = ABS (DA2(I+2))
        DD22 = ABS (DA2(I+3))
        DD3 = ABS (DA2(I+4))
        DD23 = REAL (RA1(I), KIND = 8)
        DD24 = REAL (RA1(I+1), KIND = 8)
        DD25 = REAL (RA1(I+2), KIND = 8)
        DD26 = REAL (RA1(I+3), KIND = 8)
        DD5 = REAL (RA1(I+4), KIND = 8)
        RR7 = -RA2(I)
        RR8 = -RA2(I+1)
        RR9 = -RA2(I+2)
        RR10 = -RA2(I+3)
        RR2 = -RA2(I+4)
        DD27 = REAL (RR7, KIND = 8)
        DD28 = REAL (RR8, KIND = 8)
        DD29 = REAL (RR9, KIND = 8)
        DD30 = REAL (RR10, KIND = 8)
        DD6 = REAL (RR2, KIND = 8)
        DD15 = DD23 * DD27
        DD16 = DD24 * DD28
        DD17 = DD25 * DD29
        DD18 = DD26 * DD30
        DD4 = DD5 * DD6
        DA4(I) = DD19 + DD15
        DA4(I+1) = DD20 + DD16
        DA4(I+2) = DD21 + DD17
        DA4(I+3) = DD22 + DD18
        DA4(I+4) = DD3 + DD4
       END DO

       WRITE (6, *) NA1, NA2, CA1, CDA1
       WRITE (6, *) RA1, RA2, RA3, RA4
       WRITE (6, *) DA1, DA2, DA3, DA4
      END

      PROGRAM MAIN
       IMPLICIT INTEGER*2 (H)
       REAL*8 DA10(-20:30), DA20(-20:30), DA30(-20:30), DA40(-20:30), 
     X   DB10(50,50), DB20(50,50), DB30(50,50), DB40(50,50)
       REAL*8 DX, DY
       INTEGER*4 IA10(50), IA20(50), IA30(50), IA40(50), IB10(50,50), 
     X   IB20(50,50), IB30(50,50)
       LOGICAL*4 LD10(50), LD20(50,50)
       COMPLEX*16 CD10(50), CD20(50), CD30(50)
       INTEGER IT7, IT6, IT4, IT3, IT2, IT1
       PARAMETER (IT7 = 30, IT6 = 20, IT4 = 10, IT3 = 5, IT2 = 2)
       PARAMETER (IT1 = 1)

       DATA DA10/51*2.0D0/ 
       DATA DA20/51*4.0D0/ 
       DATA DA30/51*6.0D0/ 
       DATA DA40/10*2.0D0,10*10.0D0,20*1.2D0,11*2.4D0/ 
       DATA DB10/2500*1.0D0/ 
       DATA DB20/2500*2.0D0/ 
       DATA DB30/2500*3.0D0/ 
       DATA DB40/1000*4.0D0,1000*8.0D0,500*12.0D0/ 
       DATA IA10/50*1/ 
       DATA IA20/50*2/ 
       DATA IA30/50*3/ 
       DATA IA40/50*4/ 
       DATA IB10/2500*2/ 
       DATA IB20/2500*3/ 
       DATA IB30/2500*6/ 
       DATA CD10/50*(2.0D0,4.0D0)/ 
       DATA CD20/50*(3.0D0,9.0D0)/ 
       DATA CD30/50*(4.0D0,16.0D0)/ 
       DATA LD10/50*.FALSE./ 
       DATA LD20/2500*.FALSE./ 
       INTEGER ICNT11, II21, II20, II19, II18, II17, II16, II15, II14, 
     X   II13, II12, II11, II10, II9, II8, II7, II6, II5, II4, II3, II2
     X   , II1, J1, I1
       DOUBLE PRECISION DD24, DD23, DD22, DD21, DD20, DD19, DD18, DD17, 
     X   DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, 
     X   DD5, DD4, DD3, DD2, DD1
       LOGICAL LL1
       COMPLEX*16 DC17, DC16, DC15, DC14, DC13, DC12, DC11, DC10, DC9, 
     X   DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

C$OMP PARALLEL SHARED (DA20,DA30,DA40,DA10,IA10,IA30,IA20,IA40) 
C$OMP& PRIVATE (II2,I1)
C$OMP DO 
       DO II2=0,1
        GO TO (31), II2
        DO I1=2,17,4
         DA20(INT (31-I1, KIND = 2)) = DA30(INT (31-I1, KIND = 2)-2) + 
     X     DA40(I1-17)
         DA30(INT (31-I1, KIND = 2)) = DA10(I1-16) * DA40(I1-16)
         DA40(I1-16) = DA10(I1-15) - DA20(INT (31-I1, KIND = 2)-1)
         DA20(INT (30-I1, KIND = 2)) = DA30(INT (30-I1, KIND = 2)-2) + 
     X     DA40(I1-16)
         DA30(INT (30-I1, KIND = 2)) = DA10(I1-15) * DA40(I1-15)
         DA40(I1-15) = DA10(I1-14) - DA20(INT (30-I1, KIND = 2)-1)
         DA20(INT (29-I1, KIND = 2)) = DA30(INT (29-I1, KIND = 2)-2) + 
     X     DA40(I1-15)
         DA30(INT (29-I1, KIND = 2)) = DA10(I1-14) * DA40(I1-14)
         DA40(I1-14) = DA10(I1-13) - DA20(INT (29-I1, KIND = 2)-1)
         DA20(INT (28-I1, KIND = 2)) = DA30(INT (28-I1, KIND = 2)-2) + 
     X     DA40(I1-14)
         DA30(INT (28-I1, KIND = 2)) = DA10(I1-13) * DA40(I1-13)
         DA40(I1-13) = DA10(I1-12) - DA20(INT (28-I1, KIND = 2)-1)
        END DO
        DO I1=18,20,1
         DA20(INT (31-I1, KIND = 2)) = DA30(INT (31-I1, KIND = 2)-2) + 
     X     DA40(I1-17)
         DA30(INT (31-I1, KIND = 2)) = DA10(I1-16) * DA40(I1-16)
         DA40(I1-16) = DA10(I1-15) - DA20(INT (31-I1, KIND = 2)-1)
        END DO
C$OMP FLUSH
        GO TO 32
   31   DO I1=2,17,4
         IA10(I1+2) = IA30(I1+1) / IA20(I1+3) + IA40(I1*(-2)+51)
         IA40(I1*(-2)+54) = IA10(2) * 2 + IA20(I1-1)
         IA20(I1+1) = IA10(I1+1) + IA40(I1*(-2)+53)
         IA10(I1+3) = IA30(I1+2) / IA20(I1+4) + IA40(I1*(-2)+49)
         IA40(I1*(-2)+52) = IA10(2) * 2 + IA20(I1)
         IA20(I1+2) = IA10(I1+2) + IA40(I1*(-2)+51)
         IA10(I1+4) = IA30(I1+3) / IA20(I1+5) + IA40(I1*(-2)+47)
         IA40(I1*(-2)+50) = IA10(2) * 2 + IA20(I1+1)
         IA20(I1+3) = IA10(I1+3) + IA40(I1*(-2)+49)
         IA10(I1+5) = IA30(I1+4) / IA20(I1+6) + IA40(I1*(-2)+45)
         IA40(I1*(-2)+48) = IA10(2) * 2 + IA20(I1+2)
         IA20(I1+4) = IA10(I1+4) + IA40(I1*(-2)+47)
        END DO
        DO I1=18,20,1
         IA10(I1+2) = IA30(I1+1) / IA20(I1+3) + IA40(I1*(-2)+51)
         IA40(I1*(-2)+54) = IA10(2) * 2 + IA20(I1-1)
         IA20(I1+1) = IA10(I1+1) + IA40(I1*(-2)+53)
        END DO
C$OMP FLUSH
   32   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       INV2 = 4
       WRITE (6, 99) (DA20(K), K=29,10,-1)
       WRITE (6, 99) (DA30(K), K=29,10,-1)
       WRITE (6, 99) (DA40(K), K=-16,2)
       WRITE (6, 88) (IA10(K), K=4,22)
       WRITE (6, 88) (IA20(K), K=1,20)
       WRITE (6, 88) (IA40(K), K=50,10,-2)
       WRITE (6, 999) ' ** INV1 = ', 21, ' ** HINV = ', (11_2)
   99  FORMAT(8F10.3)
  999  FORMAT(A,I4,A,I4)
   88  FORMAT(15I5)

       INV2 = 50
       DO I1=-2,17,4
        DA40(I1-17) = DA20(I1+2) - DA10(I1+10)
        DA40(I1-16) = DA20(I1+3) - DA10(I1+11)
        DA40(I1-15) = DA20(I1+4) - DA10(I1+12)
        DA40(I1-14) = DA20(I1+5) - DA10(I1+13)
       END DO
       DO I1=18,20,1
        DA40(I1-17) = DA20(I1+2) - DA10(I1+10)
       END DO

       DO I1=-2,17,4
        DD7 = DA20(I1+1) * DA40(I1-18)
        DD8 = DA20(I1+2) * DA40(I1-17)
        DD9 = DA20(I1+3) * DA40(I1-16)
        DD1 = DA20(I1+4) * DA40(I1-15)
        DA10(I1-1) = DA30(I1+2) + DD7
        DA10(I1) = DA30(I1+3) + DD8
        DA10(I1+1) = DA30(I1+4) + DD9
        DA10(I1+2) = DA30(I1+5) + DD1
       END DO
       DO I1=18,20,1
        DD1 = DA20(I1+1) * DA40(I1-18)
        DA10(I1-1) = DA30(I1+2) + DD1
       END DO

       DO I1=-2,20,1
        II9 = (23 - I1) / 4
        II8 = I1 + II9 * 4 + 3
        DO J1=I1+3,22,4
         DB10(I1+3,J1) = DB20(J1,2) + DB30(INV2+I1-J1+3,J1+1)
         DB20(5,J1) = DB40(INV2+I1-J1+3,2) * 2D0 - DB10(I1+4,J1+1)
         DB30(INV2+I1-J1+2,J1) = DB20(J1,1) - DB10(I1+3,J1+1)
         DB10(I1+3,J1+1) = DB20(J1+1,2) + DB30(INV2+I1-J1+2,J1+2)
         DB20(5,J1+1) = DB40(INV2+I1-J1+2,2) * 2D0 - DB10(I1+4,J1+2)
         DB30(INV2+I1-J1+1,J1+1) = DB20(J1+1,1) - DB10(I1+3,J1+2)
         DB10(I1+3,J1+2) = DB20(J1+2,2) + DB30(INV2+I1-J1+1,J1+3)
         DB20(5,J1+2) = DB40(INV2+I1-J1+1,2) * 2D0 - DB10(I1+4,J1+3)
         DB30(INV2+I1-J1,J1+2) = DB20(J1+2,1) - DB10(I1+3,J1+3)
         DB10(I1+3,J1+3) = DB20(J1+3,2) + DB30(INV2+I1-J1,J1+4)
         DB20(5,J1+3) = DB40(INV2+I1-J1,2) * 2D0 - DB10(I1+4,J1+4)
         DB30(INV2+I1-J1-1,J1+3) = DB20(J1+3,1) - DB10(I1+3,J1+4)
        END DO
        DO J1=II8,25,1
         DB10(I1+3,J1) = DB20(J1,2) + DB30(INV2+II9*(-4)+II8-J1,J1+1)
         DB20(5,J1) = DB40(INV2+II9*(-4)+II8-J1,2) * 2D0 - DB10(I1+4,J1+
     X     1)
         DB30(INV2+II9*(-4)+II8-J1-1,J1) = DB20(J1,1) - DB10(I1+3,J1+1)
        END DO
        INV2 = INV2 - MAX0 (23 - I1, 0)
        INV2 = 49
       END DO

       DO I1=-2,17,4
        DD10 = DA10(I1-2) * 2D0
        DD11 = DA10(I1-1) * 2D0
        DD12 = DA10(I1) * 2D0
        DD2 = DA10(I1+1) * 2D0
        DA20(I1) = DA40(I1-17) + DD10
        DA20(I1+1) = DA40(I1-16) + DD11
        DA20(I1+2) = DA40(I1-15) + DD12
        DA20(I1+3) = DA40(I1-14) + DD2
       END DO
       DO I1=18,20,1
        DD2 = DA10(I1-2) * 2D0
        DA20(I1) = DA40(I1-17) + DD2
       END DO
       I = 21
       WRITE (6, 99) (DA10(K), K=-3,19)
       WRITE (6, 99) (DA20(K), K=-2,20)
       WRITE (6, 99) (DA40(K), K=-19,1)
       WRITE (6, 99) ((DB10(I,J), I=1,22), J=1,25)
       WRITE (6, 99) (DB20(3,K), K=1,25)
       WRITE (6, 99) (DB30(K,50-K), K=1,25)

       HINT = 2
       II1 = HINT
       II11 = (26 - II1) / 4
       II10 = II1 + II11 * 4
       II13 = (26 - II1) / 4
       II12 = II1 + II13 * 4
       II18 = (26 - II1) / 4
       II17 = II1 + II18 * 4
       DO I1=II1,25
        II3 = IA30(II1-I1+45)
        II4 = I1 * 2 + II1 * (-2) + 2

        DO J1=5,19,8
         IB20(J1*2-1,II4) = IA20(J1) + II3
         IB20(J1*2+3,II4) = IA20(J1+2) + II3
         IB20(J1*2+7,II4) = IA20(J1+4) + II3
         IB20(J1*2+11,II4) = IA20(J1+6) + II3
        END DO
        DO J1=21,25,2
         IB20(J1*2-1,II4) = IA20(J1) + II3
        END DO
       END DO
       DO I1=II1,25
        II5 = I1 * 2 + II1 * (-2) + 2

        DO J1=5,19,8
         IB30(II1-I1+45,J1) = IB10(I1,J1) * IB20(J1,II5) - IB10(I1,J1)
         IB10(I1,J1+25) = IB20(J1*2,II5) + IB30(J1-1,II1-I1+45)
         IB30(II1-I1+45,J1+2) = IB10(I1,J1+2) * IB20(J1+2,II5) - IB10(I1
     X     ,J1+2)
         IB10(I1,J1+27) = IB20(J1*2+4,II5) + IB30(J1+1,II1-I1+45)
         IB30(II1-I1+45,J1+4) = IB10(I1,J1+4) * IB20(J1+4,II5) - IB10(I1
     X     ,J1+4)
         IB10(I1,J1+29) = IB20(J1*2+8,II5) + IB30(J1+3,II1-I1+45)
         IB30(II1-I1+45,J1+6) = IB10(I1,J1+6) * IB20(J1+6,II5) - IB10(I1
     X     ,J1+6)
         IB10(I1,J1+31) = IB20(J1*2+12,II5) + IB30(J1+5,II1-I1+45)
        END DO
        DO J1=21,25,2
         IB30(II1-I1+45,J1) = IB10(I1,J1) * IB20(J1,II5) - IB10(I1,J1)
         IB10(I1,J1+25) = IB20(J1*2,II5) + IB30(J1-1,II1-I1+45)
        END DO
       END DO
       DO I1=II1,22,4
        CD20(I1+1) = CD10(I1*2+II1*(-2)+4) * CD30(I1)
        CD20(I1+2) = CD10(I1*2+II1*(-2)+6) * CD30(I1+1)
        CD20(I1+3) = CD10(I1*2+II1*(-2)+8) * CD30(I1+2)
        CD20(I1+4) = CD10(I1*2+II1*(-2)+10) * CD30(I1+3)
       END DO
       DO I1=II10,25,1
        CD20(I1+1) = CD10(I1*2+II10*(-2)+II11*8+4) * CD30(I1)
       END DO
       DO I1=II1,22,4
        II14 = I1 - II1
        II15 = I1 - II1 + 1
        II16 = I1 - II1 + 2
        II6 = I1 - II1 + 3
        CD10(II14*2+2) = CD20(I1) + CD30(I1+25)
        CD10(II15*2+2) = CD20(I1+1) + CD30(I1+26)
        CD10(II16*2+2) = CD20(I1+2) + CD30(I1+27)
        CD10(II6*2+2) = CD20(I1+3) + CD30(I1+28)
       END DO
       DO I1=II12,25,1
        II6 = I1 - II12 + II13 * 4
        CD10(II6*2+2) = CD20(I1) + CD30(I1+25)
       END DO
       DO I1=II1,22,4
        II19 = I1 - II1
        II20 = I1 - II1 + 1
        II21 = I1 - II1 + 2
        II7 = I1 - II1 + 3
        IA10(II1-I1+47) = IA20(II19*2+HINT+2) - IA30(I1*2)
        IA10(II1-I1+46) = IA20(II20*2+HINT+2) - IA30(I1*2+2)
        IA10(II1-I1+45) = IA20(II21*2+HINT+2) - IA30(I1*2+4)
        IA10(II1-I1+44) = IA20(II7*2+HINT+2) - IA30(I1*2+6)
        DC4 = CD20(I1) * CD20(I1)
        DC5 = CD20(I1+1) * CD20(I1+1)
        DC6 = CD20(I1+2) * CD20(I1+2)
        DC2 = CD20(I1+3) * CD20(I1+3)
        DC7 = CD10(I1*2+II1*(-2)+3) * CD10(I1*2+II1*(-2)+3)
        DC8 = CD10(I1*2+II1*(-2)+5) * CD10(I1*2+II1*(-2)+5)
        DC9 = CD10(I1*2+II1*(-2)+7) * CD10(I1*2+II1*(-2)+7)
        DC3 = CD10(I1*2+II1*(-2)+9) * CD10(I1*2+II1*(-2)+9)
        DC10 = DC4 + DC7
        DC11 = DC5 + DC8
        DC12 = DC6 + DC9
        DC1 = DC2 + DC3
        DC13 = CDSQRT (DC10)
        DC14 = CDSQRT (DC11)
        DC15 = CDSQRT (DC12)
        DC16 = CDSQRT (DC1)
        DD13 = DREAL (DC13)
        DD14 = DREAL (DC14)
        DD15 = DREAL (DC15)
        DD4 = DREAL (DC16)
        DD16 = DNINT (DD13)
        DD17 = DNINT (DD14)
        DD18 = DNINT (DD15)
        DD3 = DNINT (DD4)
        DD19 = DIMAG (DC13)
        DD20 = DIMAG (DC14)
        DD21 = DIMAG (DC15)
        DD6 = DIMAG (DC16)
        DD22 = DNINT (DD19)
        DD23 = DNINT (DD20)
        DD24 = DNINT (DD21)
        DD5 = DNINT (DD6)
        DC13 = DCMPLX (DD16, DD22)
        DC14 = DCMPLX (DD17, DD23)
        DC15 = DCMPLX (DD18, DD24)
        DC16 = DCMPLX (DD3, DD5)
        CD30(I1+3) = DC16
        CD30(I1+2) = DC15
        CD30(I1+1) = DC14
        CD30(I1) = DC13
       END DO
       DO I1=II17,25,1
        II7 = I1 - II17 + II18 * 4
        IA10(II18*(-4)+II17-I1+47) = IA20(II7*2+HINT+2) - IA30(I1*2)
        DC2 = CD20(I1) * CD20(I1)
        DC3 = CD10(I1*2+II17*(-2)+II18*8+3) * CD10(I1*2+II17*(-2)+II18*8
     X    +3)
        DC1 = DC2 + DC3
        DC17 = CDSQRT (DC1)
        DD4 = DREAL (DC17)
        DD3 = DNINT (DD4)
        DD6 = DIMAG (DC17)
        DD5 = DNINT (DD6)
        DC17 = DCMPLX (DD3, DD5)
        CD30(I1) = DC17
       END DO
       I = MAX0 (26 - II1, 0) + HINT
       WRITE (6, 99) (CD10(K), K=2,48,2)
       WRITE (6, 99) (CD20(K), K=3,26)
       WRITE (6, 99) (CD30(K), K=2,25)
       WRITE (6, 88) (IA10(K), K=47,25,-1)
       WRITE (6, 88) ((IB10(I,J), I=2,25), J=30,50)
       WRITE (6, 88) ((IB20(I,J), I=9,49,2), J=2,25,2)
       WRITE (6, 88) ((IB30(I,J), I=45,22,-1), J=5,25,2)

       DO I1=1,30
        IF (I1 .NE. 30) THEN
         IA10(I1) = MAX (IA10(I1), IA30(I1))
         IA20(I1) = MAX (IA20(I1), IA40(I1))
         IA30(I1) = IA10(I1) - IA20(I1)
         IF (IA30(I1)) 33, 34, 35
   33    LD20(1,I1) = .TRUE.
         GO TO 36
   34    LD20(2,I1) = .TRUE.
         GO TO 36
   35    LD20(3,I1) = .TRUE.
        END IF
   36   CONTINUE
       END DO
       I = 31

       WRITE (6, 88) IA10
       WRITE (6, 88) IA20
       WRITE (6, 88) IA30
       WRITE (6, *) ((LD20(I,J), I=1,3), J=1,50)

       DO I1=1,50
        DO J1=1,50
         IA10(J1) = MAX (IB10(I1,J1), IB30(J1,51-I1)) - IABS (MIN (IB20(
     X     J1,J1), IB30(51-I1,J1)))
         IF (IA10(J1) .GT. 0) THEN
          IB30(J1,51-I1) = IA10(J1)
          LD10(J1) = .TRUE.
         END IF
        END DO
       END DO
       ICNT1 = 0
C$OMP PARALLEL SHARED (LD10,LD20,ICNT1) PRIVATE (LL1,J1,I1,ICNT11)
       ICNT11 = 0
C$OMP DO 
       DO J1=1,50
        LL1 = LD10(J1)
        DO I1=1,50
         IF (LL1 .AND. LD20(I1,J1)) THEN
          ICNT11 = ICNT11 + 1
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II22)
       ICNT1 = ICNT1 + ICNT11
C$OMP END CRITICAL (II22)
C$OMP END PARALLEL 

       WRITE (6, *) '  ICNT1 = ', ICNT1
       WRITE (6, 88) IA10
       WRITE (6, *) LD10
       WRITE (6, 88) IB30

       STOP 
      END

      PROGRAM MAIN
       IMPLICIT REAL*8 (D), INTEGER*4 (I), INTEGER*2 (H)
       DIMENSION DA10(100), DA20(100), DA30(100), DA40(100)
       DIMENSION ID10(100), ID20(100), ID30(100), ID40(100)
       DIMENSION RD10(50,50), RD20(50,50), RD30(50,50), RD40(50,50)
       INTEGER IT8, IT7, IT6, IT4, IT3, IT2, IT1
       PARAMETER (IT8 = 50, IT7 = 20, IT6 = 10, IT4 = 5, IT3 = 3)
       PARAMETER (IT2 = 2, IT1 = 1)
       REAL RR1
       PARAMETER (RR1 = 1. / 2.)

       DATA DA10/100*2.0D0/ 
       DATA DA20/100*4.0D0/ 
       DATA DA30/100*8.0D0/ 
       DATA DA40/50*1.0D0,50*10.0D0/ 
       DATA ID10/100*1/ 
       DATA ID20/100*2/ 
       DATA ID30/100*3/ 
       DATA ID40/100*4/ 
       DATA RD10/2500*2.0/ 
       DATA RD20/2500*4.0/ 
       DATA RD30/2500*6.0/ 
       DATA RD40/1000*10.0,1000*12.0,500*24.0/ 
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1, J1, I1
       DOUBLE PRECISION DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO I1=3,27,4
        DD3 = DA30(I1+50) / DA20(I1*2+10)
        DD4 = DA30(I1+51) / DA20(I1*2+12)
        DD5 = DA30(I1+52) / DA20(I1*2+14)
        DD2 = DA30(I1+53) / DA20(I1*2+16)
        DA10(I1+3) = DD3 * 2D0
        DA10(I1+4) = DD4 * 2D0
        DA10(I1+5) = DD5 * 2D0
        DA10(I1+6) = DD2 * 2D0
        DD3 = DA20(I1+7) * DA20(I1+7)
        DD4 = DA20(I1+8) * DA20(I1+8)
        DD5 = DA20(I1+9) * DA20(I1+9)
        DD2 = DA20(I1+10) * DA20(I1+10)
        DA40(I1+2) = DD3 - DA30(I1+10)
        DA40(I1+3) = DD4 - DA30(I1+11)
        DA40(I1+4) = DD5 - DA30(I1+12)
        DA40(I1+5) = DD2 - DA30(I1+13)
       END DO

       DO I1=3,27,4
        DA30(I1+3) = DA10(I1-2) - DA40(I1+1)
        DA30(I1+4) = DA10(I1-1) - DA40(I1+2)
        DA30(I1+5) = DA10(I1) - DA40(I1+3)
        DA30(I1+6) = DA10(I1+1) - DA40(I1+4)
        DA20(I1+2) = DA40(I1+1) + DA10(I1)
        DA20(I1+3) = DA40(I1+2) + DA10(I1+1)
        DA20(I1+4) = DA40(I1+3) + DA10(I1+2)
        DA20(I1+5) = DA40(I1+4) + DA10(I1+3)
       END DO
       WRITE (6, *) (DA10(K), K=6,33)
       WRITE (6, *) (DA20(K), K=10,37)
       WRITE (6, *) (DA30(K), K=13,40)
       WRITE (6, *) (DA40(K), K=7,34)

       DO J1=50,11,-8
        ID40(J1+2) = ID10(J1+5) + IDINT (DA10(J1))
        ID40(J1) = ID10(J1+3) + IDINT (DA10(J1-2))
        ID40(J1-2) = ID10(J1+1) + IDINT (DA10(J1-4))
        ID40(J1-4) = ID10(J1-1) + IDINT (DA10(J1-6))
       END DO
       DO J1=10,5,-2
        ID40(J1+2) = ID10(J1+5) + IDINT (DA10(J1))
       END DO

       DO J1=50,11,-8
        II2 = MAX (ID10(J1+2), ID30(J1+1))
        II3 = MAX (ID10(J1), ID30(J1-1))
        II4 = MAX (ID10(J1-2), ID30(J1-3))
        II1 = MAX (ID10(J1-4), ID30(J1-5))
        ID20(J1*2) = II2 * ID40(J1+6)
        ID20(J1*2-4) = II3 * ID40(J1+4)
        ID20(J1*2-8) = II4 * ID40(J1+2)
        ID20(J1*2-12) = II1 * ID40(J1)
       END DO
       DO J1=10,5,-2
        II1 = MAX (ID10(J1+2), ID30(J1+1))
        ID20(J1*2) = II1 * ID40(J1+6)
       END DO

       DO J1=50,11,-8
        II5 = ID10(J1+7) + ID40(J1+4) * 2
        II6 = ID10(J1+5) + ID40(J1+2) * 2
        II7 = ID10(J1+3) + ID40(J1) * 2
        II8 = ID10(J1+1) + ID40(J1-2) * 2
        ID10(J1+20) = ID20(J1*2-2) - ID30(J1+3)
        ID10(J1+18) = ID20(J1*2-6) - ID30(J1+1)
        ID10(J1+16) = ID20(J1*2-10) - ID30(J1-1)
        ID10(J1+14) = ID20(J1*2-14) - ID30(J1-3)
        ID30(J1+44) = II8
        ID30(J1+46) = II7
        ID30(J1+48) = II6
        ID30(J1+50) = II5
       END DO
       DO J1=10,5,-2
        II9 = ID10(J1+7) + ID40(J1+4) * 2
        ID10(J1+20) = ID20(J1*2-2) - ID30(J1+3)
        ID30(J1+50) = II9
       END DO
       WRITE (6, *) (ID10(K), K=25,70,2)
       WRITE (6, *) (ID20(K), K=10,100,2)
       WRITE (6, *) (ID30(K), K=100,55,-2)
       WRITE (6, *) (ID40(K), K=54,9,-2)

       DO I1=50,13,-4
        DA10(I1+1) = DA30(I1) - DA40(I1+3)
        DA10(I1) = DA30(I1-1) - DA40(I1+2)
        DA10(I1-1) = DA30(I1-2) - DA40(I1+1)
        DA10(I1-2) = DA30(I1-3) - DA40(I1)
       END DO
       DA10(11) = DA30(10) - DA40(13)

       DO I1=50,10,-1
        DO J1=20,7,-6
         RD10(I1,J1) = RD20(J1*2,I1) + RD30(I1-1,J1*2+1)
         RD40(J1,I1) = RD10(J1,I1) + RD20(J1+20,I1) * RR1
         RD20(J1,I1) = RD30(I1,J1+2) - RD10(J1+2,I1-3)
         RD30(I1,J1*2) = RD20(I1,J1+2) * RD10(I1,J1+2)
         RD10(I1,J1-2) = RD20(J1*2-4,I1) + RD30(I1-1,J1*2-3)
         RD40(J1-2,I1) = RD10(J1-2,I1) + RD20(J1+18,I1) * RR1
         RD20(J1-2,I1) = RD30(I1,J1) - RD10(J1,I1-3)
         RD30(I1,J1*2-4) = RD20(I1,J1) * RD10(I1,J1)
         RD10(I1,J1-4) = RD20(J1*2-8,I1) + RD30(I1-1,J1*2-7)
         RD40(J1-4,I1) = RD10(J1-4,I1) + RD20(J1+16,I1) * RR1
         RD20(J1-4,I1) = RD30(I1,J1-2) - RD10(J1-2,I1-3)
         RD30(I1,J1*2-8) = RD20(I1,J1-2) * RD10(I1,J1-2)
        END DO
       END DO

       DO I1=50,13,-4
        DA30(I1+10) = DA10(I1+2) - DA20(I1+1)
        DA30(I1+9) = DA10(I1+1) - DA20(I1)
        DA30(I1+8) = DA10(I1) - DA20(I1-1)
        DA30(I1+7) = DA10(I1-1) - DA20(I1-2)
       END DO
       DA30(20) = DA10(12) - DA20(11)

       DO I1=50,13,-4
        DA20(I1+50) = DA10(I1+3) + DA30(I1+50)
        DA20(I1+49) = DA10(I1+2) + DA30(I1+49)
        DA20(I1+48) = DA10(I1+1) + DA30(I1+48)
        DA20(I1+47) = DA10(I1) + DA30(I1+47)
       END DO
       DA20(60) = DA10(13) + DA30(60)
       I = 9
       WRITE (6, *) (DA10(K), K=51,11,-1)
       WRITE (6, *) (DA20(K), K=100,60,-1)
       WRITE (6, *) (DA30(K), K=60,20,-1)
       WRITE (6, *) ((RD10(I,J), I=50,10,-1), J=20,3,-2)
       WRITE (6, *) ((RD20(I,J), I=20,3,-2), J=50,10,-1)
       WRITE (6, *) ((RD30(I,J), I=50,10,-1), J=40,6,-4)
       WRITE (6, *) ((RD40(I,J), I=20,3,-2), J=50,10,-1)

       DO I1=2,8,3
        ID10(I1*2+1) = ID20(I1*I1) + ID30(I1*I1) - ID40(I1*2+1)
        ID20(I1*I1) = ID40(I1*2) * ID10(I1+1) - ID30(I1*I1-1)
        ID30(I1*I1-2) = ID10(I1*2) / ID20(I1*I1-1) + ID40(I1*3)
        ID40(I1) = ID10(I1) + ID20(I1) + ID30(I1)
        ID10(I1*2+3) = ID20((I1+1)*(I1+1)) + ID30((I1+1)*(I1+1)) - ID40(
     X    I1*2+3)
        ID20((I1+1)*(I1+1)) = ID40(I1*2+2) * ID10(I1+2) - ID30((I1+1)*(
     X    I1+1)-1)
        ID30((I1+1)*(I1+1)-2) = ID10(I1*2+2) / ID20((I1+1)*(I1+1)-1) + 
     X    ID40(I1*3+3)
        ID40(I1+1) = ID10(I1+1) + ID20(I1+1) + ID30(I1+1)
        ID10(I1*2+5) = ID20((I1+2)*(I1+2)) + ID30((I1+2)*(I1+2)) - ID40(
     X    I1*2+5)
        ID20((I1+2)*(I1+2)) = ID40(I1*2+4) * ID10(I1+3) - ID30((I1+2)*(
     X    I1+2)-1)
        ID30((I1+2)*(I1+2)-2) = ID10(I1*2+4) / ID20((I1+2)*(I1+2)-1) + 
     X    ID40(I1*3+6)
        ID40(I1+2) = ID10(I1+2) + ID20(I1+2) + ID30(I1+2)
       END DO
       WRITE (6, *) (ID10(K), K=5,21)
       WRITE (6, *) (ID20(K), K=4,100,2)
       WRITE (6, *) (ID30(K), K=2,98,2)
       WRITE (6, *) (ID40(K), K=2,10)

       DD1 = DA20(100)
       DO I1=3,22,4
        DD1 = DD1 + DA40(I1)
        DD1 = DD1 + DA40(I1+1)
        DD1 = DD1 + DA40(I1+2)
        DD1 = DD1 + DA40(I1+3)
       END DO
       DO I1=23,25,1
        DD1 = DD1 + DA40(I1)
       END DO
       DA20(100) = DD1

       DO I1=3,22,4
        DA40(I1-2) = DA10(I1*4) - DA20(I1*2+3)
        DA40(I1-1) = DA10(I1*4+4) - DA20(I1*2+5)
        DA40(I1) = DA10(I1*4+8) - DA20(I1*2+7)
        DA40(I1+1) = DA10(I1*4+12) - DA20(I1*2+9)
       END DO
       DO I1=23,25,1
        DA40(I1-2) = DA10(I1*4) - DA20(I1*2+3)
       END DO

       DO I1=3,22,4
        DA30(50-I1) = DA20(I1+3) + DA10(I1*2)
        DA10(I1*2) = DA20(I1+50) + DA30(40-I1)
        DA30(49-I1) = DA20(I1+4) + DA10(I1*2+2)
        DA10(I1*2+2) = DA20(I1+51) + DA30(39-I1)
        DA30(48-I1) = DA20(I1+5) + DA10(I1*2+4)
        DA10(I1*2+4) = DA20(I1+52) + DA30(38-I1)
        DA30(47-I1) = DA20(I1+6) + DA10(I1*2+6)
        DA10(I1*2+6) = DA20(I1+53) + DA30(37-I1)
       END DO
       DO I1=23,25,1
        DD7 = DA20(I1+3) + DA10(I1*2)
        DD6 = DA20(I1+50) + DA30(40-I1)
        DA10(I1*2) = DD6
        DA30(50-I1) = DD7
       END DO
       WRITE (6, *) (DA10(K), K=6,50,2)
       WRITE (6, *) (DA20(K), K=99,100)
       WRITE (6, *) (DA30(K), K=25,3,-1)
       WRITE (6, *) (DA40(K), K=1,23)

       STOP 
      END

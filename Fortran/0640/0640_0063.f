      PROGRAM MAIN
      IMPLICIT  REAL*8(D)
      DIMENSION  DA10(30),DA20(30),DA30(30),
     *           DB10(30,30),DB20(30,30),DB30(30,30),
     *           DM10(-30:-1,-30:-1),DM20(-30:-1,-30:-1),
     *           DM30(-30:-1,-30:-1)

      DATA    DA10/30*1.D0/,DA20/30*2.D0/,DA30/30*3.D0/
      DATA    DB10/900*10.D0/,DB20/900*9.D0/,DB30/900*8.D0/
      DATA    DM10/900*4.D0/,DM20/900*5.D0/,DM30/900*6.D0/
      DATA    IT1/1/,IT2/2/,IT3/3/

      DO 10 I=1,20,IT2
        DA10(I) = DA20(I) + DA30(I+IT3)
        DO 10 J=1,I
 10       DB10(I,J) = DB10(I,J) + DB20(I,J) - DA10(J)
      WRITE(6,99) ' (DA10) ',(DA10(K),K=1,20)
      WRITE(6,99) ' (DB10) ',((DB10(I,J),I=1,20,2),J=1,20)
 99   FORMAT(A,(8F8.3))

      DO 20 J=-30,-1,2
       DO 20 K=-30,-1
         DM10(J,K) = DM20(J,K) - DM30(J,K) / 2.0D0
         DB20(-J,-K) = DB20(-J,-K) + DDIM( DB30(-J,-K),DM10(J,K) )
 20   CONTINUE
      WRITE(6,99) ' (DM10) ',DM10
      WRITE(6,99) ' (DB20) ',DB20

      DO 30 I1=30,21,-IT1
        DA20(I1) = DNINT( DSQRT( DA10(I1)*DA30(I1) ) )
        DO 35 J1=I1,11,-1
          DB30(I1,J1) = DMAX1( DB10(I1,J1),DB20(I1,J1) ) - DA20(J1)
           DO 35 K1=J1,1,-1
             DB10(J1,K1) = DMIN1( DB10(J1,K1),DB20(I1,J1) ) * 2.0D0
 35     CONTINUE
        N1 = I1 - 10
        N2 = I1 - 20
        DA20(N2) = DA20(N1) + DA30(I1)
 30   CONTINUE
      WRITE(6,99) ' (DA20) ',(DA20(K),K=21,30)
      WRITE(6,99) ' (DB30) ',((DB30(I,J),I=21,30),J=11,30)
      WRITE(6,99) ' (DB10) ',((DB10(I,J),I=1,20),J=1,30)

      DO 40 I2=2,10
        DO 45 J2=I2+IT3,20
 45       DB20(I2,J2) = DB10(I2,J2) - DM20(-I2,-J2)
        DM20(-1,-I2) = DM10(-I2,-1) - DM30(1-I2,1-I2)
        DM30(-I2,-I2)=DMAX1( DM30(1-I2,-I2),DM30(-I2,1-I2) )
 40   CONTINUE
      WRITE(6,99) ' (DB20) ',((DB20(I,J),I=1,10),J=1,20)
      WRITE(6,99) ' (DM20) ',(DM20(-1,I),I=-10,-1)
      WRITE(6,99) ' (DM30) ',(DM30(I,I),I=-10,-1)

      DO 50 I3=21,30
        N3 = -I3
        DM10(N3,N3) = DM20(N3,N3+2) + DM30(N3+1,N3)
        N2 = -I3+20
        DM30(N2,N2) = DM10(N2,N3) + DM20(N3,N2)
        N1 = -I3+10
        DM20(N1,N1) = DM10(N1,N2) - DM30(N1,N3)
        DO 55 J3=20,11,-1
         DO 55 K3=1,10
           DB10(I3,K3) = DB20(J3,K3) + DB30(I3,J3)
           DB20(K3,J3) = DB30(J3,K3) - DB10(J3,K3)
           DB30(K3,I3) = DB10(J3,I3) * DB20(J3,K3)
 55     CONTINUE
 50   CONTINUE
      WRITE(6,99) ' (DM10) ',(DM10(K,K),K=-30,-21)
      WRITE(6,99) ' (DM20) ',(DM20(K,K),K=-10,-1)
      WRITE(6,99) ' (DM30) ',(DM30(K,K),K=-20,-11)
      WRITE(6,99) ' (DB10) ',((DB10(I,J),I=21,30),J=1,10)
      WRITE(6,99) ' (DB20) ',((DB20(I,J),I=1,10),J=11,20)
      WRITE(6,99) ' (DB30) ',((DB30(I,J),I=1,10),J=20,30)

      STOP
      END

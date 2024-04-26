program  main
  IMPLICIT  REAL*8(D),LOGICAL*4(L)
  COMMON  /BLK1/  DA10(10,10,10),DA20(10,10,10),DA30(10,10,10),DA40(10,10,10)
  COMMON  /BLK2/  LD10(10,10,10),LD20(20,20)
  DIMENSION       DB10(20,20,20),DB20(20,20,20)
  DIMENSION       DC10(20,20),DC20(20,20)
  real(8) :: ans1,ans2
  real(8) :: res1,res2
  DATA   DB10,DB20/8000*1.D0,8000*4.D0/
  DATA   DC10,DC20/400*2.D0,400*-1.D0/
  DATA   IT3/10/,N1/20/
  
  ans1=0
  ans2=872

  DO 5 K=1,10
     DO 5 J=1,10
        DO 5 I=2,10,2
           LD10(I,J,K) = .TRUE.
           LD10(I-1,J,K) = .FALSE.
5 CONTINUE
  DO 6 I=2,20,2
     DO 6 J=1,20
        LD20(I,J) = .TRUE.
        LD20(I-1,J) = .FALSE.
6 CONTINUE
                 
  DO 10 I=1,IT3
     DO 10 J=1,IT3
        DO 10 K=1,IT3
           DA10(I,J,K) = DFLOAT(K) 
           DA20(I,J,K) = DFLOAT(J)
           DA30(I,J,K) = DFLOAT(I)
           DA40(I,J,K) = DFLOAT(K-I)
10 CONTINUE

   CALL  SUB(DB10,DB20,DC10,DC20,N1)

   res1= sum(DA10)
   res2= sum(DC10)

   if(res1 == ans1) then 
      print *,"ok1"
   else
      print *,"ng1",res1
   endif
   if(res2 == ans2) then 
      print *,"ok2"
   else
      print *,"ng2",res2
   endif

end program main

subroutine SUB(DB10,DB20,DC10,DC20,NN)
  IMPLICIT  REAL*8(D),LOGICAL*4(L)
  COMMON  /BLK1/  DA10(10,10,10),DA20(10,10,10),DA30(10,10,10),DA40(10,10,10)
  COMMON  /BLK2/  LD10(10,10,10),LD20(20,20)
  DIMENSION       DB10(NN,NN,NN),DB20(NN,NN,NN)
  DIMENSION       DC10(NN,NN),DC20(NN,NN)

  III= 0
5 CONTINUE
  III=III+1
  DO 10 I=1,5
     DO 20 I1=1,10
        DO 20 I2=1,10
           DO 20 I3=1,10
              DA10(I1,I2,I3) = DA20(I1,I2,I3)+DA30(I1,I2,I3)
              DA20(I1,I2,I3) = DA40(I1,I2,I3)-DA30(I1,I2,I3)
20 CONTINUE

  DO 30 JJ=1,5
     DO 40 J1=2,NN
        DO 40 J2=1,NN-2
           DB10(J1,J2,JJ) =DC10(J1,J2)+DC20(J1,J2)
           IF ( DB10(J1,J2,JJ).GT.DB20(J1,J2,JJ) ) THEN
             N1=J1
             IF (N1.GT.10) N1=10
             N2=J2
             IF (N2.GT.10) N2=10
             LD10(N1,N2,JJ) = .NOT.LD20(J1,J2)
           ENDIF
           DC10(J1-1,J2)= DB20(J1,J2,JJ)
40  CONTINUE

    DO 50 J3=1,5
       DO 50 J4=1,10
          IF ( LD10(J3,J4,JJ) ) THEN
            DX = DC10(J3,J4)*DC20(J4,J3)
          ELSE
            DX = DB10(J3,J4,JJ)
          ENDIF
          DB20(J3,J4+1,JJ)=DB20(J3,J4,JJ)+(DX-DC10(J3,J4))
50  CONTINUE

    DO 60 K1=1,NN
       DO 60 K2=1,NN
          DO 60 K3=1,NN
             DB10(K1,K2,K3) = DMIN1(DB10(K1,K2,K3),DB20(K1,K2,K3))
60  CONTINUE
30 CONTINUE
10 CONTINUE

   LX = LD10(III,1,1).AND.LD20(III,1)
  IF ( LX .AND. III.LT.10 ) GO TO 5

  RETURN
end subroutine sub 

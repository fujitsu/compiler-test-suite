      PROGRAM MAIN


       INTEGER*4 IA(7,7,7), IB(7,7,7), IC(7,7,7), IS1
       INTEGER*2 IHA(7,7,7), IHB(7,7,7), IHC(7,7,7), IHS1
       LOGICAL*4 LA(7,7,7), LB(7,7,7), LC(7,7,7), LS1
       LOGICAL*1 LBA(7,7,7), LBB(7,7,7), LBC(7,7,7), LBS1
       REAL RA(7,7,7), RB(7,7,7), RC(7,7,7), RS1
       REAL*8 DA(7,7,7), DB(7,7,7), DC(7,7,7), DS1
       REAL*8 QA(7,7,7), QB(7,7,7), QC(7,7,7), QS1
       COMPLEX*8 CA(7,7,7), CB(7,7,7), CC(7,7,7), CS1
       COMPLEX*16 CDA(7,7,7), CDB(7,7,7), CDC(7,7,7), CDS1
       COMPLEX*16 CQA(7,7,7), CQB(7,7,7), CQC(7,7,7), CQS1
       INTEGER N3, N2, N1
       PARAMETER (N3 = 7, N2 = 7, N1 = 7)
       INTEGER II6, II5, II4, II3, II2, II1, I9, J9
       REAL RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD4, DD3, DD2, DD1
       COMPLEX CC4, CC3, CC2, CC1
       COMPLEX*16 DC7, DC6, DC5, DC4, DC3, DC2, DC1

C$OMP PARALLEL SHARED (IA,IB,IC,RA,RB,RC,DA,DB,DC,QA,IHA,LA,LC,CA,CB,CC,
C$OMP& CDA,CDB,CDC,CQA) PRIVATE (II1,II2,K,J9,I9)
C$OMP DO 
       DO K=1,7
        DO J9=1,7
         II1 = J9 * K
         II2 = J9 / K
         DO I9=1,6,2
          IA(I9,J9,K) = 0
          IA(I9+1,J9,K) = 0
          IB(I9,J9,K) = I9 + J9 + K
          IB(I9+1,J9,K) = I9 + J9 + K + 1
          IC(I9,J9,K) = I9 - J9 - K
          IC(I9+1,J9,K) = I9 - J9 - K + 1
          RA(I9,J9,K) = 0.
          RA(I9+1,J9,K) = 0.
          RB(I9,J9,K) = I9 + J9 + K
          RB(I9+1,J9,K) = I9 + J9 + K + 1
          RC(I9,J9,K) = I9 - II1
          RC(I9+1,J9,K) = I9 - II1 + 1
          DA(I9,J9,K) = 0D0
          DA(I9+1,J9,K) = 0D0
          DB(I9,J9,K) = I9 + II1
          DB(I9+1,J9,K) = I9 + II1 + 1
          DC(I9,J9,K) = I9 - II2
          DC(I9+1,J9,K) = I9 - II2 + 1
          QA(I9,J9,K) = 0D0
          QA(I9+1,J9,K) = 0D0
          IHA(I9,J9,K) = 0
          IHA(I9+1,J9,K) = 0
          LA(I9,J9,K) = .FALSE.
          LA(I9+1,J9,K) = .FALSE.
          LC(I9,J9,K) = 1 .EQ. MOD (I9, 3)
          LC(I9+1,J9,K) = 1 .EQ. MOD (I9 + 1, 3)
          CA(I9,J9,K) = (0., 0.)
          CA(I9+1,J9,K) = (0., 0.)
          CB(I9,J9,K) = I9 - J9 + K
          CB(I9+1,J9,K) = I9 - J9 + K + 1
          CC(I9,J9,K) = I9 + II1
          CC(I9+1,J9,K) = I9 + II1 + 1
          CDA(I9,J9,K) = 0
          CDA(I9+1,J9,K) = 0
          CDB(I9,J9,K) = I9 - K + J9
          CDB(I9+1,J9,K) = I9 - K + J9 + 1
          CDC(I9,J9,K) = I9 + J9 + K
          CDC(I9+1,J9,K) = I9 + J9 + K + 1
          CQA(I9,J9,K) = 0
          CQA(I9+1,J9,K) = 0
         END DO
         IA(7,J9,K) = 0
         IB(7,J9,K) = J9 + K + 7
         IC(7,J9,K) = 7 - (J9 + K)
         RA(7,J9,K) = 0.
         RB(7,J9,K) = J9 + K + 7
         RC(7,J9,K) = 7 - II1
         DA(7,J9,K) = 0D0
         DB(7,J9,K) = II1 + 7
         DC(7,J9,K) = 7 - II2
         QA(7,J9,K) = 0D0
         IHA(7,J9,K) = 0
         LA(7,J9,K) = .FALSE.
         LC(7,J9,K) = .TRUE.
         CA(7,J9,K) = (0., 0.)
         CB(7,J9,K) = K - J9 + 7
         CC(7,J9,K) = II1 + 7
         CDA(7,J9,K) = 0
         CDB(7,J9,K) = J9 - K + 7
         CDC(7,J9,K) = J9 + K + 7
         CQA(7,J9,K) = 0
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       I = 8
       J = 8

       WRITE (6, *) '----- TEST NO.1 -----'
       DO K1=1,7
        IA(1,1,K1) = IB(1,1,K1) + IC(1,1,K1)
        IA(2,1,K1) = IB(2,1,K1) + IC(2,1,K1)
        IA(3,1,K1) = IB(3,1,K1) + IC(3,1,K1)
        IA(4,1,K1) = IB(4,1,K1) + IC(4,1,K1)
        IA(5,1,K1) = IB(5,1,K1) + IC(5,1,K1)
        IA(6,1,K1) = IB(6,1,K1) + IC(6,1,K1)
        IA(7,1,K1) = IB(7,1,K1) + IC(7,1,K1)
        IA(1,2,K1) = IB(1,2,K1) + IC(1,2,K1)
        IA(2,2,K1) = IB(2,2,K1) + IC(2,2,K1)
        IA(3,2,K1) = IB(3,2,K1) + IC(3,2,K1)
        IA(4,2,K1) = IB(4,2,K1) + IC(4,2,K1)
        IA(5,2,K1) = IB(5,2,K1) + IC(5,2,K1)
        IA(6,2,K1) = IB(6,2,K1) + IC(6,2,K1)
        IA(7,2,K1) = IB(7,2,K1) + IC(7,2,K1)
        IA(1,3,K1) = IB(1,3,K1) + IC(1,3,K1)
        IA(2,3,K1) = IB(2,3,K1) + IC(2,3,K1)
        IA(3,3,K1) = IB(3,3,K1) + IC(3,3,K1)
        IA(4,3,K1) = IB(4,3,K1) + IC(4,3,K1)
        IA(5,3,K1) = IB(5,3,K1) + IC(5,3,K1)
        IA(6,3,K1) = IB(6,3,K1) + IC(6,3,K1)
        IA(7,3,K1) = IB(7,3,K1) + IC(7,3,K1)
        IA(1,4,K1) = IB(1,4,K1) + IC(1,4,K1)
        IA(2,4,K1) = IB(2,4,K1) + IC(2,4,K1)
        IA(3,4,K1) = IB(3,4,K1) + IC(3,4,K1)
        IA(4,4,K1) = IB(4,4,K1) + IC(4,4,K1)
        IA(5,4,K1) = IB(5,4,K1) + IC(5,4,K1)
        IA(6,4,K1) = IB(6,4,K1) + IC(6,4,K1)
        IA(7,4,K1) = IB(7,4,K1) + IC(7,4,K1)
       END DO
       DO J1=5,7,1
        DO K1=1,7
         IA(1,J1,K1) = IB(1,J1,K1) + IC(1,J1,K1)
         IA(2,J1,K1) = IB(2,J1,K1) + IC(2,J1,K1)
         IA(3,J1,K1) = IB(3,J1,K1) + IC(3,J1,K1)
         IA(4,J1,K1) = IB(4,J1,K1) + IC(4,J1,K1)
         IA(5,J1,K1) = IB(5,J1,K1) + IC(5,J1,K1)
         IA(6,J1,K1) = IB(6,J1,K1) + IC(6,J1,K1)
         IA(7,J1,K1) = IB(7,J1,K1) + IC(7,J1,K1)
        END DO
       END DO

       WRITE (6, *) '----- TEST NO.2 -----'
       DO K2=1,7
        RR1 = RB(1,K2,5) * RC(1,K2,5)
        RR2 = RB(2,K2,5) * RC(2,K2,5)
        RR3 = RB(3,K2,5) * RC(3,K2,5)
        RR4 = RB(4,K2,5) * RC(4,K2,5)
        DO J2=1,7
         RA(1,K2,5) = RR1
         RA(2,K2,5) = RR2
         RA(3,K2,5) = RR3
         RA(4,K2,5) = RR4
         RA(5,K2,5) = RB(5,K2,5) * RC(5,K2,5)
         RA(6,K2,5) = RB(6,K2,5) * RC(6,K2,5)
         RA(7,K2,5) = RB(7,K2,5) * RC(7,K2,5)
        END DO
       END DO

       WRITE (6, *) '----- TEST NO.3 -----'
       DO J3=1,7
        DD1 = DB(1,J3,3) - DC(1,J3,3)
        DD2 = DB(2,J3,3) - DC(2,J3,3)
        DD3 = DB(3,J3,3) - DC(3,J3,3)
        DD4 = DB(4,J3,3) - DC(4,J3,3)
        DO K3=1,7
         DA(1,J3,3) = DD1
         DA(2,J3,3) = DD2
         DA(3,J3,3) = DD3
         DA(4,J3,3) = DD4
         DA(5,J3,3) = DB(5,J3,3) - DC(5,J3,3)
         DA(6,J3,3) = DB(6,J3,3) - DC(6,J3,3)
         DA(7,J3,3) = DB(7,J3,3) - DC(7,J3,3)
        END DO
       END DO

       WRITE (6, *) '----- TEST NO.4 -----'
       DO K4=1,2
        CA(1,1,K4) = CB(1,1,K4) + CC(1,1,K4)
        CA(2,1,K4) = CB(2,1,K4) + CC(2,1,K4)
        CA(3,1,K4) = CB(3,1,K4) + CC(3,1,K4)
        CA(4,1,K4) = CB(4,1,K4) + CC(4,1,K4)
        CA(5,1,K4) = CB(5,1,K4) + CC(5,1,K4)
        CA(6,1,K4) = CB(6,1,K4) + CC(6,1,K4)
        CA(7,1,K4) = CB(7,1,K4) + CC(7,1,K4)
        CA(1,2,K4) = CB(1,2,K4) + CC(1,2,K4)
        CA(2,2,K4) = CB(2,2,K4) + CC(2,2,K4)
        CA(3,2,K4) = CB(3,2,K4) + CC(3,2,K4)
        CA(4,2,K4) = CB(4,2,K4) + CC(4,2,K4)
        CA(5,2,K4) = CB(5,2,K4) + CC(5,2,K4)
        CA(6,2,K4) = CB(6,2,K4) + CC(6,2,K4)
        CA(7,2,K4) = CB(7,2,K4) + CC(7,2,K4)
       END DO

       WRITE (6, *) '----- TEST NO.5 -----'
C$OMP PARALLEL SHARED (CB,CC,CA) PRIVATE (CC1,CC2,CC3,CC4,K5,I5)
C$OMP DO 
       DO K5=1,7
        CC1 = CB(1,K5,2) + CC(1,K5,2)
        CC2 = CB(2,K5,2) + CC(2,K5,2)
        CC3 = CB(3,K5,2) + CC(3,K5,2)
        CC4 = CB(4,K5,2) + CC(4,K5,2)
        DO I5=1,7
         CA(1,K5,2) = CC1
         CA(2,K5,2) = CC2
         CA(3,K5,2) = CC3
         CA(4,K5,2) = CC4
         CA(5,K5,2) = CB(5,K5,2) + CC(5,K5,2)
         CA(6,K5,2) = CB(6,K5,2) + CC(6,K5,2)
         CA(7,K5,2) = CB(7,K5,2) + CC(7,K5,2)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.6 -----'
       DC1 = CDB(6,6,1) + CDC(6,6,1)
       DC2 = CDB(6,6,2) + CDC(6,6,2)
       DC3 = CDB(6,6,3) + CDC(6,6,3)
       DC4 = CDB(6,6,4) + CDC(6,6,4)
       DC5 = CDB(6,6,5) + CDC(6,6,5)
       DC6 = CDB(6,6,6) + CDC(6,6,6)
       DC7 = CDB(6,6,7) + CDC(6,6,7)
       CDA(6,6,7) = DC7
       CDA(6,6,6) = DC6
       CDA(6,6,5) = DC5
       CDA(6,6,4) = DC4
       CDA(6,6,3) = DC3
       CDA(6,6,2) = DC2
       CDA(6,6,1) = DC1
       WRITE (6, *) ' I , J = ', I, J

       WRITE (6, *) '----- TEST NO.7 -----'
       II3 = IB(1,2,3) + IC(1,2,4)
       II4 = IB(2,2,3) + IC(2,2,4)
       II5 = IB(3,2,3) + IC(3,2,4)
       II6 = IB(4,2,3) + IC(4,2,4)
       DO I7=1,7
        DO K7=1,7
         IA(1,2,2) = II3
         IA(2,2,2) = II4
         IA(3,2,2) = II5
         IA(4,2,2) = II6
         IA(5,2,2) = IB(5,2,3) + IC(5,2,4)
         IA(6,2,2) = IB(6,2,3) + IC(6,2,4)
         IA(7,2,2) = IB(7,2,3) + IC(7,2,4)
        END DO
       END DO

       WRITE (6, *) '----- TEST NO.8 -----'
       DO K8=2,3
        LA(2,2,K8) = LA(1,1,K8-1) .OR. LC(2,2,K8)
        LA(2,3,K8) = LA(1,2,K8-1) .OR. LC(2,3,K8)
        LA(3,2,K8) = LA(2,1,K8-1) .OR. LC(3,2,K8)
        LA(3,3,K8) = LA(2,2,K8-1) .OR. LC(3,3,K8)
       END DO


       WRITE (6, *) 'IA  = ', IA
       WRITE (6, *) 'LA  = ', LA
       WRITE (6, *) 'RA  = ', RA
       WRITE (6, *) 'DA  = ', DA
       WRITE (6, *) 'DC  = ', DC
       WRITE (6, *) 'IHA  = ', IHA
       WRITE (6, *) 'QA  = ', QA
       WRITE (6, *) 'CA  = ', CA
       WRITE (6, *) 'CDA  = ', CDA
       WRITE (6, *) 'CQA  = ', CQA

       STOP 
      END
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

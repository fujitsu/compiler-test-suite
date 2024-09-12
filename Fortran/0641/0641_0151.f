      PROGRAM MAIN                                                    

      REAL    *4  RA (10),RB (10,10),RC (10,10,10),RD (10,10,10,10)     
      REAL    *8  DA (10),DB(10,10) ,DC(10,10,10) ,DD(10,10,10,10)      
      REAL    *8  QA (10),QB (10,10),QC(10,10,10)                       
      COMPLEX *8  CEA(10), CEB(10,10),CEC(10,10,10)                     

      DATA  RA/10*1./,RB/100*1./,RC/1000*1./,RD/10000*1./               
      DATA  DA/10*1./,DB/100*1./,DC/1000*1./,DD/10000*1./               
      DATA  QA/10*1./,QB/100*1./,QC/1000*1./,J2/2/,ID1/11/              
      DATA  CEA/10*(1.,1.)/, CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/         

      DO 11 I1=1,10                                                     
      DO 12 I2=1,10                                                     
        DO 13 I3=1,10                                                   
          DO 14 I4=1,10                                                 
            RD(I1,I2,I3,I4)=RA(I1)+RA(I2)+RA(I3)+RA(I4)                 
            DD(I1,I3,I2,I4)=DA(I1)*DA(I2)+DA(I3)-DA(I4)                 
            IF(RD(I1,I2,I3,I4).GT.3.) THEN                              
              RB(I1,I2)=0.0                                             
            ENDIF                                                       
   14     CONTINUE                                                      
          RC(I3,I2,I1)=RD(I3,I2,I1,I1)                                  
          QC(I3,I2,I1)=RC(I3,I2,I1)*RA(I1)                              
          ID1=ID1-1                                                     
          IF(ID1.LE.0) THEN                                             
            GO TO 13                                                    
          ELSE                                                          
            DC(ID1,ID1,ID1)=0.0                                         
          ENDIF                                                         
   13   CONTINUE                                                        
        RB(I2*J2-I2,I1)=RA(I2)*RA(I1)+CEB(I2,I1)                        
        ID1=11                                                          
   12 CONTINUE                                                          
   11 CONTINUE                                                          
      WRITE(6,*) 'RD=',RD,'DD=',DD,'RB=',RB,'RC=',RC,'QC=',QC,'DC=',DC  

      DO 21 I1=1,10                                                     
      DO 22 I2=1,10                                                     
        IF(RA(I1).EQ.1.OR.RB(I2,I1).NE.1) THEN                          
          CALL SUB1(CEB,CEC,10)                                         
        ENDIF                                                           
        DB(I1,I2)=CEA(I1)+CEB(I1,I2)*CEA(I1)                            
        QB(I1,I2)=DB(I1,I2)+RA(I1)                                      
        DO 23 I3=1,10                                                   
          IF(I1+I2-I3) 24,25,26                                         
   24       RC(I1,I2,I3)=0.0                                            
            GO TO 27                                                    
   25       RC(I1,I2,I3)=RA(I1)                                         
            GO TO 27                                                    
   26       RC(I1,I2,I3)=DA(I1)                                         
   27       DC(I1,I3,I2)=DC(I1,I3,I2)+I1+I2+I3                          
   23   CONTINUE                                                        
   22 CONTINUE                                                          
   21 CONTINUE                                                          
      WRITE(6,*) 'DA=',DA,'QA=',QA,'RC=',RC,'DC=',DC                    
      STOP                                                              
      END                                                               
    
      SUBROUTINE SUB1 ( CEB, CEC, N )
       COMPLEX*8 CEB(N,N), CEC(N,N,N)
       COMPLEX CC30, CC29, CC28, CC27, CC26, CC25, CC24, CC23, CC22, 
     X   CC21, CC20, CC19, CC18, CC17, CC16, CC15, CC14, CC13, CC12, 
     X   CC11, CC10, CC9, CC8, CC7, CC6, CC5, CC4, CC3, CC2, CC1

C$OMP PARALLEL SHARED (CEB,CEC) PRIVATE (CC1,CC2,CC3,CC4,CC5,CC6,CC7,CC8
C$OMP& ,CC9,CC10,CC11,CC12,CC13,CC14,CC15,CC16,CC17,CC18,CC19,CC20,CC21,
C$OMP& CC22,CC23,CC24,CC25,CC26,CC27,CC28,CC29,CC30,I1,I2,I3)
C$OMP DO 
       DO I1=1,10
        DO I2=1,7,4
         DO I3=1,6,5
          CC1 = CEB(I3,I2) + CEC(I3,I2,I1)
          CC2 = CEB(I3+1,I2) + CEC(I3+1,I2,I1)
          CC3 = CEB(I3+2,I2) + CEC(I3+2,I2,I1)
          CC4 = CEB(I3+3,I2) + CEC(I3+3,I2,I1)
          CC5 = CEB(I3+4,I2) + CEC(I3+4,I2,I1)
          CC6 = CEB(I3,I2+1) + CEC(I3,I2+1,I1)
          CC7 = CEB(I3+1,I2+1) + CEC(I3+1,I2+1,I1)
          CC8 = CEB(I3+2,I2+1) + CEC(I3+2,I2+1,I1)
          CC9 = CEB(I3+3,I2+1) + CEC(I3+3,I2+1,I1)
          CC10 = CEB(I3+4,I2+1) + CEC(I3+4,I2+1,I1)
          CC11 = CEB(I3,I2+2) + CEC(I3,I2+2,I1)
          CC12 = CEB(I3+1,I2+2) + CEC(I3+1,I2+2,I1)
          CC13 = CEB(I3+2,I2+2) + CEC(I3+2,I2+2,I1)
          CC14 = CEB(I3+3,I2+2) + CEC(I3+3,I2+2,I1)
          CC15 = CEB(I3+4,I2+2) + CEC(I3+4,I2+2,I1)
          CC16 = CEB(I3,I2+3) + CEC(I3,I2+3,I1)
          CC17 = CEB(I3+1,I2+3) + CEC(I3+1,I2+3,I1)
          CC18 = CEB(I3+2,I2+3) + CEC(I3+2,I2+3,I1)
          CC19 = CEB(I3+3,I2+3) + CEC(I3+3,I2+3,I1)
          CC20 = CEB(I3+4,I2+3) + CEC(I3+4,I2+3,I1)
          CEC(I3+4,I2+3,I1) = CC20
          CEC(I3+3,I2+3,I1) = CC19
          CEC(I3+2,I2+3,I1) = CC18
          CEC(I3+1,I2+3,I1) = CC17
          CEC(I3,I2+3,I1) = CC16
          CEC(I3+4,I2+2,I1) = CC15
          CEC(I3+3,I2+2,I1) = CC14
          CEC(I3+2,I2+2,I1) = CC13
          CEC(I3+1,I2+2,I1) = CC12
          CEC(I3,I2+2,I1) = CC11
          CEC(I3+4,I2+1,I1) = CC10
          CEC(I3+3,I2+1,I1) = CC9
          CEC(I3+2,I2+1,I1) = CC8
          CEC(I3+1,I2+1,I1) = CC7
          CEC(I3,I2+1,I1) = CC6
          CEC(I3+4,I2,I1) = CC5
          CEC(I3+3,I2,I1) = CC4
          CEC(I3+2,I2,I1) = CC3
          CEC(I3+1,I2,I1) = CC2
          CEC(I3,I2,I1) = CC1
         END DO
        END DO
        DO I3=1,6,5
         CC21 = CEB(I3,9) + CEC(I3,9,I1)
         CC22 = CEB(I3+1,9) + CEC(I3+1,9,I1)
         CC23 = CEB(I3+2,9) + CEC(I3+2,9,I1)
         CC24 = CEB(I3+3,9) + CEC(I3+3,9,I1)
         CC25 = CEB(I3+4,9) + CEC(I3+4,9,I1)
         CC26 = CEB(I3,10) + CEC(I3,10,I1)
         CC27 = CEB(I3+1,10) + CEC(I3+1,10,I1)
         CC28 = CEB(I3+2,10) + CEC(I3+2,10,I1)
         CC29 = CEB(I3+3,10) + CEC(I3+3,10,I1)
         CC30 = CEB(I3+4,10) + CEC(I3+4,10,I1)
         CEC(I3+4,10,I1) = CC30
         CEC(I3+3,10,I1) = CC29
         CEC(I3+2,10,I1) = CC28
         CEC(I3+1,10,I1) = CC27
         CEC(I3,10,I1) = CC26
         CEC(I3+4,9,I1) = CC25
         CEC(I3+3,9,I1) = CC24
         CEC(I3+2,9,I1) = CC23
         CEC(I3+1,9,I1) = CC22
         CEC(I3,9,I1) = CC21
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I1=1,10
        DO I2=1,7,4
         DO I3=1,10
          IF (CEC(I3,I2,I1) .EQ. (1.,1.)) THEN
           CEC(I3,I2,I1) = CEB(I3,3) + CEC(I3,I2,I1)
          END IF
          IF (CEC(I3,I2+1,I1) .EQ. (1.,1.)) THEN
           CEC(I3,I2+1,I1) = CEB(I3,3) + CEC(I3,I2+1,I1)
          END IF
          IF (CEC(I3,I2+2,I1) .EQ. (1.,1.)) THEN
           CEC(I3,I2+2,I1) = CEB(I3,3) + CEC(I3,I2+2,I1)
          END IF
          IF (CEC(I3,I2+3,I1) .EQ. (1.,1.)) THEN
           CEC(I3,I2+3,I1) = CEB(I3,3) + CEC(I3,I2+3,I1)
          END IF
         END DO
        END DO
        DO I2=9,10,1
         DO I3=1,10
          IF (CEC(I3,I2,I1) .EQ. (1.,1.)) THEN
           CEC(I3,I2,I1) = CEB(I3,3) + CEC(I3,I2,I1)
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       RETURN 
      END
 
 

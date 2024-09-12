      PROGRAM MAIN                                                    

      REAL    *4  RA (10),RB (10,10),RC (10,10,10)                      
      REAL    *8          DB (10,10),DC (10,10,10)                      
      COMPLEX *8          CEB(10,10)                                    
      LOGICAL *1          LBB(10,10)                                    
      LOGICAL *4          L4B(10,10),L4C(10,10,10)                      

      DATA  RA/10*1./,RB/100*1./,RC/1000*1./                            
      DATA            DB/100*1./,DC/1000*1/                             
      DATA            CEB/100*(1.,1.)/                                  
      DATA                 L4B/100*.TRUE./,L4C/1000*.TRUE./             
      DATA                 LBB/100*.TRUE./                              
      DATA             J1/1/,RSUM/0./                                   

      DO 11 I1=1,10                                                     
      DO 12 I2=1,10                                                     
      DO 13 I3=1,10                                                     
        RC(I3,I2,I1)=RC(I3,I2,I1)+DC(I3,I2,I1)                          
        IF(L4C(I3,I2,I1)) GO TO 13                                      
         IF(I3.GT.2.AND.I3.LT.8) THEN                                   
           DC(I3*J1-1,I2,I1)=RC(I3,I2,I1)+1.                            
         ELSE                                                           
           DC(I3*J1-1,I2,I1)=0.                                         
         ENDIF                                                          
   13 CONTINUE                                                          
        RB(I2,I1)=CEB(I2,I1)                                            
        RS1=RB(I2,I1)*2.                                                
        RS2=RB(I2,I1)*4.-10.                                            
        IF(RS1.GT.RS2) THEN                                             
          CEB(I2,I1)=CMPLX(RS1,RS2)                                     
          DB(I2,I1) =RS1+RS2                                            
        ELSE                                                            
          CEB(I2,I1)=0.0                                                
          DB(I2,I1)=0.0                                                 
        ENDIF                                                           
   12 CONTINUE                                                          
   11 CONTINUE                                                          
      WRITE(6,*) 'RC=',RC,'DC=',DC,'RB=',RB,'CEB=',CEB,'DB=',DB         
      WRITE(6,*) 'RSUM=',RSUM                                           

      DO 21 I1=1,10                                                     
      DO 22 I2=1,10                                                     
        RB(I1,I2)=I1+I2                                                 
        CEB(I1,I2)=CMPLX(RB(I1,I2),RA(I2))                              
        RA(I2)=I2                                                       
        L4B(I1,I2)=.TRUE.                                               
        LBB(I1,I2)=I1.GT.I2                                             
        DO 23 I3=1,7                                                    
          RC(I2,I1,I3)=I1+I2+I3                                         
          DC(I2,I1,I3)=RC(I2,I1,10)                                     
   23   CONTINUE                                                        
   22 CONTINUE                                                          
   21 CONTINUE                                                          
      WRITE(6,*) 'RB=',RB,'CEB=',CEB,'RA=',RA,'L4B=',L4B,'LBB=',LBB     
      WRITE(6,*) 'RC=',RC,'DC=',DC                                      

      DO 31 I1=1,10                                                     
        IF(I1.GT.7) GO TO 33                                            
        DO 32 I2=1,10                                                   
          RB(I2,I1)=RB(I2,I1)*CEB(I2,I1)                                
   32   CONTINUE                                                        
   33   CALL SUB(RA,RB,RC,10)                                           
   31 CONTINUE                                                          
      WRITE(6,*) 'RA=',RA,'RB=',RB,'RC=',RC                             
      STOP                                                              
      END                                                               
    
      SUBROUTINE SUB ( RA, RB, RC, N )
       REAL*4 RA(N), RB(N,N), RC(N,N,N)
       REAL*8 DB(10,10), DC(10,10,10)

       DATA DB/100*1./ 
       DATA DC/1000*1./ 
       DATA RSUM/0.0/ 
       INTEGER II12, II11, II10, II9, II8, II7, II6, II5, II4, II3, II2
     X   , II1
       II2 = N / 4
       II1 = II2 * 4 + 1
       II4 = N / 4
       II3 = II4 * 4 + 1
       II6 = N / 4
       II5 = II6 * 4 + 1
       II8 = N / 4
       II7 = II8 * 4 + 1
       II10 = N / 4
       II9 = II10 * 4 + 1

       II12 = N / 4
       II11 = II12 * 4 + 1
       DO I1=1,N
        DO I2=1,N-3,4
         DO I3=1,N-3,4
          RB(I3,I2) = 1. + DB(I3,I2)
          RB(I3+1,I2) = 1. + DB(I3+1,I2)
          RB(I3+2,I2) = 1. + DB(I3+2,I2)
          RB(I3+3,I2) = 1. + DB(I3+3,I2)
          RB(I3,I2+1) = 1. + DB(I3,I2+1)
          RB(I3+1,I2+1) = 1. + DB(I3+1,I2+1)
          RB(I3+2,I2+1) = 1. + DB(I3+2,I2+1)
          RB(I3+3,I2+1) = 1. + DB(I3+3,I2+1)
          RB(I3,I2+2) = 1. + DB(I3,I2+2)
          RB(I3+1,I2+2) = 1. + DB(I3+1,I2+2)
          RB(I3+2,I2+2) = 1. + DB(I3+2,I2+2)
          RB(I3+3,I2+2) = 1. + DB(I3+3,I2+2)
          RB(I3,I2+3) = 1. + DB(I3,I2+3)
          RB(I3+1,I2+3) = 1. + DB(I3+1,I2+3)
          RB(I3+2,I2+3) = 1. + DB(I3+2,I2+3)
          RB(I3+3,I2+3) = 1. + DB(I3+3,I2+3)
         END DO
         DO I3=II3,N,1
          RB(I3,I2) = 1. + DB(I3,I2)
          RB(I3,I2+1) = 1. + DB(I3,I2+1)
          RB(I3,I2+2) = 1. + DB(I3,I2+2)
          RB(I3,I2+3) = 1. + DB(I3,I2+3)
         END DO
        END DO
        DO I2=I2,N,1
         DO I3=1,N-3,4
          RB(I3,I2) = 1. + DB(I3,I2)
          RB(I3+1,I2) = 1. + DB(I3+1,I2)
          RB(I3+2,I2) = 1. + DB(I3+2,I2)
          RB(I3+3,I2) = 1. + DB(I3+3,I2)
         END DO
         DO I3=II5,N,1
          RB(I3,I2) = 1. + DB(I3,I2)
         END DO
        END DO
        RA(I1) = RB(I1,I1)
       END DO
C$OMP PARALLEL SHARED (N,RC,DC,II7) PRIVATE (I2,I1,I3)
C$OMP DO 
       DO I2=1,N-3,4

        DO I1=1,N
         DO I3=1,N-3,4
          RC(I3,I2,I3) = 2. + DC(I3,I2,I1)
          RC(I3+1,I2,I3+1) = 2. + DC(I3+1,I2,I1)
          RC(I3+2,I2,I3+2) = 2. + DC(I3+2,I2,I1)
          RC(I3+3,I2,I3+3) = 2. + DC(I3+3,I2,I1)
          RC(I3,I2+1,I3) = 2. + DC(I3,I2+1,I1)
          RC(I3+1,I2+1,I3+1) = 2. + DC(I3+1,I2+1,I1)
          RC(I3+2,I2+1,I3+2) = 2. + DC(I3+2,I2+1,I1)
          RC(I3+3,I2+1,I3+3) = 2. + DC(I3+3,I2+1,I1)
          RC(I3,I2+2,I3) = 2. + DC(I3,I2+2,I1)
          RC(I3+1,I2+2,I3+1) = 2. + DC(I3+1,I2+2,I1)
          RC(I3+2,I2+2,I3+2) = 2. + DC(I3+2,I2+2,I1)
          RC(I3+3,I2+2,I3+3) = 2. + DC(I3+3,I2+2,I1)
          RC(I3,I2+3,I3) = 2. + DC(I3,I2+3,I1)
          RC(I3+1,I2+3,I3+1) = 2. + DC(I3+1,I2+3,I1)
          RC(I3+2,I2+3,I3+2) = 2. + DC(I3+2,I2+3,I1)
          RC(I3+3,I2+3,I3+3) = 2. + DC(I3+3,I2+3,I1)
         END DO
         DO I3=II7,N,1
          RC(I3,I2,I3) = 2. + DC(I3,I2,I1)
          RC(I3,I2+1,I3) = 2. + DC(I3,I2+1,I1)
          RC(I3,I2+2,I3) = 2. + DC(I3,I2+2,I1)
          RC(I3,I2+3,I3) = 2. + DC(I3,I2+3,I1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=II1,N,1

        DO I1=1,N
         DO I3=1,N-3,4
          RC(I3,I2,I3) = 2. + DC(I3,I2,I1)
          RC(I3+1,I2,I3+1) = 2. + DC(I3+1,I2,I1)
          RC(I3+2,I2,I3+2) = 2. + DC(I3+2,I2,I1)
          RC(I3+3,I2,I3+3) = 2. + DC(I3+3,I2,I1)
         END DO
         DO I3=II9,N,1
          RC(I3,I2,I3) = 2. + DC(I3,I2,I1)
         END DO
        END DO
       END DO

       DO I1=1,N-3,4
        RSUM = RSUM + RA(I1)
        RSUM = RSUM + RA(I1+1)
        RSUM = RSUM + RA(I1+2)
        RSUM = RSUM + RA(I1+3)
       END DO
       DO I1=II11,N,1
        RSUM = RSUM + RA(I1)
       END DO
       WRITE (6, *) 'RA=', RA, 'RB=', RB, 'RC=', RC, 'RSUM=', RSUM
       RETURN 
      END

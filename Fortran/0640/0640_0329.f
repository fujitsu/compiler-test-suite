      PROGRAM MAIN                                                    
      CALL SUB1                                                         
      CALL SUB2                                                         
      CALL SUB3                                                         
      CALL SUB4                                                        
      STOP                                                              
      END                                                               

      SUBROUTINE SUB1                                                   
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(-5:15,-5:15)/241*2.0,200*1./,RSM1/0.0/,RSUM/0./    
      REAL    *8  DC(-5:15,-5:15)/241*1.0,200*2./,DA(-5:15)/10*5.,11*3./
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      COMPLEX *8  CEA(-5:15)/10*(1.,1.),11*(0.,1.)/                     
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T,                                                  
     +            L4A(-5:15)/6*.TRUE.,10*.FALSE.,5*.TRUE./              

      DO 11 I1=-5,15,2                                                  
        IF(RA(I1).GE.1..AND.RA(I1).LE.3.0.OR.L4A(I1)) THEN              
          RB(I1)=1.0+I1                                                 
          RA(I1)=RB(I1)+RA(I1)*1.5+RA(I1)*1.3                           
          DA(I1)=CEA(I1)                                                
          QA(I1)=CEA(I1)*CDB(I1)                                        
          LBA(I1)=.TRUE.                                                
          CEA(I1)=CMPLX(RA(I1),RB(I1))*CEA(I1)                          
          RT= RA(I1)+RB(I1)*3.                                          
          CET=CEA(I1)+RT*1.5                                            
          L4T=.NOT.L4A(I1).OR.LBA(I1)                                   
        ENDIF                                                           
        DO 12 I2=1,10                                                   
          IF(RC(I2,I1)) 13,14,12                                        
   13       DC(I2,I1)=-RC(I2,I1)                                        
           GO TO 12                                                     
   14       DC(I2,I1)=0.0                                               
   12   CONTINUE                                                        
   15   IF(L4A(I1)) THEN                                                
          RSUM=RSUM+RT                                                  
          RSM1=RSM1+DA(I1)+RA(I1)                                       
          CEA(I1)=CET+CMPLX(RT,RT)*RA(I1)+I1                            
        ENDIF                                                           
   11 CONTINUE                                                          
      WRITE(6,*) 'RSM1= ',RSM1,'RSUM= ',RSUM                            
      WRITE(6,*) 'RA= ',RA,'RB= ',RB,'DA= ',DA,'QA= ',QA                
      WRITE(6,*) 'LBA= ',LBA,'CEA= ',CEA,'DC= ',DC                      
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB2                                                   
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(-5:15,-5:15)/241*2.0,200*1./,RSM1/0.0/,RSUM/0./    
      REAL    *8  DC(-5:15,-5:15)/241*1.0,200*2./,DA(-5:15)/10*5.,11*3./
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      COMPLEX *8  CEA(-5:15)/10*(1.,1.),11*(0.,1.)/                     
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T,                                                  
     +            L4A(-5:15)/6*.TRUE.,10*.FALSE.,5*.TRUE./              

      DO 11 I1=-5,15,2                                                  
        IF(RA(I1).GE.1..AND.RA(I1).LE.3.0.OR.L4A(I1)) THEN              
          RB(I1)=1.0+I1                                                 
          RA(I1)=RB(I1)+RA(I1)*1.5+RA(I1)*1.3                           
          DA(I1)=CEA(I1)                                                
          QA(I1)=CEA(I1)*CDB(I1)                                        
          LBA(I1)=.TRUE.                                                
          CEA(I1)=CMPLX(RA(I1),RB(I1))*CEA(I1)                          
          RT= RA(I1)+RB(I1)*3.                                          
          CET=CEA(I1)+RT*1.5                                            
          L4T=.NOT.L4A(I1).OR.LBA(I1)                                   
        ENDIF                                                           
        DO 12 I2=1,10                                                   
          IF(RC(I2,I1)) 13,14,12                                        
   13       DC(I2,I1)=-RC(I2,I1)                                        
           GO TO 12                                                     
   14       DC(I2,I1)=0.0                                               
   12   CONTINUE                                                        
   15   IF(L4A(I1)) THEN                                                
          RSUM=RSUM+RT                                                  
          RSM1=RSM1+DA(I1)+RA(I1)                                       
          CEA(I1)=CET+CMPLX(RT,RT)*RA(I1)+I1                            
        ENDIF                                                           
   11 CONTINUE                                                          
      WRITE(6,*) 'RSM1= ',RSM1,'RSUM= ',RSUM                            
      WRITE(6,*) 'RA= ',RA,'RB= ',RB,'DA= ',DA,'QA= ',QA                
      WRITE(6,*) 'LBA= ',LBA,'CEA= ',CEA,'DC= ',DC                      
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB3                                                   
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(-5:15,-5:15)/241*2.0,200*1./,RSM1/0.0/,RSUM/0./    
      REAL    *8  DC(-5:15,-5:15)/241*1.0,200*2./,DA(-5:15)/10*5.,11*3./
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      COMPLEX *8  CEA(-5:15)/10*(1.,1.),11*(0.,1.)/                     
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T,                                                  
     +            L4A(-5:15)/6*.TRUE.,10*.FALSE.,5*.TRUE./              

      DO 11 I1=-5,15,2                                                  
        IF(RA(I1).GE.1..AND.RA(I1).LE.3.0.OR.L4A(I1)) THEN              
          RB(I1)=1.0+I1                                                 
          RA(I1)=RB(I1)+RA(I1)*1.5+RA(I1)*1.3                           
          DA(I1)=CEA(I1)                                                
          QA(I1)=CEA(I1)*CDB(I1)                                        
          LBA(I1)=.TRUE.                                                
          CEA(I1)=CMPLX(RA(I1),RB(I1))*CEA(I1)                          
          RT= RA(I1)+RB(I1)*3.                                          
          CET=CEA(I1)+RT*1.5                                            
          L4T=.NOT.L4A(I1).OR.LBA(I1)                                   
        ENDIF                                                           
        DO 12 I2=1,10                                                   
          IF(RC(I2,I1)) 13,14,12                                        
   13       DC(I2,I1)=-RC(I2,I1)                                        
           GO TO 12                                                     
   14       DC(I2,I1)=0.0                                               
   12   CONTINUE                                                        
   15   IF(L4A(I1)) THEN                                                
          RSUM=RSUM+RT                                                  
          RSM1=RSM1+DA(I1)+RA(I1)                                       
          CEA(I1)=CET+CMPLX(RT,RT)*RA(I1)+I1                            
        ENDIF                                                           
   11 CONTINUE                                                          
      WRITE(6,*) 'RSM1= ',RSM1,'RSUM= ',RSUM                            
      WRITE(6,*) 'RA= ',RA,'RB= ',RB,'DA= ',DA,'QA= ',QA                
      WRITE(6,*) 'LBA= ',LBA,'CEA= ',CEA,'DC= ',DC                      
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB4                                                  
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(-5:15,-5:15)/241*2.0,200*1./,RSM1/0.0/,RSUM/0./    
      REAL    *8  DC(-5:15,-5:15)/241*1.0,200*2./,DA(-5:15)/10*5.,11*3./
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      COMPLEX *8  CEA(-5:15)/10*(1.,1.),11*(0.,1.)/                     
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T,                                                  
     +            L4A(-5:15)/6*.TRUE.,10*.FALSE.,5*.TRUE./              

      DO 11 I1=-5,15,2                                                  
        IF(RA(I1).GE.1..AND.RA(I1).LE.3.0.OR.L4A(I1)) THEN              
          RB(I1)=1.0+I1                                                 
          RA(I1)=RB(I1)+RA(I1)*1.5+RA(I1)*1.3                           
          DA(I1)=CEA(I1)                                                
          QA(I1)=CEA(I1)*CDB(I1)                                        
          LBA(I1)=.TRUE.                                                
          CEA(I1)=CMPLX(RA(I1),RB(I1))*CEA(I1)                          
          RT= RA(I1)+RB(I1)*3.                                          
          CET=CEA(I1)+RT*1.5                                            
          L4T=.NOT.L4A(I1).OR.LBA(I1)                                   
        ENDIF                                                           
        DO 12 I2=1,10                                                   
          IF(RC(I2,I1)) 13,14,12                                        
   13       DC(I2,I1)=-RC(I2,I1)                                        
           GO TO 12                                                     
   14       DC(I2,I1)=0.0                                               
   12   CONTINUE                                                        
   15   IF(L4A(I1)) THEN                                                
          RSUM=RSUM+RT                                                  
          RSM1=RSM1+DA(I1)+RA(I1)                                       
          CEA(I1)=CET+CMPLX(RT,RT)*RA(I1)+I1                            
        ENDIF                                                           
   11 CONTINUE                                                          
      WRITE(6,*) 'RSM1= ',RSM1,'RSUM= ',RSUM                            
      WRITE(6,*) 'RA= ',RA,'RB= ',RB,'DA= ',DA,'QA= ',QA                
      WRITE(6,*) 'LBA= ',LBA,'CEA= ',CEA,'DC= ',DC                      
      RETURN                                                            
      END                                                               





      PROGRAM MAIN

       CALL SUB1
       CALL SUB2
       CALL SUB3
       CALL SUB4
       STOP 
      END

      SUBROUTINE SUB1                                                   
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(10,10)/50*2.0,50*1./,RD(10,10)/50*1.,50*2./        
      REAL    *8  DC(10,10)/50*1.0,50*2./,DA(-5:15)/10*5.,11*3./        
      REAL    *8  DB(10)/5*2.0,5*2./                                    
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      REAL    *8  QC(10,10)/50*2.0,50*1./                               
      COMPLEX *8  CEA(10)/5*(1.,1.),5*(0.,1.)/                          
      COMPLEX *8  CEB(10)/5*(2.,1.),5*(1.,1.)/                          
      COMPLEX *8  CEC(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *8  CED(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *16 CDA(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/                     
      COMPLEX *16 CDC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CDD(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CQA(10)/5*(0.,1.),5*(2.,1.)/                          
      COMPLEX *16 CQC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T/.TRUE./,                                          
     +            L4A(10)/3*.TRUE.,5*.FALSE.,2*.TRUE./,                 
     +            L4B(10)/5*.TRUE.,3*.FALSE.,2*.TRUE./,                 
     +            L4C(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./,           
     +            L4D(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./            
      INTEGER *4 ID(10,10)/100*0/                                       
      DATA  RMIN/0./,RMAX/0./,RSUM/0./                                  

      RT1=0.0                                                           
      RT2=0.0                                                           
      DO 11 I1=1,10                                                     
        IF(REAL(RA(I1)-RB(I1)+DA(I1)-DB(I1)+CEA(I1)-CEB(I1)+CDA(I1)-    
     @     CDB(I1))) 110,120,130                                        
  110     IF(L4A(I1)) THEN                                              
            RA(I1)=0.0                                                  
            DA(I1)=0.0                                                  
            QA(I1)=0.0                                                  
            RT1=RA(I1)                                                  
          ELSE                                                          
            RA(I1)=RB(I1)*RA(I1)+DA(I1)-QA(I1)                          
            DA(I1)=RB(I1)*RA(I1)+DA(I1)                                 
            QA(I1)=RB(I1)*RA(I1)+QA(I1)                                 
            RT1=100.0                                                   
          ENDIF                                                         
          GO TO 140                                                     
  120     IF(RC(I1,I1).GE.1.) THEN                                      
            L4A(I1)=.FALSE.                                             
            LBA(I1)=.FALSE.                                             
            IF(RT1.EQ.100.) THEN                                        
              DC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
              QC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
            ENDIF                                                       
            IF(RT1.EQ.0.) THEN                                          
              DC(I1,I1)=RT1                                             
            ENDIF                                                       
          ENDIF                                                         
          GO TO 140                                                     
  130     IF(IMAG(CEA(I1)).NE.0) THEN                                   
            CEA(I1)=CEA(I1)-(0.,1.)*RT1                                 
            CDA(I1)=CDA(I1)-(0.,1.)*RT1                                 
            CQA(I1)=CQA(I1)-(1.,1.)*RT1                                 
          ENDIF                                                         
  140     CONTINUE
   11 CONTINUE                                                          
      WRITE(6,*) 'RA= ',RA,'DA= ',DA,'QA= ',QA                          
      WRITE(6,*) 'L4A= ',L4A,'LBA= ',LBA                                
      WRITE(6,*) 'DC= ',DC,'QC= ',QC                                    
      WRITE(6,*) 'CEA= ',CEA,'CDA= ',CDA,'CQA= ',CQA                    
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB2                                                   
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(10,10)/50*2.0,50*1./,RD(10,10)/50*1.,50*2./        
      REAL    *8  DC(10,10)/50*1.0,50*2./,DA(-5:15)/10*5.,11*3./        
      REAL    *8  DB(10)/5*2.0,5*2./                                    
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      REAL    *8  QC(10,10)/50*2.0,50*1./                               
      COMPLEX *8  CEA(10)/5*(1.,1.),5*(0.,1.)/                          
      COMPLEX *8  CEB(10)/5*(2.,1.),5*(1.,1.)/                          
      COMPLEX *8  CEC(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *8  CED(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *16 CDA(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/                     
      COMPLEX *16 CDC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CDD(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CQA(10)/5*(0.,1.),5*(2.,1.)/                          
      COMPLEX *16 CQC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T/.TRUE./,                                          
     +            L4A(10)/3*.TRUE.,5*.FALSE.,2*.TRUE./,                 
     +            L4B(10)/5*.TRUE.,3*.FALSE.,2*.TRUE./,                 
     +            L4C(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./,           
     +            L4D(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./            
      INTEGER *4 ID(10,10)/100*0/                                       
      DATA  RMIN/0./,RMAX/0./,RSUM/0./                                  

      RT1=0.0                                                           
      RT2=0.0                                                           
      DO 11 I1=1,10                                                     
        IF(REAL(RA(I1)-RB(I1)+DA(I1)-DB(I1)+CEA(I1)-CEB(I1)+CDA(I1)-    
     @     CDB(I1))) 110,120,130                                        
  110     IF(L4A(I1)) THEN                                              
            RA(I1)=0.0                                                  
            DA(I1)=0.0                                                  
            QA(I1)=0.0                                                  
            RT1=RA(I1)                                                  
          ELSE                                                          
            RA(I1)=RB(I1)*RA(I1)+DA(I1)-QA(I1)                          
            DA(I1)=RB(I1)*RA(I1)+DA(I1)                                 
            QA(I1)=RB(I1)*RA(I1)+QA(I1)                                 
            RT1=100.0                                                   
          ENDIF                                                         
          GO TO 140                                                     
  120     IF(RC(I1,I1).GE.1.) THEN                                      
            L4A(I1)=.FALSE.                                             
            LBA(I1)=.FALSE.                                             
            IF(RT1.EQ.100.) THEN                                        
              DC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
              QC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
            ENDIF                                                       
            IF(RT1.EQ.0.) THEN                                          
              DC(I1,I1)=RT1                                             
            ENDIF                                                       
          ENDIF                                                         
          GO TO 140                                                     
  130     IF(IMAG(CEA(I1)).NE.0) THEN                                   
            CEA(I1)=CEA(I1)-(0.,1.)*RT1                                 
            CDA(I1)=CDA(I1)-(0.,1.)*RT1                                 
            CQA(I1)=CQA(I1)-(1.,1.)*RT1                                 
          ENDIF                                                         
  140     CONTINUE
   11 CONTINUE                                                          
      WRITE(6,*) 'RA= ',RA,'DA= ',DA,'QA= ',QA                          
      WRITE(6,*) 'L4A= ',L4A,'LBA= ',LBA                                
      WRITE(6,*) 'DC= ',DC,'QC= ',QC                                    
      WRITE(6,*) 'CEA= ',CEA,'CDA= ',CDA,'CQA= ',CQA                    
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB3                                                   
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(10,10)/50*2.0,50*1./,RD(10,10)/50*1.,50*2./        
      REAL    *8  DC(10,10)/50*1.0,50*2./,DA(-5:15)/10*5.,11*3./        
      REAL    *8  DB(10)/5*2.0,5*2./                                    
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      REAL    *8  QC(10,10)/50*2.0,50*1./                               
      COMPLEX *8  CEA(10)/5*(1.,1.),5*(0.,1.)/                          
      COMPLEX *8  CEB(10)/5*(2.,1.),5*(1.,1.)/                          
      COMPLEX *8  CEC(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *8  CED(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *16 CDA(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/                     
      COMPLEX *16 CDC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CDD(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CQA(10)/5*(0.,1.),5*(2.,1.)/                          
      COMPLEX *16 CQC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T/.TRUE./,                                          
     +            L4A(10)/3*.TRUE.,5*.FALSE.,2*.TRUE./,                 
     +            L4B(10)/5*.TRUE.,3*.FALSE.,2*.TRUE./,                 
     +            L4C(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./,           
     +            L4D(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./            
      INTEGER *4 ID(10,10)/100*0/                                       
      DATA  RMIN/0./,RMAX/0./,RSUM/0./                                  

      RT1=0.0                                                           
      RT2=0.0                                                           
      DO 11 I1=1,10                                                     
        IF(REAL(RA(I1)-RB(I1)+DA(I1)-DB(I1)+CEA(I1)-CEB(I1)+CDA(I1)-    
     @     CDB(I1))) 110,120,130                                        
  110     IF(L4A(I1)) THEN                                              
            RA(I1)=0.0                                                  
            DA(I1)=0.0                                                  
            QA(I1)=0.0                                                  
            RT1=RA(I1)                                                  
          ELSE                                                          
            RA(I1)=RB(I1)*RA(I1)+DA(I1)-QA(I1)                          
            DA(I1)=RB(I1)*RA(I1)+DA(I1)                                 
            QA(I1)=RB(I1)*RA(I1)+QA(I1)                                 
            RT1=100.0                                                   
          ENDIF                                                         
          GO TO 140                                                     
  120     IF(RC(I1,I1).GE.1.) THEN                                      
            L4A(I1)=.FALSE.                                             
            LBA(I1)=.FALSE.                                             
            IF(RT1.EQ.100.) THEN                                        
              DC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
              QC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
            ENDIF                                                       
            IF(RT1.EQ.0.) THEN                                          
              DC(I1,I1)=RT1                                             
            ENDIF                                                       
          ENDIF                                                         
          GO TO 140                                                     
  130     IF(IMAG(CEA(I1)).NE.0) THEN                                   
            CEA(I1)=CEA(I1)-(0.,1.)*RT1                                 
            CDA(I1)=CDA(I1)-(0.,1.)*RT1                                 
            CQA(I1)=CQA(I1)-(1.,1.)*RT1                                 
          ENDIF                                                         
  140     CONTINUE
   11 CONTINUE                                                          
      WRITE(6,*) 'RA= ',RA,'DA= ',DA,'QA= ',QA                          
      WRITE(6,*) 'L4A= ',L4A,'LBA= ',LBA                                
      WRITE(6,*) 'DC= ',DC,'QC= ',QC                                    
      WRITE(6,*) 'CEA= ',CEA,'CDA= ',CDA,'CQA= ',CQA                    
      RETURN                                                            
      END                                                               

      SUBROUTINE SUB4                                                  
      REAL    *4  RA(-5:15)/10*1.0,11*2./,RB(-5:15)/10*3.,11*0./,       
     +            RC(10,10)/50*2.0,50*1./,RD(10,10)/50*1.,50*2./        
      REAL    *8  DC(10,10)/50*1.0,50*2./,DA(-5:15)/10*5.,11*3./        
      REAL    *8  DB(10)/5*2.0,5*2./                                    
      REAL    *8  QA(-5:15)/10*2.0,11*1./                               
      REAL    *8  QC(10,10)/50*2.0,50*1./                               
      COMPLEX *8  CEA(10)/5*(1.,1.),5*(0.,1.)/                          
      COMPLEX *8  CEB(10)/5*(2.,1.),5*(1.,1.)/                          
      COMPLEX *8  CEC(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *8  CED(10,10)/50*(1.,1.),50*(0.,1.)/                     
      COMPLEX *16 CDA(-5:15)/10*(0.,1.),11*(2.,1.)/,CET                 
      COMPLEX *16 CDB(-5:15)/10*(0.,1.),11*(2.,1.)/                     
      COMPLEX *16 CDC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CDD(10,10)/50*(0.,1.),50*(2.,1.)/                     
      COMPLEX *16 CQA(10)/5*(0.,1.),5*(2.,1.)/                          
      COMPLEX *16 CQC(10,10)/50*(0.,1.),50*(2.,1.)/                     
      LOGICAL *1  LBA(-5:15)/10*.TRUE.,6*.FALSE.,5*.TRUE./              
      LOGICAL *4  L4T/.TRUE./,                                          
     +            L4A(10)/3*.TRUE.,5*.FALSE.,2*.TRUE./,                 
     +            L4B(10)/5*.TRUE.,3*.FALSE.,2*.TRUE./,                 
     +            L4C(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./,           
     +            L4D(10,10)/10*.TRUE.,40*.FALSE.,50*.TRUE./            
      INTEGER *4 ID(10,10)/100*0/                                       
      DATA  RMIN/0./,RMAX/0./,RSUM/0./                                  

      RT1=0.0                                                           
      RT2=0.0                                                           
      DO 11 I1=1,10                                                     
        IF(REAL(RA(I1)-RB(I1)+DA(I1)-DB(I1)+CEA(I1)-CEB(I1)+CDA(I1)-    
     @     CDB(I1))) 110,120,130                                        
  110     IF(L4A(I1)) THEN                                              
            RA(I1)=0.0                                                  
            DA(I1)=0.0                                                  
            QA(I1)=0.0                                                  
            RT1=RA(I1)                                                  
          ELSE                                                          
            RA(I1)=RB(I1)*RA(I1)+DA(I1)-QA(I1)                          
            DA(I1)=RB(I1)*RA(I1)+DA(I1)                                 
            QA(I1)=RB(I1)*RA(I1)+QA(I1)                                 
            RT1=100.0                                                   
          ENDIF                                                         
          GO TO 140                                                     
  120     IF(RC(I1,I1).GE.1.) THEN                                      
            L4A(I1)=.FALSE.                                             
            LBA(I1)=.FALSE.                                             
            IF(RT1.EQ.100.) THEN                                        
              DC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
              QC(I1,I1)=RT1+DC(I1,I1)+RA(I1)                            
            ENDIF                                                       
            IF(RT1.EQ.0.) THEN                                          
              DC(I1,I1)=RT1                                             
            ENDIF                                                       
          ENDIF                                                         
          GO TO 140                                                     
  130     IF(IMAG(CEA(I1)).NE.0) THEN                                   
            CEA(I1)=CEA(I1)-(0.,1.)*RT1                                 
            CDA(I1)=CDA(I1)-(0.,1.)*RT1                                 
            CQA(I1)=CQA(I1)-(1.,1.)*RT1                                 
          ENDIF                                                         
  140     CONTINUE
   11 CONTINUE                                                          
      WRITE(6,*) 'RA= ',RA,'DA= ',DA,'QA= ',QA                          
      WRITE(6,*) 'L4A= ',L4A,'LBA= ',LBA                                
      WRITE(6,*) 'DC= ',DC,'QC= ',QC                                    
      WRITE(6,*) 'CEA= ',CEA,'CDA= ',CDA,'CQA= ',CQA                    
      RETURN                                                            
      END                                                               
 
 

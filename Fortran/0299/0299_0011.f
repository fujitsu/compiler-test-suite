      PROGRAM MAIN
      REAL    *4  RA (10),RB (10,10),RC (10,10,10),RD (10,10,10,10)     
      REAL    *8  DA (10),DB (10,10),DC (10,10,10)                      
      COMPLEX *8  CEA(10),CEB(10,10),CEC(10,10,10)                      
      LOGICAL *1  LBA(10)                                               
      LOGICAL *4  L4A(10),L4B(10,10)                                    
      INTEGER *4  IL(10)                                                
      DATA  RA/10*1./,RB/100*1./,RC/1000*1./,RD/10000*1./               
      DATA  DA/10*1./,DB/100*1./,DC/1000*1./                            
      DATA  CEA/10*(1.,1.)/,CEB/100*(1.,1.)/,CEC/1000*(1.,1.)/          
      DATA  L4A/10*.TRUE./,L4B/100*.TRUE./                              
      DATA  LBA/10*.TRUE./                                              
      DATA  IL/1,2,3,4,5,6,7,8,9,10/                                    
      RSUM=0.                                                           
      ID1=0                                                             
      I2 = 1
      I1 = 1
          DO 13 I3=1,10                                                 
             RB(I2,I1)=DB(I2,I1)+RB(I2,I1)+I3                           
             IF(RB(I2,I1).EQ.5) THEN                                    
             ENDIF                                                      
   13     CONTINUE                                                      
          RSUM=RSUM+RB(I2,I1)                                           
          ID1=ID1+10                                                    
   12   CONTINUE                                                        
   11 CONTINUE                                                          
      WRITE(6,*) 'RB=',RB,'DB=',DB,'RSUM=',RSUM,'ID1=',ID1              
      STOP                                                              
      END                                                               

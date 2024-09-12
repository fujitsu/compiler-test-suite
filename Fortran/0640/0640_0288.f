       REAL*8 A(314)                                                    
       INTEGER IS(360),IC(360),IA(60,6),IB(60,6),ICNT(60,6)             
       LOGICAL TT(360),TX(60,6)                                         
       EQUIVALENCE(IS(1),IA(1,1)),(IC(1),IB(1,1)),(TT(1),TX(1,1))       
       DATA TT/360*.FALSE./                                             
       DATA ICNT/360*0/                                                 

       IA = 0
       IB = 0
       I=1                                                              
       Pi=ATAN(1.0)*8                                                  
       IPi=Pi                                                         
       DO 10 I=1,IPi,2                                                 
         R=I*0.01D0                                                     
         A(I)=SIN(R)                                                    
         IC(I)=1.0D0-A(I)*100.0D0                                       
         IS(I)=A(I)*100.0D0                                             
 10    CONTINUE                                                         

       DO 20 I=1,60                                                     
       DO 20 J=1,6                                                      
         IF(IA(I,J).LE.IB(I,J)) THEN                                    
           TX(I,J)=.NOT.TX(I,J)                                         
         ENDIF                                                          
         IF(TX(I,J)) THEN                                               
           ICNT(I,J)=IA(I,J)                                            
         ENDIF                                                          
 20    CONTINUE                                                         
       PRINT *,TX,ICNT,IS,IC                                            
       END                                                              

      PROGRAM MAIN
*     REAL,RANGE,DIMENSION(5)::A                                            
*     DATA A/1.0,2.0,3.0,4.0,5.0/                                       
                                                                        
*     N=1                                                               
*     SET RANGE(N:2*N) A                                                
*     A=A+3.14                                                          
                                                                        
      WRITE (6,999)                                                     
 999  FORMAT(1H ,'**** COMMENT ONLY ****')                      
      STOP                                                              
      END                                                               

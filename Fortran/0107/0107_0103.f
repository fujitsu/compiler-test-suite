      PROGRAM MAIN                                                  
                                                                       
      CALL SUB02                                                     
      CALL SUB03                                                     
      CALL SUB07                                                     
      CALL SUB12                                                     
      CALL SUB14                                                     
      CALL SUB15                                                     
      CALL SUB23                                                     
                                                                       
      STOP                                                             
      END                                                              
                                                                       
      SUBROUTINE SUB02                                               
      REAL,DIMENSION(10)::A,B                                          
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA B/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
                                                                       
      I=INT(COS(0.0))                                                  
      A(1:10)=B(I)                                                     
      I=I+2                                                            
      B(1:10)=A(I)                                                     
                                                                       
      DO 10 I=1,10                                                     
        IF (A(I) .NE. 1.0) THEN                                        
          WRITE (6,999)                                                
          WRITE (6,*) A                                                
          GOTO 20                                                      
        END IF                                                         
        IF (B(I) .NE. 1.0) THEN                                        
          WRITE (6,999)                                                
          WRITE (6,*) B                                                
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,998)                                                    
  20  CONTINUE                                                         
 998  FORMAT(1H ,'****** OK ******')                           
 999  FORMAT(1H ,'?????? NG ??????')                           
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB03                                               
      REAL,DIMENSION(10)::A,B                                          
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA B/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
                                                                       
      I=INT(COS(0.0))                                                  
      J=INT(COS(0.0))                                                  
      A(1:10)=B(I)                                                     
      I=I+J*2                                                          
      B(1:10)=A(I)                                                     
                                                                       
      DO 10 I=1,10                                                     
        IF(A(I) .NE. 1.0) THEN                                         
          WRITE (6,999)                                                
          WRITE (6,996) A                                              
          GOTO 20                                                      
        END IF                                                         
        IF(B(I) .NE. 1.0) THEN                                         
          WRITE (6,999)                                                
          WRITE (6,997) B                                              
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,998)                                                    
  20  CONTINUE                                                         
 996  FORMAT (1H ,'A',2X,10F5.2)                                       
 997  FORMAT (1H ,'B',2X,10F5.2)                                       
 998  FORMAT (1H ,'****** OK ******')                          
 999  FORMAT (1H ,'?????? NG ??????')                          
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB07                                               
      REAL,DIMENSION(10)::A                                            
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA I/1/                                                        
      K=I*2                                                            
      J=K*4+I                                                          
      IF (I .GT. 5) GOTO 10                                            
                                                                       
      I=I+J                                                            
                                                                       
 10   I=I-K*4                                                          
      A(1:10)=A(I)                                                     
                                                                       
      DO 20 L=1,10                                                     
        IF (A(I) .NE. 2.0) THEN                                        
          WRITE (6,999)                                                
          GOTO 30                                                      
        END IF                                                         
 20   CONTINUE                                                         
      WRITE (6,998)                                                    
 30   CONTINUE                                                         
998   FORMAT (1H ,'****** OK ******')                          
999   FORMAT (1H ,'?????? NG ??????')                          
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB12                                               
      REAL,DIMENSION(10)::A,B                                          
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA B/7*10.0,8.0,9.0,10.0/                                      
                                                                       
      J=1                                                              
      DO 10 I=7,1,-2                                                   
        J=J+2                                                          
        A(1:I)=A(I+J)                                                  
 10   CONTINUE                                                         
                                                                       
      DO 20 K=1,10                                                     
        IF (A(K) .NE. B(K)) THEN                                       
          WRITE (6,999)                                                
          GOTO 30                                                      
        END IF                                                         
 20   CONTINUE                                                         
      WRITE (6,998)                                                    
 30   CONTINUE                                                         
998   FORMAT (1H ,'****** OK ******')                          
999   FORMAT (1H ,'?????? NG ??????')                          
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB13                                               
      REAL,DIMENSION(10)::A                                            
      INTEGER X,Y                                                      
      EQUIVALENCE (X,Y)                                                
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA Y/1.0/                                                      
                                                                       
      DO 10 I=1,5,1                                                    
        X=I+1                                                          
        A(I:10)=A(X)                                                   
 10   CONTINUE                                                         
                                                                       
      DO 20 J=1,10                                                     
        IF (A(J) .NE. 2.0) THEN                                        
          WRITE (6,999)                                                
          WRITE (6,*) 'A(',A,')'                                       
          WRITE (6,*) '"RIGHT" 2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0'
          GOTO 30                                                      
        END IF                                                         
 20   CONTINUE                                                         
      WRITE (6,998)                                                    
 30   CONTINUE                                                         
998   FORMAT (1H ,'****** OK ******')                          
999   FORMAT (1H ,'?????? NG ??????')                          
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB14                                               
      CHARACTER*40 C                                                   
      REAL,DIMENSION(10)::A                                            
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
                                                                       
      I=INT(COS(0.0))                                                  
      IF (I .NE. 1) I=1                                                
                                                                       
      WRITE(6,*) I                                                     
      C='(1H ,"A  ",10F3.1)'                                   
      WRITE(6,C) A                                                     
                                                                       
      A(1:10)=A(I)                                                     
                                                                       
      DO 10 J=1,10                                                     
        IF (A(I) .NE. 1.0) THEN                                        
          WRITE (6,999)                                                
          GOTO 20                                                      
        END IF                                                         
 10   CONTINUE                                                         
      WRITE (6,998)                                                    
 20   CONTINUE                                                         
998   FORMAT (1H ,'****** OK ******')                          
999   FORMAT (1H ,'?????? NG ??????')                          
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB15                                               
      INTEGER I,J                                                      
      REAL,DIMENSION(10)::A                                            
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA I,J/2*1/                                                    
                                                                       
      CALL SUB(J,I)                                                    
      A(1:10)=A(I)                                                     
                                                                       
      DO 10 II=1,10                                                    
        IF (A(I) .NE. 1.0) THEN                                        
          WRITE (6,999)                                                
          GOTO 20                                                      
        END IF                                                         
 10   CONTINUE                                                         
      WRITE (6,998)                                                    
 20   CONTINUE                                                         
998   FORMAT (1H ,'****** OK ******')                          
999   FORMAT (1H ,'?????? NG ??????')                          
      RETURN                                                           
      END                                                              
      SUBROUTINE SUB(K,L)                                              
      INTEGER K,L                                                      
      K=L+K                                                            
      END SUBROUTINE SUB                                               
                                                                       
      SUBROUTINE SUB23                                               
      REAL,DIMENSION(10)::A,B                                          
      INTEGER*4::L,J                                                   
      DATA A/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA B/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/                 
      DATA L/1.0/                                                      
                                                                       
      J=L*1073741824-2147483647                                        
      L=1073741825*L+J                                                 
                                                                       
      A(1:10)=B(L)                                                     
      I=INT(COS(0.0))                                                  
      B(1:10)=A(I)                                                     
                                                                       
      DO 10 II=1,10                                                    
        IF (A(II) .NE. 2.0) THEN                                       
          WRITE (6,999)                                                
          WRITE (6,*) '"RIGHT"    2.0'                                 
          WRITE (6,*) '"RESULT" ',A                                    
          GOTO  20                                                     
        END IF                                                         
        IF (B(II) .NE. 2.0) THEN                                       
          WRITE (6,998)                                                
          WRITE (6,*) '"RIGHT"    2.0'                                 
          WRITE (6,*) '"RESULT" ',B                                    
          GOTO  20                                                     
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,997)                                                    
  20  CONTINUE                                                         
 997  FORMAT (1H ,'****** OK ******')                          
 998  FORMAT (1H ,'?????? NG=B ????')                          
 999  FORMAT (1H ,'?????? NG=A ????')                          
      RETURN                                                           
      END                                                              

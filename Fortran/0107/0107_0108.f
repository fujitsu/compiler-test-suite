      PROGRAM MAIN                                                  
                                                                       
      CALL SUB14                                                     
      CALL SUB15                                                     
      CALL SUB16                                                     
      CALL SUB17                                                     
                                                                       
      STOP                                                             
      END                                                              
                                                                       
      SUBROUTINE SUB14                                               
      REAL,DIMENSION(3,2,4)::A,RIGHT_RESULT                            
      DATA A/3*13.,3*87.,3*468.,3*678.,3*4068.,3*4.,3*514.,3*87./      
      DATA RIGHT_RESULT/3*13.,3*87.,13000.,4068000.,468.,              
     +                  3*678.,3*4068.,3*4.,3*514.,3*87./              
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:2,1,2)=A(2,1,1:3:2)*1000                                     
                                                                       
      DO K=1,4                                                         
         DO J=1,2                                                      
            DO I=1,3                                                   
               IF (A(I,J,K) .NE. RIGHT_RESULT(I,J,K)) NO_GOOD = .TRUE. 
            ENDDO                                                      
         ENDDO                                                         
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',A                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '****** OK ******'                        
      ENDIF                                                            
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB15                                               
      REAL,DIMENSION(300,300)::A,B,A_RIGHT_RESULT,B_RIGHT_RESULT       
      DATA A/90000*999./,B/90000*1./                                   
      DATA A_RIGHT_RESULT/90000*999./,B_RIGHT_RESULT/90000*1./         
                                                                       
      A(2,1:300)=A(1:300,299)/9.                                       
      B(299,1:300)=B(1:300,2)*1024.                                    
                                                                       
      DO I=1,300                                                       
         A_RIGHT_RESULT(2,I) = 111.                                    
         B_RIGHT_RESULT(299,I) = 1024.                                 
      ENDDO                                                            
      DO J=1,300                                                       
         DO I=1,300                                                    
            IF (A(I,J) .NE. A_RIGHT_RESULT(I,J)) THEN                  
               WRITE (6,*) '?????? NG ??????'                  
               WRITE (6,*) 'A(',I,',',J,') = ',A(I,J)                  
               WRITE (6,*) 'RIGHT RESULT = ',A_RIGHT_RESULT(I,J)       
               WRITE (6,*) '?????? NG ??????'                  
               STOP                                                    
            ENDIF                                                      
            IF (B(I,J) .NE. B_RIGHT_RESULT(I,J)) THEN                  
               WRITE (6,*) '?????? NG ??????'                  
               WRITE (6,*) 'B(',I,',',J,') = ',B(I,J)                  
               WRITE (6,*) 'RIGHT RESULT = ',B_RIGHT_RESULT(I,J)       
               WRITE (6,*) '?????? NG ??????'                  
               STOP                                                    
            ENDIF                                                      
         ENDDO                                                         
      ENDDO                                                            
      WRITE (6,*) '****** OK ******'                           
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB16                                               
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                             
      DATA A/10*999.9,10*9.,10*1.0,10*3.3,10*65536.0/                  
      DATA RIGHT_RESULT/8*999.9,18.,999.9,8*9.,18.,9.,8*1.0,18.,1.,    
     &                  8*3.3,18.,3.3,8*65536.0,18.,65536./            
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
      I=2*INT(COS(0.0))                                                
                                                                       
      A(I+7,5:1:-1)=A(6:2:-1,I)*2.                                     
                                                                       
      DO J=1,5                                                         
         DO I=1,10                                                     
            IF (A(I,J) .NE. RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.        
         ENDDO                                                         
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',A                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '****** OK ******'                        
      ENDIF                                                            
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB17                                               
      REAL,DIMENSION(10,5)::A,B,A_RIGHT_RESULT,B_RIGHT_RESULT          
      DATA A/10*999.9,10*9.9,10*1.0,10*3.3,10*65536.0/                 
      DATA A_RIGHT_RESULT/999.9,3.,8*999.9,9.9,3.,8*9.9,1.,3.,8*1.0,   
     &                    3.3,3.,8*3.3,65536.,3.,8*65536.0/            
      DATA B/10*999.9,10*9.9,10*1.0,10*3.3,10*65536.0/                 
      DATA B_RIGHT_RESULT/7*999.9,131072.,2*999.9,10*9.9,              
     &                    7*1.0,131072.,2*1.0,10*3.3,                  
     &                    7*65536.0,131072.,2*65536./                  
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
      I=2*INT(COS(0.0))                                                
                                                                       
      A(I,1:5)=A(1:9:2,I+1)*3.                                         
      B(8,1:5:I)=B(5:9:I,5)*2.                                         
                                                                       
      DO J=1,5                                                         
         DO I=1,10                                                     
            IF (A(I,J) .NE. A_RIGHT_RESULT(I,J) .OR.                   
     &          B(I,J) .NE. B_RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.      
         ENDDO                                                         
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',A                          
         WRITE (6,*) '< RIGHT  RESULT >   ',A_RIGHT_RESULT             
         WRITE (6,*) '< ACTUAL RESULT >   ',B                          
         WRITE (6,*) '< RIGHT  RESULT >   ',B_RIGHT_RESULT             
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '****** OK ******'                        
      ENDIF                                                            
      RETURN                                                           
      END                                                              

      PROGRAM MAIN                                                  
                                                                       
      CALL SUB08                                                     
      CALL SUB10                                                     
      CALL SUB11                                                     
      CALL SUB22                                                     
                                                                       
      STOP                                                             
      END                                                              
                                                                       
      SUBROUTINE SUB08                                               
      REAL,DIMENSION(10)::A,B,RIGHT_RESULT                             
      DATA A/42.,99.,421.,374.,5548.,0.,100.,21.,232.,87681./          
      DATA RIGHT_RESULT/42.,99.,421.,374.,5548.,5*100000.0/            
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      B(1:5)=A(1:5)                                                    
      A(3)=100000.0                                                    
      B(6:10)=A(3)                                                     
                                                                       
      DO I=1,10                                                        
         IF (B(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.               
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',B                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '****** OK ******'                        
      ENDIF                                                            
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB10                                               
      REAL,DIMENSION(3,2,4)::A,RIGHT_RESULT                            
      DATA A/3*13.,3*87.,3*468.,3*678.,3*40.,3*4.,3*514.,3*87./        
      DATA RIGHT_RESULT/3*13.,3*87.,                                   
     +                  2*2197.,468.    ,2*658503.,678.,               
     +                  2*102503232.,40.,2*311665752.,4.,              
     +                  2*64000.,514.   ,2*64.,87./                    
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:2,1:2,2:4)=A(2:3,1:2,1:3)**3                                 
                                                                       
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
                                                                       
      SUBROUTINE SUB11                                               
      REAL,DIMENSION(5,3)::A,B,RIGHT_RESULT                            
      DATA A/3*33.,3*17.,3*621.,3*918.,3*9502./                        
      DATA RIGHT_RESULT/15*918./                                       
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:5,1:3)=A(5,2)                                                
      B=A(1,1)                                                         
                                                                       
      DO J=1,3                                                         
         DO I=1,5                                                      
            IF (B(I,J) .NE. RIGHT_RESULT(I,J)) NO_GOOD = .TRUE.        
         ENDDO                                                         
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',B                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '****** OK ******'                        
      ENDIF                                                            
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB22                                               
      REAL,DIMENSION(10,5)::A,RIGHT_RESULT                             
      DATA A           /10*999.0,10*9.0,10*33.0,10*3333.0,10*65536.0/  
      DATA RIGHT_RESULT/10*996.0,10*6.0,10*30.0,10*3330.0,10*65533.0/  
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
**  TESTING STATEMENT  **                                              
      A(:,:)=A(:,1:5)-3.                                               
**  - - - - - - - - -  **                                              
                                                                       
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

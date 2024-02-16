      PROGRAM MAIN                                                  
                                                                       
      CALL SUB02                                                     
      CALL SUB03                                                     
      CALL SUB04                                                     
      CALL SUB05                                                     
      CALL SUB09                                                     
                                                                       
      STOP                                                             
      END                                                              
                                                                       
      SUBROUTINE SUB02                                               
      REAL,DIMENSION(10)::A,RIGHT_RESULT                               
      DATA A/13.,87.,468.,678.,4068.,4.,514.,87.,179.,47681./          
      DATA RIGHT_RESULT/10*47681./                                     
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
                                                                       
      A(1:10)=A(10)                                                    
                                                                       
      DO I=1,10                                                        
         IF (A(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.               
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
                                                                       
      SUBROUTINE SUB03                                               
      REAL,DIMENSION(10)::A,B,RIGHT_RESULT                             
      REAL X                                                           
      DATA A/13.,87.,468.,678.,4068.,4.,514.,87.,179.,47681./          
      DATA B/91.,61.,513.,984.,1354.,9.,135.,55.,253.,13744./          
      DATA X/1./                                                       
      DATA RIGHT_RESULT/10*1./                                         
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:10)=X                                                        
      B(1:10)=A(1)                                                     
                                                                       
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
                                                                       
      SUBROUTINE SUB04                                               
      REAL,DIMENSION(10)::A,RIGHT_RESULT                               
      DATA A/13.,87.,468.,678.,4068.,4.,514.,87.,179.,47681./          
      DATA RIGHT_RESULT/4.,87.,4.,678.,4.,4.,4.,87.,4.,47681./         
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:9:2)=A(6)                                                    
                                                                       
      DO I=1,10                                                        
         IF (A(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.               
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
                                                                       
      SUBROUTINE SUB05                                               
      REAL,DIMENSION(10)::A,RIGHT_RESULT                               
      DATA A/13.,87.,468.,678.,4068.,4.,514.,87.,179.,47681./          
      DATA RIGHT_RESULT/10*4./                                         
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A(1:10)=A(6)                                                     
                                                                       
      DO I=1,10                                                        
         IF (A(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.               
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
                                                                       
      SUBROUTINE SUB09                                               
      REAL,DIMENSION(10)::A,RIGHT_RESULT                               
      DATA A/42.,99.,421.,374.,5548.,0.,100.,21.,232.,87681./          
      DATA RIGHT_RESULT/7*5548.,21.,232.,87681./                       
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
      I=2*INT(COS(0.0))                                                
                                                                       
      A(1:I+5)=A(5)                                                    
                                                                       
      DO I=1,10                                                        
         IF (A(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.               
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

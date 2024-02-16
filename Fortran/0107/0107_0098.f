      PROGRAM MAIN                                                  
                                                                       
      CALL SUB05                                                     
      CALL SUB06                                                     
      CALL SUB07                                                     
      CALL SUB08                                                     
      CALL SUB09                                                     
      CALL SUB10                                                     
      CALL SUB13                                                     
      CALL SUB14                                                     
                                                                       
      STOP                                                             
      END                                                              
                                                                       
      SUBROUTINE SUB05                                               
      REAL A(10),RIGHT_RESULT(10)                                      
      DATA A           /-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/   
      DATA RIGHT_RESULT/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/   
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
**  TESTING STATEMENT  **                                              
      A=A                                                              
**  - - - - - - - - -  **                                              
                                                                       
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
                                                                       
      SUBROUTINE SUB06                                               
      REAL A(10),B(5),RIGHT_RESULT_A(10),RIGHT_RESULT_B(5)             
      DATA A             /1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/    
      DATA RIGHT_RESULT_A/2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0/   
      DATA B             /10.0,20.0,30.0,40.0,50.0/                    
      DATA RIGHT_RESULT_B/11.0,21.0,31.0,41.0,51.0/                    
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A=A+1.0                                                          
      B=B+1.0                                                          
                                                                       
      DO I=1,10                                                        
         IF (A(I) .NE. RIGHT_RESULT_A(I)) NO_GOOD = .TRUE.             
      ENDDO                                                            
      DO I=1,5                                                         
         IF (B(I) .NE. RIGHT_RESULT_B(I)) NO_GOOD = .TRUE.             
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',A                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT_A             
         WRITE (6,*) '< ACTUAL RESULT >   ',B                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT_B             
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '****** OK ******'                        
      ENDIF                                                            
      RETURN                                                           
      END                                                              
                                                                       
      SUBROUTINE SUB07                                               
      REAL,DIMENSION(5)::A,RIGHT_RESULT                                
      REAL X                                                           
      DATA A/1.0,2.0,3.0,4.0,5.0/                                      
      DATA X/100.0/                                                    
      DATA RIGHT_RESULT/101.,102.,103.,104.,105./                      
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A=A+X                                                            
                                                                       
      DO I=1,5                                                         
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
                                                                       
      SUBROUTINE SUB08                                               
      REAL,DIMENSION(5)::A,RIGHT_RESULT                                
      DATA A           / 10.0, 20.0, 30.0, 40.0, 50.0/                 
      DATA RIGHT_RESULT/100.0,200.0,300.0,400.0,500.0/                 
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      A=A*10.0                                                         
                                                                       
      DO I=1,5                                                         
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
      REAL A(5),B(5),RIGHT_RESULT(5)                                   
      DATA B           /10.0,20.0,30.0,40.0, 50.0/                     
      DATA RIGHT_RESULT/20.0,40.0,60.0,80.0,100.0/                     
      LOGICAL NO_GOOD/.FALSE./                                         
                                                                       
      EQUIVALENCE (A,B)                                                
                                                                       
      A=A+B                                                            
                                                                       
      DO I=1,5                                                         
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
                                                                       
      SUBROUTINE SUB10                                               
      REAL A(10),B(10)                                                 
      DATA A/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
      DATA B/-4.0,-3.0,-2.0,-1.0,0.0,1.0,2.0,3.0,4.0,5.0/              
                                                                       
      A(1:10:1)=A(1:10:1)                                              
                                                                       
      DO 10 I=1,10                                                     
        IF (A(I) .NE. B(I)) THEN                                       
          WRITE (6,999)                                                
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,998)                                                    
  20  CONTINUE                                                         
 998  FORMAT(1H ,'****** OK ******')                           
 999  FORMAT(1H ,'?????? NG ??????')                           
      RETURN                                                           
      END                                                              
                                                                       
      subroutine SUB13                                               
      real,dimension(5)::a,right_result                                
      real x,y                                                         
      equivalence (x,y)                                                
      data y/10.0/                                                     
      data right_result/5*20.0/                                        
      logical no_good/.false./                                         
                                                                       
      a=1.0                                                            
      x=y+x                                                            
      a=x                                                              
                                                                       
      do i=1,5                                                         
         if (a(i) .NE. right_result(i)) no_good = .true.               
      enddo                                                            
      if (no_good) then                                                
         write (6,*) '?????? NG ??????'                        
         write (6,*) '< ACTUAL RESULT >   ',a                          
         write (6,*) '< RIGHT  RESULT >   ',right_result               
         write (6,*) '?????? NG ??????'                        
      else                                                             
         write (6,*) '****** OK ******'                        
      endif                                                            
      return                                                           
      end                                                              
                                                                       
      subroutine SUB14                                               
      real,dimension(5)::a,right_result                                
      data a/1.0,2.0,3.0,4.0,5.0/                                      
      data right_result/5*1.0/                                         
      logical no_good/.false./                                         
                                                                       
      a=a(1)                                                           
                                                                       
      do i=1,5                                                         
         if (a(i) .NE. right_result(i)) no_good = .true.               
      enddo                                                            
      if (no_good) then                                                
         write (6,*) '?????? NG ??????'                        
         write (6,*) '< ACTUAL RESULT >   ',a                          
         write (6,*) '< RIGHT  RESULT >   ',right_result               
         write (6,*) '?????? NG ??????'                        
      else                                                             
         write (6,*) '****** OK ******'                        
      endif                                                            
      return                                                           
      end                                                              

      PROGRAM MAIN                                                   
      DATA N/10/                                                        
      LOGICAL*4  L10(10)/2*.TRUE.,3*.FALSE.,2*.TRUE.,3*.FALSE./         
      INTEGER*4  I10(10)/10*0/                                          
      REAL*4     R10(10)/10*0./                                         
      REAL*8     D10(10)/10*0./                                         
      COMPLEX*8  C10(10)/10*(0.,0.)/                                    
      DATA M/10/                                                        
      INTEGER*4 I20(10)/10*0/,I21(10)/1,2,3,4,5,1,2,3,4,3/,L/6/         
      REAL*4    R20(10)/-1,0,1,2,-3,-4,0,0,1,3/,R21(10)/10*0./          
      LOGICAL*4 L20(11)/2*.TRUE.,4*.FALSE.,.TRUE.,.FALSE.,3*.TRUE./     
      REAL*8    D20(10)/10*0./                                          
      COMPLEX*8 C20(10)/10*(0.,0.)/                                     
      WRITE(6,*) ' ***** LOOP 1 *****'                                  
      DO 10 I=1,N                                                       
        IF(L10(I)) I10(I)=I                                             
        IF(L10(I)) THEN                                                 
          R10(I) = I                                                    
        ELSE                                                            
          R10(I) = -I                                                   
        ENDIF                                                           
        IF ( R10(I)) 20,30,40                                           
   20    D10(I) = I+I                                                   
         GO TO 15                                                       
   30    D10(I) = I*I                                                   
         GO TO 15                                                       
   40    D10(I) = 2*I                                                   
         GO TO 15                                                       
   15   IF ( I10(I).NE.I) GO TO 10                                      
          C10(I) = I                                                    
   10 CONTINUE                                                          
      WRITE(6,*) I10,R10                                                
      WRITE(6,*) D10                                                    
      WRITE(6,*) C10                                                    
      WRITE(6,*) ' ***** LOOP 2 *****'                                  
      DO 200 J=1,M                                                      
        IF ( R20(L) ) 300,400,500                                       
  400     I20(J) = J                                                    
          GO TO 250                                                     
  500     I20(J) = 0                                                    
          GO TO 250                                                     
  300     I20(J) = -J                                                   
  250   IF ( L20(L+1) ) THEN                                            
          D20(J) = J + J                                                
        ELSE                                                            
          D20(J) = J * J                                                
        ENDIF                                                           
        IF ( L20(L) ) R21(J) = 3*J                                      
        IF ( I21(L).GT. 3 ) GO TO 200                                   
          C20(J) = J                                                    
  200 CONTINUE                                                          
      WRITE(6,*) I20                                                    
      WRITE(6,*) D20                                                    
      WRITE(6,*) R21                                                    
      WRITE(6,*) C20                                                    
      STOP                                                              
      END                                                               

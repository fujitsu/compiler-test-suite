      DATA   N2/2/,N10/10/,N5/5/                                        
      CHARACTER*4  CH10/'STOO'/                                         
      INTEGER*4   I10(10,2),I11(5,5),I12(5,5)                           
      REAL*8      Q10(5)/5*0/,Q11(5)/1,2,3,4,5/                         
      LOGICAL*4   L10(2)/.TRUE.,.FALSE./,L11(2),L12(2)                  
      DATA   I10/5*1,5*2,5*3,5*4/,I10S/0/,I11S/0/,I11/25*0/,I12/5*12,   
     1       5*18,5*30,5*36,5*40/, I12S/100/,I14S/0/                    
      DATA   L11/.FALSE.,.TRUE./,L12/.FALSE.,.FALSE./                   

      INTEGER*4  I20(10),I21(11,2),I22(10,2)                            
      LOGICAL*4  L20(10)/2*.FALSE.,2*.TRUE.,2*.FALSE.,4*.TRUE./         
      REAL*8     RD20(10)/1,2,3,4,5,6.1,7.2,8.3,9.4,10.5/               
      DATA       I21/22*0/,R20S/0/                                      

      INTEGER*4 I30(10,2),I31(10,2),I32(2,10)                           
      REAL*4    R30(2,2)                                                
      REAL*8    RD30S,RD30(10),RD31(10),RD32(11)                        
      CHARACTER CH30*3,CH31*5                                           
      DATA  I30/20*1/,I31/4*1,4*2,4*3,4*4,4*5/,I32/10*1,10*-1/,         
     1      R30/1,2,3,4/, CH30/'   '/,CH31/'TEST '/, RD30/5*1.5,5*2.5/, 
     2      RD31/3*1.5,3*1.4,3*1.3,1/,RD32/11*1.8/                      

      I13S = 0
      I22 = 0

      WRITE(6,*) ' ----- NO.1 -----'                                    
      DO 1000 I=1,N2                                                    
        DO 1200 J=1,N10                                                 
          IF (CH10(1:4) .EQ. 'STOP' ) GO TO 1200                        
          DO 100 I1=1,N10                                               
  100       CALL SUB1(I1)                                               
          DO 110 I2=1,N10                                               
            IF ( L10(I) ) THEN                                          
              I10S = I10S + I10(I2,I)                                   
            ELSE                                                        
              I11S = I11S + I10(I2,I)                                   
            ENDIF                                                       
  110     CONTINUE                                                      
          DO 120 I3=1,N5                                                
            Q10(I3) = Q11(I3)                                           
  120       I11(I3,I3) = I12(I3,I3)/6                                   
          DO 1100 I4=1,N5                                               
            IF ( I12S .GE. I11(I4,I) ) GO TO 131                        
              I12S = I11(I4,I)                                          
              I13S = I4                                                 
  131       CONTINUE                                                    
            IF ( L11(I).OR.L12(I) ) THEN                                
              I14S = I14S + I11(I4,I4)                                  
              IF ( L11(I) ) WRITE(6,*)' TEST'                         
              I11(I4,I4) = I12(I4,I)                                    
            ENDIF                                                       
 1100     CONTINUE                                                      
 1200   CONTINUE                                                        
 1000 CONTINUE                                                          
      WRITE(6,*) 'I10S = ',I10S                                         
      WRITE(6,*) 'I11S = ',I11S                                         
      WRITE(6,*) 'Q10  = ',Q10                                          
      WRITE(6,*) 'I11  = ',I11                                          
      WRITE(6,*) 'I12S = ',I12S                                         
      WRITE(6,*) 'I13S = ',I13S                                         
      WRITE(6,*) 'I14S = ',I14S                                         

      WRITE(6,*) ' ----- NO.2 -----'                                    
      DO 2000 I=1,1                                                     
        DO 2100 J=1,N10                                                 
          DO 200 I1=1,N10                                               
            I20(I1) = I1                                                
            IF ( L20(I1) ) I20(I1) = -I1                                
  200     CONTINUE                                                      
          DO 210 I2=1,N10                                               
            I21(I2,I) = 1                                               
            I22(I2,I) = I21(I2,I)                                       
            I20S = I22(I2,I)                                            
  210       I21(I2+1,I) = I20S                                          
          DO 220 I3=1,N10                                               
  220       R20S = R20S + RD20(I3)                                      
          DO 230 I4=1,N10                                               
  230     CONTINUE                                                      
 2100   CONTINUE                                                        
 2000 CONTINUE                                                          
      WRITE(6,*) ' I20  = ',I20                                         
      WRITE(6,*) ' I21  = ',I21                                         
      WRITE(6,*) ' I22  = ',I22                                         
      WRITE(6,*) ' R20S = ',R20S                                        

      WRITE(6,*) ' ----- NO.3 -----'                                    
      DO 3000 I=1,N2                                                    
        DO 3100 J=1,N10                                                 
          I30(J,I) = I30(J,I) +I31(J,I)*I32(I,J)                        
          I30S = I30(J,I)                                               
          DO 300 I1=1,N10                                               
            I31S = I30S                                                 
            R30S = I31S                                                 
  300       R30(I,I) = R30(I,I) + R30S                                  
          DO 310 I2=1,N10                                               
  310     CONTINUE                                                      
          DO 320 I3=1,N10                                               
  320       CH30(1:3) = CH31(1:3)                                       
          DO 330 I4=1,N10                                               
            RD30S = RD30(I4) + RD31(I4)                                 
  330       RD32(I4+1) = RD32(I4) + RD30S                               
          WRITE(6,*) 'COUNT = ',J                                       
 3100   CONTINUE                                                        
 3000 CONTINUE                                                          
      WRITE(6,*) 'I30 = ',I30                                           
      WRITE(6,*) 'R30 = ',R30                                           
      WRITE(6,*) 'CH30= ',CH30                                          
      WRITE(6,*) 'RD32= ',RD32                                          
      STOP                                                              
      END                                                               
      SUBROUTINE SUB1(I1)                                               
      I1 = I1 + 1                                                       
      RETURN                                                            
      END                                                               





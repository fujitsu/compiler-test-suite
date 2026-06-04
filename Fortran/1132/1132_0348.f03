!             CVCT8023            LEVEL=1        DATE=84.07.12          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8023                                       C 
!  2. PURPOSE        : BUSY ON EXIT   : EQUIVALENCE DATA              C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 -10                                   C 
!*********************************************************************C 
!                                                                       
PROGRAM CV8023                                                    
  REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10)
  type TAG1
     real *4 R4A2(10)   
  end type TAG1
  type (TAG1) st1
  LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
  DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
  DATA st1%R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
  DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                   & 
       ,  .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
  DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                  &
       ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
  EQUIVALENCE (R4S1,R4A1(1)),(R4S2,R4A1(2)),(R4S3(1),R4A1(3))       
  EQUIVALENCE (L4S1,L4A1(1)),(L4S2,L4A1(2)),(L4S3(1),L4A1(3))       
  !                                                                       
  WRITE(6,*) '#### CVCT8023 ## BUSY ON EXIT ####'                   
  !CCCCCCCCCCCCCC                                                         
  ! TEST NO. 1  C                                                         
  !CCCCCCCCCCCCCC                                                         
  DO I=1,10                                                      
     R4S1 = R4A1(I)                                                  
     R4S2 = R4A1(I) + 1                                              
     R4S3(1) = R4A1(I) + st1%R4A2(I)                                     
     R4A1(I) = R4S1                                                  
     st1%R4A2(I) = R4S2                                                  
     L4S1 = L4A1(I)                                                  
     L4S2 = .NOT.L4A1(I)                                             
     L4S3(1) = L4A1(I).AND.L4A2(I)                                   
     L4A1(I) = L4S1                                                  
     L4A2(I) = L4S2                                                  
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 1 ***'                                    
  WRITE(6,*) R4S1,R4S2,R4S3,R4A1,st1%R4A2                               
  WRITE(6,*) L4S1,L4S2,L4S3,L4A1,L4A2                               
  !                                                                       
  !CCCCCCCCCCCCCC                                                         
  ! TEST NO. 2  C                                                         
  !CCCCCCCCCCCCCC                                                         
  DO I=1,10                                                      
     IF (L4A1(I)) THEN                                               
        R4S1 = R4A1(I)                                                
        R4S2 = R4A1(I) + 1                                            
        R4S3(1) = R4A1(I) + st1%R4A2(I)                                   
        R4A1(I) = R4S1                                                
        st1%R4A2(I) = R4S2                                                
        L4S1 = L4A1(I)                                                
        L4S2 = .NOT.L4A1(I)                                           
        L4S3(1) = L4A1(I).AND.L4A2(I)                                 
        L4A1(I) = L4S1                                                
        L4A2(I) = L4S2                                                
     ELSE                                                            
        R4S1 = R4A1(I)  + 2                                           
        R4S2 = R4A1(I)                                                
        R4S3(1) = R4A1(I) - st1%R4A2(I)                                   
        R4A1(I) = R4S2                                                
        st1%R4A2(I) = R4S1                                                
        L4S2 = L4A1(I)                                                
        L4S1 = .NOT.L4A1(I)                                           
        L4S3(1) = L4A1(I).OR.L4A2(I)                                  
        L4A1(I) = L4S2                                                
        L4A2(I) = L4S1                                                
     ENDIF
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 2 ***'                                    
  WRITE(6,*) R4S1,R4S2,R4S3,R4A1,st1%R4A2                               
  WRITE(6,*) L4S1,L4S2,L4S3,L4A1,L4A2                               
  !                                                                       
  !CCCCCCCCCCCCCC                                                         
  ! TEST NO. 3  C                                                         
  !CCCCCCCCCCCCCC                                                         
  DO I=1,10                                                      
     IF (L4A2(I).AND.L4A1(I)) THEN                                   
        R4S1 = R4A1(I)                                                
        R4S2 = R4A1(I) + 1                                            
        R4S3(1) = R4A1(I) + st1%R4A2(I)                                   
        R4A1(I) = R4S1                                                
        st1%R4A2(I) = R4S2                                                
        L4S1 = L4A1(I)                                                
        L4S2 = .NOT.L4A1(I)                                           
        L4S3(1) = L4A1(I).AND.L4A2(I)                                 
        L4A1(I) = L4S1                                                
        L4A2(I) = L4S2                                                
     ENDIF
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 3 ***'                                    
  WRITE(6,*) R4S1,R4S2,R4S3,R4A1,st1%R4A2                               
  WRITE(6,*) L4S1,L4S2,L4S3,L4A1,L4A2                               
  !                                                                       
  !                                                                       
  STOP                                                              
END PROGRAM CV8023

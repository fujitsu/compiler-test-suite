!             CVCT8021            LEVEL=1        DATE=84.07.12          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8021                                       C 
!  2. PURPOSE        : BUSY ON EXIT : FUNCTION                        C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 - 10                                  C 
!*********************************************************************C 
!                                                                       
PROGRAM CV8021                                                    
  REAL * 4 R4S1,R4S2
  type TAG1
     REAL*4 R4S3(10),R4A1(10),R4A2(10)
  end type TAG1
  type TAG2
     LOGICAL * 4 L4A1(10),L4A2(10)
  end type TAG2
  type (TAG1) st1
  type (TAG2) st2
  DATA st1%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
  DATA st1%R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
  DATA st2%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.  &
       , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
  DATA st2%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.  &
       ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
  !                                                                       
  WRITE(6,*) '#### CVCT8021 ## BUSY ON EXIT ####'                   
  !                                                                       
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 1 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     R4S1 = SIN(st1%R4A1(I))                                             
     R4S2 = ABS(st1%R4A2(I))                                             
     st1%R4S3(I) = R4S1                                                  
     st1%R4A2(I) = R4S2                                                  
  END DO
  DO I=1,10                                                      
     st1%R4A1(I) = ABS(R4S1)                                             
     st1%R4A2(I) = COS(st1%R4A2(I))                                          
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 1 ***'                                    
  WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2                                    
  !                                                                       
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 2 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     IF (st2%L4A1(I)) THEN                                               
        R4S1 = SIN(st1%R4A1(I))                                           
        R4S2 = ABS(st1%R4A2(I))                                           
        st1%R4S3(I) = R4S1                                                
        st1%R4A2(I) = R4S2                                                
     ELSE                                                            
        R4S1 = SIN(st1%R4A2(I))                                           
        R4S2 = ABS(st1%R4A1(I))                                           
        st1%R4S3(I) = R4S2                                                
        st1%R4A2(I) = R4S1                                                
     ENDIF
  END DO
  DO I=1,10                                                      
     IF (st2%L4A2(I)) THEN                                               
        st1%R4A1(I) = ABS(R4S1)                                           
        st1%R4A2(I) = COS(st1%R4A2(I))                                        
     ELSE                                                            
        st1%R4A2(I) = ABS(R4S1)                                           
        st1%R4A1(I) = COS(st1%R4A2(I))                                        
     ENDIF
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 2 ***'                                    
  WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2                                    
  !                                                                       
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 3 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     IF (st2%L4A1(I)) THEN                                               
        R4S1 = SIN(st1%R4A1(I))                                           
        R4S2 = ABS(st1%R4A2(I))                                           
        st1%R4S3(I) = R4S1                                                
        st1%R4A2(I) = R4S2                                                
     ENDIF
  END DO
  DO I=1,10                                                      
     IF (st2%L4A2(I))  THEN                                              
        st1%R4A1(I) = ABS(R4S1)                                           
        st1%R4A2(I) = COS(st1%R4A2(I))                                        
     ENDIF
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 2 ***'                                    
  WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2                                    
  !                                                                       
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 4 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     st1%R4S3(1) = SIN(st1%R4A1(I))                                          
     st1%R4S3(2) = ABS(st1%R4A2(I))                                          
     st1%R4S3(I) = st1%R4S3(3)                                               
     st1%R4A2(I) = st1%R4S3(4)                                               
  END DO
  DO I=1,10                                                      
     st1%R4A1(I) = ABS(st1%R4S3(1))                                          
     st1%R4A2(I) = COS(st1%R4S3(2))                                          
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 4 ***'                                    
  WRITE(6,*) st1%R4S3,R4S1,R4S2,st1%R4A1,st1%R4A2                               
  !                                                                       
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 5 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     IF (st2%L4A2(I)) THEN                                               
        st1%R4S3(1) = SIN(st1%R4A1(I))                                        
        st1%R4S3(2) = ABS(st1%R4A2(I))                                        
        st1%R4S3(I) = st1%R4S3(3)                                             
        st1%R4A2(I) = st1%R4S3(4)                                             
     ENDIF
  END DO
  DO I=1,10                                                      
     IF (st2%L4A1(I)) THEN                                               
        st1%R4A1(I) = ABS(st1%R4S3(5))                                        
        st1%R4A2(I) = COS(st1%R4S3(6))                                        
     ENDIF
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 5 ***'                                    
  WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2,st1%R4S3                               
  !                                                                       
  !                                                                       
  STOP                                                              
END PROGRAM CV8021

!             CVCT8026            LEVEL=1        DATE=84.07.12          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8026                                       C 
!  2. PURPOSE        : BUSY ON EXIT  : MI                             C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 - 10                                  C 
!*********************************************************************C 
!                                                                       
PROGRAM CV8026                                                    
  implicit none
  integer COUNT,I,J
  type TAG
  REAL * 4 R4S1,R4S2,R4S3(10),R4A1(10),R4A2(10),R4A3(10,10)         
  end type
  type (TAG) st
  LOGICAL * 4 L4S1,L4S2,L4S3(10),L4A1(10),L4A2(10)                  
  DATA st%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
  DATA st%R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
  DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                     &
         ,   .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                 
  DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                    &
          , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
  st%R4S3 = 0
  L4S3 = .FALSE.
  !                                                                       
  !  INIT                                                                 
  !                                                                       
  COUNT = 0.                                                        
  DO I=1,10                                                      
     DO J=1,10                                                    
        st%R4A3(I,J) = COUNT                                             
        COUNT = COUNT + 1.                                            
     END DO
  END DO
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 1 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     DO J=1,10                                                    
        st%R4S1 = st%R4A3(I,J)   + 1.                                      
        st%R4A3(I,J) = st%R4S1                                             
        st%R4S3(1) = st%R4A3(I,J) + 1.                                     
     END DO
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 1 **'                                     
  WRITE(6,*) st%R4S1,st%R4A3,st%R4S3                                         
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 2 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     DO J=1,10                                                    
        st%R4S1 = st%R4A1(I) + st%R4A2(J)                                     
        st%R4S2 = st%R4A1(J) + 1.                                          
        st%R4S3(1) = st%R4A2(J) + 1.                                       
        st%R4A1(J) = st%R4S1 + st%R4S2 + st%R4S3(1)                              
        st%R4A3(I,J) = st%R4S1                                             
        L4S1 = L4A1(I)                                               
        L4S2 = L4A2(J)                                               
        L4S3(1) = L4A1(I) .AND. L4A2(J)                              
     END DO
  END DO
!
  WRITE(6,*) '** TEST NO. 2 **'                                    
  WRITE(6,*) st%R4S1,st%R4S2,st%R4S3,st%R4A1,st%R4A3,L4S1,L4S2,L4S3               
  !CCCCCCCCCCCCC                                                          
  ! TETS NO. 3 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     st%R4S1 = st%R4A1(I)                                                  
     st%R4S3(1) = st%R4A1(I) + st%R4A2(I)                                     
     L4S1 = L4A1(I) .AND. L4A2(I)                                    
     L4S2 = .NOT.L4A1(I)                                             
     L4S3(1) = .NOT.(L4A1(I).AND.L4A2(I))                            
     DO J=1,10                                                    
        st%R4A1(J) = st%R4S1                                                
        st%R4A2(J) = st%R4S3(1)                                             
        L4A1(J) = L4S1 .AND. L4S2                                     
        L4A2(J) = L4S3(1)                                             
     END DO
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 3 **+'                                   
  WRITE(6,*) st%R4S1,st%R4S3,L4S1,L4S2,L4S3,st%R4A1,st%R4A2,L4A1,L4A2          
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 4 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     st%R4A1(I) = st%R4S1                                                  
     st%R4A2(I) = st%R4S1 + st%R4S2                                           
     L4A1(I) = L4S1                                                  
     L4A2(I) = L4S3(1)                                               
     DO J=1,10                                                    
        st%R4S1 = st%R4A1(I)                                                
        st%R4S2 = st%R4A1(I) + st%R4A2(I)                                      
        st%R4S3(4) = st%R4A1(I) - st%R4A2(I)                                   
        L4S1 = L4A1(I)                                                
        L4S2 = L4A1(I).OR.L4A2(I)                                     
        L4S3(4) = .NOT.L4A1(I)                                        
     END DO
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 4 ***'                                    
  WRITE(6,*) st%R4S1,st%R4S2,st%R4S3,L4S1,L4S2,L4S3,st%R4A1,st%R4A2,L4A1,L4A2      
  !                                                                       
  STOP                                                              
END PROGRAM CV8026

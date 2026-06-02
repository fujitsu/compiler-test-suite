!             CVCT8025            LEVEL=2        DATE=86.01.20          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8025                                       C 
!  2. PURPOSE        : BUSY ON EXIT  : COMMON VARIABLE                C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 - 10                                  C 
!*********************************************************************C 
!                                                                       
PROGRAM CV8025                                                    
  implicit none
  integer*4 i
  REAL * 4 R4S1,R4S2
  type TAG
  REAL * 4 R4S3(10),R4A1(10),R4A2(10)                     
  end type
  type (TAG) st1
  LOGICAL * 4 L4S1,L4S2
  type TAG2
  LOGICAL * 4 L4S3(10),L4A1(10),L4A2(10)                    
  end type 
  type (TAG2) st2
  DATA st1%R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
  DATA st1%R4A2/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./                          
  DATA st2%L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                     &
          ,  .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
  DATA st2%L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                    &
          ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
  DO I=1,10                                                       
     st2%L4S3(I)=MOD(I,2).EQ.0                                            
  END DO
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 1 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     R4S1 = st1%R4A1(I)                                                  
     st1%R4A2(I) =R4S1                                                   
     st1%R4S3(I) = st1%R4A2(I)                                               
     L4S1 = st2%L4A1(I)                                                  
     st2%L4A2(I) = L4S1                                                  
     st2%L4S3(1) = st2%L4A2(I)                                               
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 1 **'                                     
  WRITE(6,*) R4S1,st1%R4A2,st1%R4S3,L4S1,st2%L4A2,st2%L4S3                          
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 3 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     IF (st2%L4A1(I)) THEN                                               
        R4S1 = st1%R4A1(I) + 1.                                           
        st1%R4A1(I) = R4S1                                                
        L4S1 = st2%L4A1(I)                                                
        st2%L4A2(I) = L4S1                                                
     ELSE                                                            
        R4S1 = st1%R4A1(I) + st1%R4A1(I)                                      
        st1%R4A2(I) = R4S1                                                
        L4S1 = .NOT.st2%L4A1(I)                                           
        st2%L4A2(I) = L4S1                                                
     ENDIF
  END DO
  WRITE(6,*) '** TEST NO. 3 **'                                   
  WRITE(6,*) R4S1,st1%R4A1,st1%R4A2,L4S1,st2%L4A1,st2%L4A2                        
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 4 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     IF (st2%L4A2(I)) THEN                                               
        R4S1 = st1%R4A1(I) + 1.                                           
        st1%R4A2(I) = R4S1                                                
        st1%R4S3(1) = st1%R4A2(I) + st1%R4A1(I)                                   
        L4S1 = st2%L4A1(I)                                                
        st2%L4A2(I) = L4S1                                                
        st2%L4S3(1) = .NOT.st2%L4A2(I)                                        
        st2%L4A2(I) = st2%L4S3(2)                                             
     ENDIF
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 4 **'                                     
  WRITE(6,*) R4S1,st1%R4A1,st1%R4A2,L4S1,st2%L4A1,st2%L4A2,st1%R4S3,st2%L4S3                
  !                                                                       
  STOP                                                              
END PROGRAM CV8025

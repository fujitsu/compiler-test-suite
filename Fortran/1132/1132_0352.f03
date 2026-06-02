!             CVCT8027            LEVEL=1        DATE=84.07.12          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8027                                       C 
!  2. PURPOSE        : BUSY ON EXIT  : MIX (S , V )                   C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 - 11                                  C 
!*********************************************************************C 
!                                                                       
PROGRAM CV8027                                                    
  implicit none
  integer i
  type TAG1
  INTEGER*2 :: I2A1 = 1
  INTEGER*2 :: I2A2
  end type
  type(TAG1) st1(10)
  REAL * 4 R4S1,R4S2
  type TAG2
  REAL * 4 R4S3,R4A1,R4A2
  end type
  type(TAG2) st2(10)
  LOGICAL * 4 L4S1,L4S2
  type TAG3
  LOGICAL * 4 L4S3,L4A1,L4A2
  end type 
  type(TAG3)st3(10)

!  DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
!  DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
!  DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.  &
!       , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./                  
!  DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. & 
!       , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   

  do i=1,10
     st1(i)%i2a2 = i
     st2(i)%r4a1 = i
     if (mod(i,2).eq.1) then
        st2(i)%r4a2 = 1
        st3(i)%l4a1 = .true.
        st3(i)%l4a2 = .false.        
     else
        st2(i)%r4a2 = 2
        st3(i)%l4a1 = .false.
        st3(i)%l4a2 = .true.        
     endif
  end do

  I = 0
  R4S2 = 0
  L4S2 = .false.
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 1 C                                                          
  !CCCCCCCCCCCCC                                                          
  R4S1 = st2(1)%R4A1
  L4S1 = .TRUE.                                                     
  DO I=1,10                                                      
     st1(I)%I2A1 = st2(I)%R4A1                                               
     st1(I)%I2A2 = st2(I)%R4A1 + st1(I)%I2A2                                     
     R4S1 = st2(I)%R4A1 + st2(I)%R4A2                                        
     L4S1 = st3(I)%L4A1 .AND. st3(I)%L4A2                                    
     st2(1)%R4S3 = st2(I)%R4A1 + 1.                                          
     st3(1)%L4S3 = .NOT.st3(I)%L4A1                                          
     st1(I)%I2A1 = st2(I)%R4A1                                               
     st1(I)%I2A2 = st2(I)%R4A1 + st1(I)%I2A2                                     
     st2(I)%R4A1 = R4S1  + st2(I)%R4A1                                       
     st2(I)%R4A2 = R4S2  + st2(I)%R4A2                                       
     st1(I)%I2A1 = st1(I)%I2A1 + st2(I)%R4A1                                     
     st1(I)%I2A2 = st2(I)%R4A1 + st1(I)%I2A2 + 1.                                
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 1 **'                                     
  WRITE(6,*) R4S1,R4S2,L4S1,L4S2,st2%R4A1,st2%R4A2,st3%L4A1,st3%L4A2                
  WRITE(6,*) st1%I2A1,st1%I2A2                                              
  !                                                                       
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 2 C                                                          
  !CCCCCCCCCCCCC                                                          
  R4S1 = st2(1)%R4A1
  L4S1 = .TRUE.                                                     
  DO I=1,10                                                      
     IF (st3(I)%L4A1) THEN                                               
        st1(I)%I2A1 = st2(I)%R4A1                                             
        st1(I)%I2A2 = st2(I)%R4A1 + st1(I)%I2A2                                   
        R4S1 = st2(I)%R4A1 + st2(I)%R4A2                                      
        L4S1 = st3(I)%L4A1 .AND. st3(I)%L4A2                                  
        st2(1)%R4S3 = st2(I)%R4A1 + 1.                                        
        st3(1)%L4S3 = .NOT.st3(I)%L4A1                                        
        st1(I)%I2A1 = st2(I)%R4A1                                             
        st1(I)%I2A2 = st2(I)%R4A1 + st1(I)%I2A2                                   
        st2(I)%R4A1 = R4S1  + st2(I)%R4A1                                     
        st2(I)%R4A2 = R4S2  + st2(I)%R4A2                                     
        st1(I)%I2A1 = st1(I)%I2A1 + st2(I)%R4A1                                   
        st1(I)%I2A2 = st2(I)%R4A1 + st1(I)%I2A2 + 1.                              
     ELSE                                                            
        st1(I)%I2A1 = st2(I)%R4A2                                             
        st1(I)%I2A2 = st2(I)%R4A1 - st1(I)%I2A2                                   
        R4S1 = st2(I)%R4A1 * st2(I)%R4A2                                      
        L4S1 = st3(I)%L4A1 .OR. st3(I)%L4A2                                   
        st2(1)%R4S3 = st2(I)%R4A1 - 1.                                        
        st3(1)%L4S3 = .NOT.st3(I)%L4A1                                        
        st1(I)%I2A1 = st2(I)%R4A2                                             
        st1(I)%I2A2 = st2(I)%R4A2 + st1(I)%I2A2                                   
        st2(I)%R4A1 = R4S1  - st2(I)%R4A1                                     
        st2(I)%R4A2 = R4S2  - st2(I)%R4A2                                     
        st1(I)%I2A1 = st1(I)%I2A1 + st2(I)%R4A2                                   
        st1(I)%I2A2 = st2(I)%R4A1 + st1(I)%I2A1 + 1.                              
     ENDIF
  END DO
  !                                                                       
  WRITE(6,*) '** TEST NO. 2 **'                                     
  WRITE(6,*) R4S1,R4S2,L4S1,L4S2,st2%R4A1,st2%R4A2,st3%L4A1,st3%L4A2                
  !                                                                       
  STOP                                                              
END PROGRAM CV8027

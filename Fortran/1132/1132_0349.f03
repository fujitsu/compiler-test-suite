!             CVCT8024            LEVEL=1        DATE=84.07.12          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8024                                       C 
!  2. PURPOSE        : BUSY ON EXIT  : VECTORE LENGTH                 C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 -10                                   C 
!*********************************************************************C 
!                                                                       
PROGRAM CV8024                                                    
  implicit none
  integer*4 i,n
  REAL * 4 R4S1,R4S2
  type TAG1
  REAL * 4 R4S3,R4A1,R4A2
  end type
  type (TAG1) st1(10)
  LOGICAL * 4 L4S1,L4S2
  type TAG2
  LOGICAL * 4 L4S3,L4A1,L4A2
  end type 
  type (TAG2) st2(10)
!  DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./                         
!  DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./                          
!  DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.                    
!  +       ,  .FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE./                   
!  DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.                   
!  +       ,  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
  DATA N/10/                                                        
  do i=1,10
     st1(i)%R4A1 = i
     if (mod(i,2) .eq. 1) then
        st1(i)%R4A2 = 1
        st2(i)%L4A1 = .true.
        st2(i)%L4A2 = .false.
     else 
        st1(i)%R4A2 = 2
        st2(i)%L4A1 = .false.
        st2(i)%L4A2 = .true.
     endif
  enddo
  st2(10)%L4A1 = .true.
  !                                                                       
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 1 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,10                                                      
     R4S1 = st1(I)%R4A1                                                   
     L4S1 = st2(I)%L4A1.AND.st2(I)%L4A2                                       
  END DO
  !                                                                       
  WRITE(6,*) '*** TEST NO. 1 **'                                    
  WRITE(6,*) R4S1,L4S1                                              
  !CCCCCCCCCCCCC                                                          
  ! TEST NO. 2 C                                                          
  !CCCCCCCCCCCCC                                                          
  DO I=1,N                                                       
     R4S1 = st1(I)%R4A1 + st1(I)%R4A2                                         
     L4S1 = st2(I)%L4A1.OR.st2(I)%L4A2                                        
  END DO
  CALL SUBL(N)                                                      
  DO I=1,N                                                       
     R4S2 = st1(I)%R4A1 + st1(I)%R4A2 + 1.                                   
     L4S2 = .NOT.(st2(I)%L4A1.AND.st2(I)%L4A2)                               
  END DO
  !                                                                       
  WRITE(6,*) '*** TEST NO. 2 **'                                    
  WRITE(6,*) R4S1,R4S2,L4S1,L4S2                                    
  STOP                                                              
END PROGRAM CV8024
!                                                                       
SUBROUTINE SUBL(N)                                                
  INTEGER * 4 N                                                     
  N = 10                                                            
  RETURN                                                            
END SUBROUTINE SUBL

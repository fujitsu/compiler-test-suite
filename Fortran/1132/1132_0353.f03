!             CVCT8028            LEVEL=1        DATE=84.07.12          
!*********************************************************************C 
!  1. PROGRAM NAME   : CVCT8028                                       C 
!  2. PURPOSE        : BUSY ON EXIT : VRL TEST                        C 
!  3. RESULTS        : V , S                                          C 
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C 
!  5. HISTORY        : 1984 - 7 - 11                                  C 
!*********************************************************************C 
!                                                                       
      PROGRAM CV8028                                                    
      REAL * 4 R4S1,R4S2
      type TAG1
      REAL * 4 R4S3,R4A1,R4A2                     
      end type
      type(TAG1) st1(20)
      LOGICAL * 4 L4S1,L4S2
      type TAG2
      LOGICAL * 4 L4S3,L4A1,L4A2                  
      end type
      type (TAG2) st2(20)
      real*4 R4A1(20)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.    &
             ,  11.,12.,13.,14.,15.,16.,17.,18.,19.,20./
      real*4 R4A2(20)/1.,2.,1.,2.,1.,2.,1.,2.,1.,1.     &
             ,  2.,2.,2.,2.,2.,2.,2.,2.,2.,2./          
      logical*4 L4A1(20)/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.  &
              , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.          &
              , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.          &
              , .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./ 
      logical*4 L4A2(20)/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE. &
              , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.           &
              , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.           &
              , .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./                   
      st1%R4A1 = R4A1
      st1%R4A2 = R4A2
      st2%L4A1 = L4A1
      st2%L4A2 = L4A2
!CCCCCCCCCCCCC                                                          
! TEST NO. 1 C  VLENG => 16 (VP(100))                                   
!CCCCCCCCCCCCC                                                          
!VOCL LOOP,VRL(256)                                                     
      DO I=1,15                                                      
        R4S1 = st1(I)%R4A1 + st1(I)%R4A2                                        
        st1(I)%R4A2 = R4S1                                                  
        R4S2 = st1(I)%R4A2 + 1.                                             
        st1(1)%R4A1 = R4S2                                                  
        st1(1)%R4S3 = st1(I)%R4A1 + st1(I)%R4A2                                     
        L4S1 = st2(I)%L4A1                                                  
        st2(I)%L4A2 = .NOT.L4S1                                             
        L4S2 = st2(I)%L4A2 .AND. L4S1                                       
        st2(I)%L4A1 = L4S2                                                  
      END DO
!                                                                       
       WRITE(6,*) '** TEST NO. 1 - 1 **'                                
       WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2,L4S1,L4S2,st2%L4A1,st2%L4A2               
!                                                                       
!VOCL LOOP,VRL(256)                                                     
      DO I=1,16                                                      
        R4S1 = st1(I)%R4A1 + st1(I)%R4A2                                        
        st1(I)%R4A2 = R4S1                                                  
        R4S2 = st1(I)%R4A2 + 1.                                             
        st1(1)%R4A1 = R4S2                                                  
        st1(1)%R4S3 = st1(I)%R4A1 + st1(I)%R4A2                                     
        L4S1 = st2(I)%L4A1                                                  
        st2(I)%L4A2 = .NOT.L4S1                                             
        L4S2 = st2(I)%L4A2 .AND. L4S1                                       
        st2(I)%L4A1 = L4S2                                                  
      END DO
!                                                                       
       WRITE(6,*) '** TEST NO. 1 -2 **'                                 
       WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2,L4S1,L4S2,st2%L4A1,st2%L4A2               
!                                                                       
!VOCL LOOP,VRL(256)                                                     
      DO I=1,17                                                      
        R4S1 = st1(I)%R4A1 + st1(I)%R4A2                                        
        st1(I)%R4A2 = R4S1                                                  
        R4S2 = st1(I)%R4A2 + 1.                                             
        st1(I)%R4A1 = R4S2                                                  
        st1(1)%R4S3 = st1(I)%R4A1 + st1(I)%R4A2                                     
        L4S1 = st2(I)%L4A1                                                  
        st2(I)%L4A2 = .NOT.L4S1                                             
        L4S2 = st2(I)%L4A2 .AND. L4S1                                       
        st2(I)%L4A1 = L4S2                                                  
      END DO
!                                                                       
       WRITE(6,*) '** TEST NO. 1 - 3 **'                                
       WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2,L4S1,L4S2,st2%L4A1,st2%L4A2               
!                                                                       
!CCCCCCCCCCCCC                                                          
! TEST NO. 2 C  VLENG => 16 (VP(100))                                   
!CCCCCCCCCCCCC                                                          
!VOCL LOOP,VRL(256)                                                     
      DO I=1,15                                                      
        IF (st2(I)%L4A1) THEN                                               
          R4S1 = st1(I)%R4A1 + st1(I)%R4A2                                      
          st1(I)%R4A2 = R4S1                                                
          R4S2 = st1(I)%R4A2 + 1.                                           
          st1(1)%R4A1 = R4S2                                                
          st1(1)%R4S3 = st1(I)%R4A1 + st1(I)%R4A2                                   
          L4S1 = st2(I)%L4A1                                                
          st2(I)%L4A2 = .NOT.L4S1                                           
          L4S2 = st2(I)%L4A2 .AND. L4S1                                     
          st2(I)%L4A1 = L4S2                                                
        ENDIF                                                           
      END DO
!                                                                       
       WRITE(6,*) '** TEST NO. 2 - 1 **'                                
       WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2,L4S1,L4S2,st2%L4A1,st2%L4A2               
!                                                                       
!VOCL LOOP,VRL(256)                                                     
      DO I=1,16                                                      
        IF (st2(I)%L4A2) THEN                                               
          R4S1 = st1(I)%R4A1 + st1(I)%R4A2                                      
          st1(I)%R4A2 = R4S1                                                
          R4S2 = st1(I)%R4A2 + 1.                                           
          st1(I)%R4A1 = R4S2                                                
          st1(1)%R4S3 = st1(I)%R4A1 + st1(I)%R4A2                                   
          L4S1 = st2(I)%L4A1                                                
          st2(I)%L4A2 = .NOT.L4S1                                           
          L4S2 = st2(I)%L4A2 .AND. L4S1                                     
          st2(I)%L4A1 = L4S2                                                
        ENDIF                                                           
      END DO
!                                                                       
       WRITE(6,*) '** TEST NO. 2 -2 **'                                 
       WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2,L4S1,L4S2,st2%L4A1,st2%L4A2               
!                                                                       
!VOCL LOOP,VRL(256)                                                     
      DO I=1,17                                                      
        IF (st2(I)%L4A1)  THEN                                              
          R4S1 = st1(I)%R4A1 + st1(I)%R4A2                                      
          st1(I)%R4A2 = R4S1                                                
          R4S2 = st1(I)%R4A2 + 1.                                           
          st1(I)%R4A1 = R4S2                                                
          st1(1)%R4S3 = st1(I)%R4A1 + st1(I)%R4A2                                   
          L4S1 = st2(I)%L4A1                                                
          st2(I)%L4A2 = .NOT.L4S1                                           
          L4S2 = st2(I)%L4A2 .AND. L4S1                                     
          st2(I)%L4A1 = L4S2                                                
        ENDIF                                                           
      END DO
!                                                                       
       WRITE(6,*) '** TEST NO. 3 - 3 **'                                
       WRITE(6,*) R4S1,R4S2,st1%R4A1,st1%R4A2,L4S1,L4S2,st2%L4A1,st2%L4A2               
!                                                                       
      STOP                                                              
      END                                                               

      PROGRAM MAIN                                                      
      LOGICAL LANS                                                      
      INTEGER NO                                                        
      LOGICAL       L41,L42                                             
      CHARACTER*2 CH21,CH22                                             
      INTEGER     I41,I42                                               
      PRINT *,'TEST OF EXPRESSION'                                      
      NO = 0                                                            
      NO = NO + 1                                                       
      CH21 = 'AA'                                                       
      LANS = .NOT.CH21//((CH21)).EQ.CH21//CH21                          
      CALL CHKL(LANS,.FALSE.,NO)                                        
      NO = NO + 1                                                       
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      I41 = 1                                                           
      I42 = 2                                                           
      LANS = .NOT.CH21//((CH22)).EQ.CH21//CH22.EQV.                     
     1       I41.NE.I42-1                                               
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      I41 = 1                                                           
      I42 = 2                                                           
      LANS = CH21//CH22.EQ.'AABB'.EQV..NOT.CH21//(((CH22))).EQ.CH21     
     1       .OR..NOT..NOT..NOT.I41*I42.EQ.I42/I41                      
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      I41 = 1                                                           
      I42 = 2                                                           
      LANS = L41.EQV..NOT.L42.EQV.L42.OR..NOT.I41-I42*(-1).EQ.3-1*1     
     1       .AND.(CH21//(((CH22//CH22))).EQ.'AABBBB')                  
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      I41 = 1                                                           
      I42 = 2                                                           
      LANS = CH21//(((CH22//CH22)))//CH21.EQ.'AABBBBAA'.AND.            
     1       I41/I41+I42*I41-(-I41).EQ.LEN(CH21//CH22).EQV.             
     1       .NOT.L41.EQV..NOT.L42.AND.L42                              
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      I41 = 1                                                           
      I42 = 2                                                           
      LANS = .NOT.CH21//(((CH22//CH22)))//CH21.EQ.'A'.OR.               
     1       .NOT.ICHAR('A').EQ.I42-I41.AND.                            
     1       .NOT.L41.EQV..NOT.L42.AND.L42                              
      CALL CHKL(LANS,.FALSE.,NO)                                        
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      I41 = 1                                                           
      I42 = 2                                                           
      LANS = (L41.NEQV..NOT.L42).OR..FALSE..EQV.L42.AND..FALSE.         
     1       .OR..FALSE..OR.I41-I42**2.NE.I41                           
     1       .OR..FALSE..OR..NOT.CH21//((CH22)).EQ.CH21//CH22//'A'      
      CALL CHKL(LANS,.FALSE.,NO)                                        
      PRINT *,'TEST OF EXPRESSION PASS'                                 
      END                                                               
      SUBROUTINE CHKL(LANS,LCOMP,NO)                                    
      LOGICAL LANS, LCOMP                                               
      IF( LANS .NEQV. LCOMP ) THEN                                      
        PRINT *, 'TEST NUMBER =',NO,' ERROR'                            
        PRINT *, 'RESULT VALUE  =',LANS                                 
        PRINT *, 'COMPARE VALUE =',LCOMP                                
      ELSE                                                              
        PRINT *, 'TEST NUMBER =',NO,' OK'                               
      ENDIF                                                             
      END                                                               

      PROGRAM MAIN                                                      
      LOGICAL LANS                                                      
      INTEGER NO                                                        
      LOGICAL       L41,L42                                             
      CHARACTER*2 CH21,CH22                                             
      PRINT *,'TEST OF EXPRESSION'                                      
      NO = 0                                                            
      NO = NO + 1                                                       
      CH21 = 'AA'                                                       
      LANS = .NOT.CH21//((CH21)).EQ.CH21                                
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      LANS = .NOT..NOT.CH21//((CH22)).EQ.'AABB'                         
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      LANS = CH21//CH22.EQ.'AABB'.EQV..NOT.CH21//(((CH22))).EQ.CH21     
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      LANS = L41.EQV..NOT.L42.EQV.L42.OR.                               
     1       (CH21//(((CH22//CH22))).NE.'AABBBB')                       
      CALL CHKL(LANS,.FALSE.,NO)                                        
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      LANS = CH21//(((CH22//CH22)))//CH21.EQ.'AABBBBAA'.AND.            
     1       .NOT.L41.EQV..NOT.L42.AND.L42                              
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      LANS = .NOT.CH21//(((CH22//CH22)))//CH21.EQ.'A'.OR.               
     1       .NOT.L41.EQV..NOT.L42.AND.L42                              
      CALL CHKL(LANS,.FALSE.,NO)                                        
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      CH21 = 'AA'                                                       
      CH22 = 'BB'                                                       
      LANS = (L41.NEQV..NOT.L42).OR..FALSE..EQV.L42.AND..FALSE.         
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

      PROGRAM MAIN                                                      
      LOGICAL LANS                                                      
      INTEGER NO                                                        
      LOGICAL     L41,L42                                               
      PRINT *,'TEST OF LOGICAL-EXPRESSION'                              
      NO = 0                                                            
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      LANS = L41.EQV.L42                                                
      CALL CHKL(LANS,.FALSE.,NO)                                        
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      LANS = .NOT.L41.EQV.L42                                           
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      LANS = .NOT.((L41).EQV.L42)                                       
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      LANS = L41.EQV..NOT.L42.EQV.L42                                   
      CALL CHKL(LANS,.FALSE.,NO)                                        
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      LANS = .NOT.L41.EQV..NOT.L42.EQV.L42                              
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      LANS = (L41.NEQV..NOT.L42).OR..FALSE..EQV.L42.AND..FALSE.         
      CALL CHKL(LANS,.TRUE.,NO)                                         
      NO = NO + 1                                                       
      L41 = .TRUE.                                                      
      L42 = .FALSE.                                                     
      LANS = (L41.NEQV..NOT.L42).OR..FALSE..EQV.L42.AND..FALSE.         
     1       .OR..TRUE.                                                 
      CALL CHKL(LANS,.FALSE.,NO)                                        
      PRINT *,'TEST OF LOGICAL-EXPRESSION PASS'                         
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

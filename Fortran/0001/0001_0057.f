
        INTEGER*4        ERROR,I                                        
        REAL*4           S_A,S_B,V_A,V_B,S_DVT1,S_DVT2                  
        CHARACTER(LEN=8) S_CHA,S_CHB,V_CHA,V_CHB                        
        DIMENSION        S_A(10),S_B(10),V_A(10),V_B(10)                
        DIMENSION        S_DVT1(10),S_DVT2(10)                          
        DIMENSION        S_CHA(10),S_CHB(10),V_CHA(10),V_CHB(10)        
        DATA             S_A,S_B     /10*1.0,10*2.0/                    
        DATA             V_A,V_B     /10*1.0,10*2.0/                    
        DATA             S_CHA,S_CHB/10*'AAAAAAAA',10*'BBBBBBBB'/       
        DATA             V_CHA,V_CHB/10*'AAAAAAAA',10*'BBBBBBBB'/       
        DATA             ERROR/0/                                       

          DO I=1,10,1                                                   
            S_A(I)=S_A(I)+S_B(I)                                        
            S_CHA(I)(1:8)=S_CHA(I)(1:4)//S_CHB(I)(5:8)                  
          END DO                                                        
          DO I=1,10,1                                                   
            S_DVT1(I)=S_A(I)+S_B(I)                                     
          END DO                                                        
          DO I=1,10,1                                                   
            S_DVT2(I)=S_A(I)-S_B(I)                                     
          END DO                                                        
          CALL SUB(ERROR,S_A,S_B,S_DVT1,S_DVT2)                         
          DO I=1,10,1                                                   
            S_A(I)=S_A(I)-S_B(I)+1.0                                    
          END DO                                                        
                                                                        
          V_A=V_A+V_B                                                   
          V_CHA(1:10)(1:8)=V_CHA(1:10)(1:4)//V_CHB(1:10)(5:8)           
          CALL SUB(ERROR,V_A,V_B,V_A+V_B,V_A-V_B)                       
          V_A=V_A-V_B+1.0                                               

          DO I=1,10,1                                                   
            IF(V_A(I) .NE. S_A(I)) THEN                                 
              ERROR=ERROR+1                                             
            END IF                                                      
            IF(V_CHA(I) .NE. S_CHA(I)) THEN                             
              ERROR=ERROR+1                                             
            END IF                                                      
          END DO                                                        
          IF(ERROR .EQ. 0) THEN                                         
            WRITE(6,*) 'OK'
          ELSE                                                          
            WRITE(6,*) 'NG'
          END IF                                                        

          STOP                                                          
      END
                                                                        
                                                                        
      SUBROUTINE SUB(ERROR,A,B,ADDDATA,SUBDATA)                         
        INTEGER*4 ERROR,I                                               
        REAL*4    A,B,ADDDATA,SUBDATA                                   
        DIMENSION A(10),B(10),ADDDATA(10),SUBDATA(10)                   

        DO I=1,10,1                                                     
          IF( (ADDDATA(I)+SUBDATA(I))/2 .NE. A(I)) THEN                 
            ERROR=ERROR+1                                               
          END IF                                                        
          IF(-(SUBDATA(I)-ADDDATA(I))/2 .NE. B(I)) THEN                 
            ERROR=ERROR+1                                               
          END IF                                                        
        END DO                                                          
                                                                        
        RETURN                                                          
      END SUBROUTINE SUB                                                

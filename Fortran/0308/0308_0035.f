      PROGRAM MAIN                                                   
        INTEGER*4        H,I,J,K,L,M,ERROR
        CHARACTER(LEN=8) CHA(4),CHB(4),CHC(4),CHD(4),A,B                
        CHARACTER(LEN=32) CHE(4),C,CHVALUE(4),CVALUE
        DATA CHA/8H (1H , ',8H,5I5,/, ,8H     =" ,8HHA(I:K)+/           
        DATA CHB/8HA(I:K)  ,8H  1H , ",8H,5I5,//,,8HB(K:J)= /           
        DATA CHC/8H     =' ,8HB(K:J)  ,8H  1H ,14,8H,5I5  ) /           
        DATA CHD/8H(1H ,"A(,8HI:K)/B(K,8H:J)=",5F,8H5.2)    /           
        DATA A,B/'ACEGIKMO','BDFHJLNP'/                                 
        DATA C/'                               '/                       
        DATA CHVALUE/32H (1H , 'A(I:K)       =' (1H ,"A(
     -              ,32H,5I5,/,   1H , "B(K:J)  I:K)/B(K
     -              ,32H     =" ,5I5,//,  1H ,14:J)=",5F
     -              ,32HHA(I:K)+B(K:J)= ,5I5  ) 5.2)    /
        DATA CVALUE/'CEGIKDFHJ                      '/
        DATA ERROR/0/

          CALL SUB(H,I,J,K,L,M)                                         

          CHE=CHA//CHB//CHC//CHD                                        
          C(H:L+M)=A(I:M)//B(I:L)                                       
          DO 10 I=1,4
             IF(CHE(I) .NE. CHVALUE(I)) THEN
                ERROR=1
             ENDIF
 10       CONTINUE
          IF(C .NE. CVALUE) THEN
             ERROR=1
          ENDIF
          IF(ERROR .EQ. 0) THEN
             WRITE(6,*) 'OK'
          ELSE
             WRITE(6,*) 'NG'
          ENDIF
          STOP                                                          
      END PROGRAM MAIN                                               
      SUBROUTINE SUB(H,I,J,K,L,M)                                       
      INTEGER*4 H,I,J,K,L,M                                             

        H=1                                                             
        I=2                                                             
        J=3                                                             
        K=4                                                             
        L=5                                                             
        M=6                                                             

      RETURN                                                            
      END                                                               

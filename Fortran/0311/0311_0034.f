      PROGRAM MAIN
        INTEGER*4 V_A,V_B,ERROR/1/
        DIMENSION V_A(10),V_B(10)
        DATA      V_A,V_B/10*1,10*2/
C
          WRITE(1,100,ERR=10) V_A,V_B,V_A+V_B,V_A-V_B
          CALL CHECK(ERROR)
 10       IF(ERROR .EQ. 0) THEN
             WRITE(6,*) 'OK'
          ELSE
             WRITE(6,*) 'NG'
          ENDIF

 100      FORMAT(1H ,'A  =(',10I3,')'/,1H ,'B  =(',10I3,')'/
     +          ,1H ,'A+B=(',10I3,')'/,1H ,'A-B=(',10I3,')')
          STOP
      END PROGRAM MAIN

      SUBROUTINE CHECK(ERROR)
      CHARACTER*40 CH40_A,CH40_B,CH40_AB
      CHARACTER*40 T_A,T_B,T_AB
      INTEGER*4 ERROR
      DATA T_A /' A  =(  1  1  1  1  1  1  1  1  1  1)'/
      DATA T_B /' B  =(  2  2  2  2  2  2  2  2  2  2)'/
      DATA T_AB/' A+B=(  3  3  3  3  3  3  3  3  3  3)'/

      REWIND 1
      READ(1,'(A)',ERR=20) CH40_A
      READ(1,'(A)',ERR=20) CH40_B
      READ(1,'(A)',ERR=20) CH40_AB
      IF(CH40_A /= T_A .OR. CH40_B /= T_B .OR. CH40_AB /= T_AB) THEN
         WRITE(6,FMT='(1H ,"TRUE VALUE:"/,3(A/))')T_A   ,T_B   ,T_AB
         WRITE(6,FMT='(1H ,"CALC VALUE:"/,3(A/))')CH40_A,CH40_B,CH40_AB
         ERROR=1
      ELSE
         ERROR=0
      ENDIF
 20   RETURN
      END


      

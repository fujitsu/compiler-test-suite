 SUBROUTINE SUB1(C,N)
 INTEGER*4 C(100)
 INTEGER*1 N,N1,K
 N1=N/40
 DO K=2,N-1
   C(K+N1)=C(K)+5
 ENDDO
 RETURN
 END

 INTEGER*4 C(100),RES
 INTEGER*1 N
 DATA C/100*1/
 DATA RES/196/
 DATA N/80/
 CALL SUB1(C,N)
 IF (RES.EQ.C(81)) THEN
   PRINT*, "OK"
 ELSE
   PRINT*, "NG"
   PRINT*, "RES = ",RES
   PRINT*, "C = ",C(81)
 ENDIF
 END
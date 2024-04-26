PROGRAM MAIN
IMPLICIT NONE
INTEGER::index_var1=100,loop_counter
INTEGER,TARGET::tar1=23,tar2=24,tar3=25
INTEGER,POINTER::ptr
ptr=>tar1
DO CONCURRENT(index_var1=10:7:-2,ASSOCIATED(ptr) .AND. (ptr>=23 .AND. ptr <=25))
  loop_counter=index_var1
  DO WHILE(loop_counter==index_var1)
    NULLIFY(ptr)
    IF(index_var1 .EQ. 10) THEN 
      ptr=>tar2
    ELSE
      ptr=>tar3
    ENDIF
    loop_counter=0
  END DO
END DO
IF(ptr == 25 .AND. index_var1 == 100) THEN
  PRINT*,'PASS'
ELSE
  PRINT*,'FAIL',ptr,index_var1
ENDIF
END PROGRAM

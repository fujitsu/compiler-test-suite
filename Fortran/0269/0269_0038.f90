INTEGER,PARAMETER::M=5
INTEGER I
INTEGER  ARR(M),BRR(M),CRR(M)
INTEGER::II(M)=(/1,2,3,4,5/)
I= 56
CALL S
 CONTAINS
SUBROUTINE S

DO CONCURRENT (INTEGER*8::I=1:M)
 ARR(I)=100+I
 BLOCK
  INTEGER::I
  DO CONCURRENT (I=1:M)
    BRR(I)=200+I
    BLOCK
     INTEGER::I
      I= 55
     DO CONCURRENT (INTEGER(KIND=KIND(4.55))::I=1:M)
     CRR(I)=300+I
     END  DO
    IF( I /= 55)PRINT*,201
    END BLOCK
  END DO
 END BLOCK
END DO
 IF(ANY(ARR /= 100+II))PRINT*,101
 IF(ANY(BRR /= 200+II))PRINT*,102
 IF(ANY(CRR /= 300+II))PRINT*,103
    IF( I /= 56)PRINT*,202
 PRINT*,"PASS"
END SUBROUTINE
END

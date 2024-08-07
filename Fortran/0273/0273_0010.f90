USE ISO_C_BINDING, ONLY:  C_LOC
INTEGER,PARAMETER::K=2
REAL(K),POINTER::ACT1,ACT3(:)
COMPLEX(KIND=K),POINTER::ACT2,ACT4(:)
ALLOCATE(ACT1,ACT2)
ALLOCATE(ACT3(4),ACT4(5))
 CALL SUB(ACT1,ACT2,ACT3,ACT4)
 PRINT*,"PASS"
CONTAINS
SUBROUTINE SUB(A,B,R2ARR,C2ARR)
  USE ISO_C_BINDING 
  REAL(K), POINTER :: A,R2ARR(:)
  COMPLEX(KIND=K), POINTER :: B,C2ARR(:)
  REAL(K), POINTER :: A2, A22(:)
  COMPLEX(K), POINTER :: B2,B22(:)
  REAL(K), TARGET:: T2=44.5_2
  COMPLEX(KIND=K), TARGET:: T3= (5.5_2,6.5_2)
  REAL(K), TARGET:: T2ARR(4)=66.5_2
  COMPLEX(KIND=K), TARGET:: T3ARR(5)=(7.5_2,8.5_2)
 TYPE(C_PTR)::CPTR1,CPTR2,CPTR3,CPTR4
  A=>T2
  B=>T3
  R2ARR=>T2ARR
  C2ARR=>T3ARR
  
 CPTR1= C_LOC(A) 
 CPTR2= C_LOC(B)
 CPTR3= C_LOC(R2ARR)
 CPTR4= C_LOC(C2ARR)
  CALL C_F_POINTER(CPTR1, A2)
  CALL C_F_POINTER(CPTR2, B2)
  CALL C_F_POINTER(CPTR3,A22,[4])
  CALL C_F_POINTER(CPTR4, B22,[5])
 IF(A2 /= 44.5_2)PRINT*,"101"
 IF(B2 /= (5.5_2,6.5_2))PRINT*,"102"
 IF(ANY(A22 /= 66.5_2))PRINT*,"103"
 IF(ANY(B22 /= (7.5_2,8.5_2)))PRINT*,"104"
END SUBROUTINE 
END



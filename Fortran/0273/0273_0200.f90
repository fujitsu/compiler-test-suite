 TYPE TY(K)
 INTEGER ,KIND :: K=2
 REAL (KIND=K) :: R
 COMPLEX (KIND=K) :: C
 END TYPE 
 
 TYPE(TY(2)) :: OBJ
 OBJ=TY(2)(1.0_2,(1.0_2,1.0_2))
 IF(OBJ%R /= 1.0_2)PRINT*,'101'
 IF(OBJ%C /= (1.0_2,1.0_2))PRINT*,'102'
 PRINT*,'PASS'
 END
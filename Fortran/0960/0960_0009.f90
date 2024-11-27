type ty
 INTEGER::ii
 CLASS(*),ALLOCATABLE :: ty_alloc
end type

TYPE,EXTENDS(ty)::ty1
  INTEGER::jj
  class(*),ALLOCATABLE::ty1_alloc
END TYPE


CLASS(ty),ALLOCATABLE :: ty_obj1
CLASS(*),ALLOCATABLE  :: unlim_obj1
ALLOCATE(ty1::ty_obj1)

SELECT TYPE(ty_obj1)
TYPE IS(ty1)
  ty_obj1=ty1(2,3,4,5.3)
  ALLOCATE(unlim_obj1,SOURCE=ty_obj1%ty_alloc)
  IF(ty_obj1%ii .ne.2) THEN 
    PRINT*,'FAIL1'
  ELSE
    PRINT*,'PASS1/3'
    SELECT TYPE(unlim_obj1)
      TYPE IS(INTEGER)
        IF(unlim_obj1 .ne. 3) THEN 
          PRINT*,'FAIL2'
        ELSE
          PRINT*,'PASS2/3'
        ENDIF
     END SELECT
     DEALLOCATE(unlim_obj1)
     ALLOCATE(unlim_obj1,SOURCE=ty_obj1%ty1_alloc)
     SELECT TYPE(unlim_obj1)
      TYPE IS(REAL)
        IF(unlim_obj1 .ne. 5.3) THEN 
          PRINT*,'FAIL3'
        ELSE
          PRINT*,'PASS3/3'
        ENDIF
     END SELECT
  ENDIF
END SELECT
end

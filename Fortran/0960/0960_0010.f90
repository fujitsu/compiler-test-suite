type ty
 INTEGER::ii
 CLASS(*),ALLOCATABLE :: ty_alloc
end type

TYPE,EXTENDS(ty)::ty1
  INTEGER::jj
  class(*),ALLOCATABLE::ty1_alloc
  class(*),ALLOCATABLE::ty1_alloc2
END TYPE


CLASS(*),ALLOCATABLE :: ty_obj1
ALLOCATE(ty1::ty_obj1)

CALL SUB(ty_obj1)
CONTAINS
SUBROUTINE SUB(dmy)
  CLASS(*),ALLOCATABLE::dmy 
  CLASS(*),ALLOCATABLE  :: unlim_obj1
  SELECT TYPE(dmy)
  TYPE IS(ty1)
    dmy=ty1(2,3,4,5.3,'m')
    ALLOCATE(unlim_obj1,SOURCE=dmy%ty_alloc)
    IF(dmy%ii .ne.2) THEN 
      PRINT*,'FAIL1'
    ELSE
      PRINT*,'PASS1/4'
      SELECT TYPE(unlim_obj1)
        TYPE IS(INTEGER)
          IF(unlim_obj1 .ne. 3) THEN 
            PRINT*,'FAIL2'
          ELSE
            PRINT*,'PASS2/4'
          ENDIF
       END SELECT
       DEALLOCATE(unlim_obj1)
       ALLOCATE(unlim_obj1,SOURCE=dmy%ty1_alloc)
       SELECT TYPE(unlim_obj1)
        TYPE IS(REAL)
          IF(unlim_obj1 .ne. 5.3) THEN 
            PRINT*,'FAIL3'
          ELSE
            PRINT*,'PASS3/4'
          ENDIF
       END SELECT
       DEALLOCATE(unlim_obj1)
       ALLOCATE(unlim_obj1,SOURCE=dmy%ty1_alloc2)
       SELECT TYPE(unlim_obj1)
        TYPE IS(CHARACTER(*))
          IF(unlim_obj1 .ne. 'm') THEN 
            PRINT*,'FAIL4'
          ELSE
            PRINT*,'PASS4/4'
          ENDIF
       END SELECT
    ENDIF
  END SELECT
END SUBROUTINE
end

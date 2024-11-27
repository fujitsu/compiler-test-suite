type ty
 INTEGER::ii
 class(*),allocatable :: calc
end type

CLASS(ty),ALLOCATABLE :: ty_obj1
ALLOCATE(ty_obj1)

SELECT TYPE(ty_obj1)
TYPE IS(ty)
  ty_obj1=ty(2,2)
  IF(ty_obj1%ii .ne. 2) THEN 
    PRINT*,'FAIL'
  ELSE
    PRINT*,'PASS'
  ENDIF
END SELECT
end

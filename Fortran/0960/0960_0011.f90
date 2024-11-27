type ty
 INTEGER::ii
 CLASS(*),ALLOCATABLE :: ty_alloc(:)
 CLASS(ty),POINTER::ptr=>NULL()
end type

TYPE,EXTENDS(ty)::ty1
  INTEGER::jj
  class(*),ALLOCATABLE::ty1_alloc(:)
END TYPE


CLASS(ty),ALLOCATABLE :: ty_obj1(:,:)
ALLOCATE(ty1::ty_obj1(2,3))

CALL SUB(ty_obj1,2,3)
CONTAINS
SUBROUTINE SUB(dmy,m,n)
  CLASS(ty)::dmy(m,n) 
  CLASS(*),ALLOCATABLE  :: unlim_obj1(:)
  INTEGER::m,n,array1(2)
  REAL   ::array2(3)
  CLASS(ty),ALLOCATABLE::ty_obj
  array1(1)=10
  array1(2)=20
  array2(1)=3.3
  array2(2)=4.3
  array2(3)=5.3
  SELECT TYPE(dmy)
  TYPE IS(ty1)
    dmy=ty1(2,array1,NULL(),4,array2)
    ALLOCATE(unlim_obj1,SOURCE=dmy(1,1)%ty_alloc)
    IF(dmy(1,1)%ii .ne.2) THEN 
      PRINT*,'FAIL1'
    ELSE
      PRINT*,'PASS1/4'
      ALLOCATE(ty_obj)
      IF(SAME_TYPE_AS(ty_obj,ty_obj%ptr)) THEN
        PRINT*,'PASS2/4'
      ELSE
        PRINT*,'FAIL2'
      ENDIF
      SELECT TYPE(unlim_obj1)
        TYPE IS(INTEGER)
          IF(unlim_obj1(1) .ne. 10 .AND. unlim_obj1(2) .ne. 20 ) THEN 
            PRINT*,'FAIL3'
          ELSE
            PRINT*,'PASS3/4'
          ENDIF
       END SELECT

       DEALLOCATE(unlim_obj1)
       ALLOCATE(unlim_obj1,SOURCE=dmy(1,1)%ty1_alloc)

       SELECT TYPE(unlim_obj1)
        TYPE IS(REAL)
          IF(unlim_obj1(1) .ne. 3.3 .AND. unlim_obj1(2) .ne. 4.3 .AND. unlim_obj1(3) .ne. 5.3) THEN 
            PRINT*,'FAIL4'
          ELSE
            PRINT*,'PASS4/4'
          ENDIF
       END SELECT

    ENDIF
  END SELECT
END SUBROUTINE
end

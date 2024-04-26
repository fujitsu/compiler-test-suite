MODULE mod1
IMPLICIT NONE
  TYPE ty1
    INTEGER :: jj = 20
    integer, ALLOCATABLE:: ty0_cmp(:)
  END TYPE ty1
integer::flag=0

END MODULE mod1

PROGRAM MAIN
  USE mod1
  IMPLICIT NONE

  TYPE(ty1),allocatable :: ty1_obj(:)
  ALLOCATE(ty1_obj, SOURCE = Foo()) 
if (ty1_obj(1)%jj/=300) print *,301
if (ty1_obj(1)%ty0_cmp(1)/=500) print *,302
if (ty1_obj(1)%ty0_cmp(2)/=500) print *,303
if (ty1_obj(2)%jj/=400) print *,311
if (ty1_obj(2)%ty0_cmp(1)/=600) print *,312
if (ty1_obj(2)%ty0_cmp(2)/=600) print *,313
print *,'pass'
  CONTAINS
    FUNCTION Foo() RESULT(ty1_res)
      IMPLICIT NONE
      TYPE(ty1) :: ty1_res(2)
flag=flag+1
if (flag/=1)print *,10001,flag
      ty1_res(1)%jj = 300
      ty1_res(2)%jj = 400
      ALLOCATE(ty1_res(1)%ty0_cmp(2))
      ALLOCATE(ty1_res(2)%ty0_cmp(2))
      ty1_res(1)%ty0_cmp = 500
      ty1_res(2)%ty0_cmp = 600
    END FUNCTION Foo
END PROGRAM MAIN

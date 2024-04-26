PROGRAM MAIN
  IMPLICIT NONE

integer::flag=0
  integer,allocatable :: ty1_obj(:,:)
  ALLOCATE(ty1_obj, SOURCE = RESHAPE([[Foo()], 3, 4], SHAPE = [2, 2])) 
if (any([ty1_obj]/=[1,2,3,4])) print *,101
print *,'pass'
  CONTAINS
    FUNCTION Foo() RESULT(ty1_res)
      IMPLICIT NONE
      integer   :: ty1_res(2)
      ty1_res=[1,2]
flag=flag+1
if (flag/=1) print *,201
    END FUNCTION Foo
END PROGRAM MAIN

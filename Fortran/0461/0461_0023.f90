MODULE mod1
IMPLICIT NONE
  TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
      FINAL::ty0_scalar_dest
      FINAL::ty0_array_dest
  END TYPE ty0

  TYPE ty1
    INTEGER :: jj = 20
    TYPE(ty0), ALLOCATABLE:: ty0_cmp(:)
    CONTAINS
      FINAL::ty1_scalar_dest
      FINAL::ty1_array_dest
  END TYPE ty1

  CONTAINS
    SUBROUTINE ty0_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy
    END SUBROUTINE ty0_scalar_dest

    SUBROUTINE ty0_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty0), INTENT(INOUT):: dmy(:)
      write(1,*),900,dmy%ii
    END SUBROUTINE ty0_array_dest

    SUBROUTINE ty1_scalar_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy
    END SUBROUTINE ty1_scalar_dest

    SUBROUTINE ty1_array_dest( dmy )
      IMPLICIT NONE
      TYPE(ty1), INTENT(INOUT):: dmy(:)
      write(1,*)800,dmy%jj
    END SUBROUTINE ty1_array_dest
END MODULE mod1

PROGRAM MAIN
  USE mod1
  IMPLICIT NONE

  TYPE(ty1),allocatable :: ty1_obj(:,:)
  type(ty1)::obj
  obj%jj = 100
  ALLOCATE(obj%ty0_cmp(2))
  obj%ty0_cmp%ii = 200
  ALLOCATE(ty1_obj, SOURCE = RESHAPE([[Foo()], obj, obj], SHAPE = [2, 2]))
print *,'pass'
call chk
  CONTAINS
    FUNCTION Foo() RESULT(ty1_res)
      IMPLICIT NONE
      TYPE(ty1) :: ty1_res(2)
      ty1_res(1)%jj = 300
      ty1_res(2)%jj = 400
      ALLOCATE(ty1_res(1)%ty0_cmp(2))
      ALLOCATE(ty1_res(2)%ty0_cmp(2))
      ty1_res(1)%ty0_cmp%ii = 500
      ty1_res(2)%ty0_cmp%ii = 600
    END FUNCTION Foo
END PROGRAM MAIN

subroutine chk
integer::r(5)
rewind 1
read(1,*) k;if (k/=800) print *,300
read(1,*) k
read(1,*) k
read(1,*,end=10) k
rewind 1
read(1,*) r ; if (any(r/=[800,300,400,100,100])) print *,10001
read(1,*) r(:3) ; if (any(r(:3)/=[800,300,400])) print *,10002
read(1,*) r(:3) ; if (any(r(:3)/=[800,300,400])) print *,10003
read(1,*) r ; if (any(r/=[800,300,400,100,100])) print *,10004
read(1,*) r(:3) ; if (any(r(:3)/=[800,300,400])) print *,10005
read(1,*) r(:3) ; if (any(r(:3)/=[800,300,400])) print *,10006
read(1,*) r(:3) ; if (any(r(:3)/=[900,500,500])) print *,10007
read(1,*) r(:3) ; if (any(r(:3)/=[900,600,600])) print *,10008
read(1,*) r(:3) ; if (any(r(:3)/=[900,500,500])) print *,10009
read(1,*) r(:3) ; if (any(r(:3)/=[900,600,600])) print *,10010
return
10 continue
rewind 1
read(1,*) r(:3) ; if (any(r(:3)/=[800,300,400])) print *,20002
read(1,*) r(:3) ; if (any(r(:3)/=[900,500,500])) print *,20004
read(1,*) r(:3) ; if (any(r(:3)/=[900,600,600])) print *,20005
end


MODULE mod1
TYPE base_type
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS(arg) :: prc2 => base_bind
END TYPE
 
TYPE,EXTENDS(base_type)::extd_type
  INTEGER :: int2=5
  CONTAINS
    PROCEDURE, PASS(arg) :: prc2 => extd_bind
END TYPE

TYPE,EXTENDS(extd_type)::ty2
  INTEGER :: int3=7
END TYPE
  
CONTAINS
CLASS(*) FUNCTION base_bind(arg)
POINTER :: base_bind
  CLASS(base_type) :: arg

  allocate(integer(8):: base_bind)
  select type(base_bind)
  type is(integer(8))
   base_bind = arg%int1
  end select
END FUNCTION

CLASS(*) FUNCTION extd_bind(arg)
POINTER :: extd_bind
  CLASS(extd_type) :: arg
  allocate(integer::extd_bind)

  select type(extd_bind)
  type is(integer)
   extd_bind = arg%int2
  end select
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(base_type),ALLOCATABLE :: obj1
INTEGER :: var1,k


ALLOCATE(obj1)
k=0
select type(tbp=>obj1%prc2())
type is(integer)
 var1=tbp
  k=1
end select
if (k/=0) print *,1001
print *,'pass'
END PROGRAM

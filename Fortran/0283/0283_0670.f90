MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE

TYPE,EXTENDS(ty)::ty1
  INTEGER :: int2=5
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc2 => ty1_bind
END TYPE

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: int3=7
END TYPE

CONTAINS
INTEGER FUNCTION ty_bind(ty_dmy,def_dmy,str1)
  CLASS(ty) :: ty_dmy
  CLASS(ty) :: def_dmy
  CHARACTER(LEN=7)::str1(2)
  ty_bind = def_dmy%int1
  str1(1)='XYZ'
  str1(2)='ABCDEFG'
  SELECT TYPE(ty_dmy)
    TYPE IS(ty)
      print*,'error'
    TYPE IS(ty1)
      IF(ty_dmy%int1 .NE. 50) PRINT*,101
  END SELECT  
END FUNCTION

INTEGER FUNCTION ty1_bind(ty_dmy,def_dmy,str1)
  CLASS(ty) :: ty_dmy
  CLASS(ty1) :: def_dmy
  CHARACTER(LEN=7)::str1(2)
  ty1_bind = def_dmy%int2
  str1(1)='01234'
  str1(2)='56789'
  SELECT TYPE(ty_dmy)
    TYPE IS(ty)
      print*,'error'
    TYPE IS(ty1)
      IF(ty_dmy%int1 .NE. 50 .AND. ty_dmy%int2 .NE. 100) PRINT*,102
    TYPE IS(ty2)
      IF(ty_dmy%int2 .NE. 50 .AND. ty_dmy%int2 .NE. 100) PRINT*,103
  END SELECT
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(*),ALLOCATABLE :: obj1
TYPE(ty1) :: obj2
CHARACTER(LEN=7)::mystr(2)
INTEGER :: var1=3,var2=5,var3=5
obj2%int1=50
obj2%int2=100
ALLOCATE(ty::obj1)

SELECT TYPE(obj1)
  TYPE IS(CHARACTER(*))
    PRINT*,201
  TYPE IS(ty)
    obj1%int1=30
    var1=obj1%prc2(obj2,mystr)
END SELECT

DEALLOCATE(obj1)
ALLOCATE(obj1,SOURCE=obj2)

SELECT TYPE(obj1)
  TYPE IS(ty)
    PRINT*,301
  TYPE IS (ty1)
    var2=obj1%prc2(obj2,mystr)
END SELECT

DEALLOCATE(obj1)

associate(aa=>fun())
SELECT TYPE(aa)
  TYPE IS(ty1)
    print*,401
  TYPE IS(ty2) 
    var3=aa%prc2(obj2,mystr)
END SELECT
end associate

IF (var1 .EQ. 30 .AND. var2 .EQ. 100 .AND. var3 .EQ. 5) THEN
  PRINT*,"pass"
ELSE
  PRINT*, "fail"
ENDIF

contains
function fun()
 class(ty),allocatable::fun
 ALLOCATE(ty2::fun)
end function
END PROGRAM

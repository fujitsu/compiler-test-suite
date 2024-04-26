MODULE mod1
IMPLICIT NONE

TYPE ty
  LOGICAL :: l1 = .true. , l2 = .false.
  REAL :: r
  INTEGER,DIMENSION(2,3) :: arr
END TYPE 

TYPE t1
  REAL :: r1
  CHARACTER(LEN = 5) :: ch1 = 'xxxxx'
  CHARACTER(LEN = 3) :: c = 'xxx'
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
  CHARACTER(LEN = 20) :: ch2
END TYPE

INTERFACE OPERATOR ( .plus. )
  MODULE PROCEDURE addit
END INTERFACE

INTERFACE
FUNCTION fun_1(dd1,dd2,dd3)
IMPLICIT NONE
REAL :: dd1,dd2,dd3,fun_1,fun_2
END FUNCTION

FUNCTION fun_2(dd1,dd2)
END FUNCTION

END INTERFACE

CONTAINS

FUNCTION addit(dd1,dd2)
IMPLICIT NONE
CLASS(t2),INTENT(IN) :: dd1
CHARACTER(LEN = 4),INTENT(IN) :: dd2
CLASS(t2),ALLOCATABLE :: addit
ALLOCATE(addit)
addit%ch2 = TRIM(dd1%ch2) // TRIM(dd2)
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res = 0
REAL :: st_fun,df
st_fun(df) = df + 2.0
CLASS(*),ALLOCATABLE :: allc
CLASS(t2),ALLOCATABLE :: cass
CLASS(t1),POINTER :: ptr,ptr2
TYPE(ty) :: ob
ALLOCATE(cass,ptr)

cass%r2 = 14.20
cass%ch2 = 'xxxxxxxxxx'
ptr%r1 = 3.0
ALLOCATE(t2 :: allc)

res = fun_main(cass,ptr,ob)

IF(res .EQ. 2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
print*,res

END IF

CONTAINS

FUNCTION fun_main(dcass,dptr,dob)
IMPLICIT NONE
INTEGER :: fun_main
CLASS(t2),ALLOCATABLE :: dcass
CLASS(t1),POINTER :: dptr
TYPE(ty) :: dob

SELECT TYPE(allc)
CLASS IS(t2)
ASSOCIATE(aa => fun_in(dcass,'aaaa') .plus. 'aaaa' , bb => dob%l1 .OR. dob%l2) 
  IF(aa%ch2(2:5) .EQ. 'xxaa' .OR. bb) THEN
    ASSOCIATE(aa =>  fun_2(12.25,13.45) * st_fun(2.5) , bb => dptr)
    ptr2 => bb
    SELECT CASE(INT(aa))
    CASE(115)
      fun_main = 1
    END SELECT  
    END ASSOCIATE
    IF(ASSOCIATED(ptr2)) NULLIFY(ptr2)
  ELSE
   RETURN
  END IF
  ASSOCIATE(cc => allc)
  SELECT TYPE(cc)
  TYPE IS(t2)
    fun_main = fun_main  + 1
  END SELECT  
  END ASSOCIATE
END ASSOCIATE 
END SELECT       
END FUNCTION

FUNCTION fun_in(d1,d2)
IMPLICIT NONE
CLASS(t2),ALLOCATABLE :: d1,fun_in
CHARACTER(LEN = 4) :: d2
ALLOCATE(fun_in)
d1%ch2(4:7) = d2
fun_in%ch2 = TRIM(d1%ch2)
END FUNCTION

END PROGRAM

FUNCTION fun_1(dd1,dd2,dd3)
IMPLICIT NONE
REAL:: dd1,dd2,dd3,fun_1,fun_2
fun_1 = dd1 + dd2 + dd3
RETURN
ENTRY fun_2(dd1,dd2)
fun_2 = dd1 + dd2
RETURN
END FUNCTION

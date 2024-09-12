MODULE mod1  
IMPLICIT NONE

TYPE ty
  INTEGER,allocatable :: ii
  CONTAINS
  PROCEDURE,PASS :: add => fun
  GENERIC :: OPERATOR(+)=> add
END TYPE

    contains
    FUNCTION fun(d1,n)
    type(ty)::fun(2)
    CLASS(ty),INTENT(IN) :: d1
    integer, INTENT(IN) :: n
  
    allocate(fun(1)%ii)
    allocate(fun(2)%ii)
  
    fun(1)%ii = d1%ii + n
    fun(2)%ii = d1%ii + n
    return
   END FUNCTION
   END MODULE

   PROGRAM main
   USE mod1

   integer  :: a,b
   TYPE(ty),pointer :: obj2
   TYPE(ty),allocatable :: obj1(:)

   allocate(obj2)
   allocate(obj2%ii)

   obj2%ii=10

   obj1 = obj2 + 5

    a=obj1(1)%ii
    b=obj1(2)%ii
  
    if(a .ne. 15) print*,"121"
    if(b .ne. 15) print*,"122"
    print*,"Pass"
    END PROGRAM

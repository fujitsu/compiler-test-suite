module mod1
type ty
 integer :: ii=1
 contains
  procedure :: eprc
   generic,PRIVATE :: operator(+) => eprc
end type

type,extends(ty) :: ty2
 integer :: jj=2
end type

type,extends(ty2) :: tty3
 integer :: kk=3
 contains
  procedure :: eprc => eprc_tty3
end type

contains
integer function fun1()
 class(ty),POINTER::ptr

 ALLOCATE(ptr)
 SELECT TYPE(ptr)
   TYPE IS(ty)
     do i=1,+ptr,1
       PRINT*,'pass1 -',i
     enddo
   CLASS DEFAULT 
     PRINT*,501
 END SELECT 
  
 ALLOCATE(ty2::ptr)
 SELECT TYPE(ptr)
   TYPE IS(ty2)
     do i=1,+ptr,1
       PRINT*,'pass2 -',i
     enddo
   CLASS DEFAULT
     PRINT*,502
 END SELECT 

 ALLOCATE(tty3::ptr)
 SELECT TYPE(ptr)
   TYPE IS(tty3)
     do i=1,+ptr,1
       PRINT*,'pass3 -',i
     enddo
   CLASS DEFAULT
     PRINT*,503
 END SELECT 

fun1=100
end function

function eprc(a)
 class(ty),INTENT(IN) :: a
 INTEGER :: eprc
 eprc =  a%ii 
END function

function eprc_tty3(a)
 class(tty3),INTENT(IN) :: a
 INTEGER :: eprc_tty3
 eprc_tty3 =  a%kk
END function
end module


PROGRAM MAIN
use mod1
integer::xx
xx = fun1()
if(xx == 0) print*,'fail'
end

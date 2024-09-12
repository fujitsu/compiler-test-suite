module mod1
implicit none

type ty
 integer :: ii=30
 contains
  procedure :: eprc
   generic,PRIVATE :: operator(-) => eprc
end type

type,extends(ty) :: ty2
 integer :: jj=20
end type

type,extends(ty2) :: tty3
 integer :: kk=10
 class(ty),allocatable::ty_obj(:)
 type(ty2)::ty2_obj(2)
 contains
  procedure :: eprc => eprc_tty3
end type

contains
integer function fun1()
 type(tty3),target :: obj_3(2)
 integer::i 

 allocate(obj_3(1)%ty_obj(2))
 obj_3(1)%ty_obj(2)%ii=1
 do i=1,-obj_3(1)%ty_obj(2),1
   PRINT*,'pass',i,'/1'
 enddo

 
 obj_3(2)%ty2_obj(1)%ii=2
 deallocate(obj_3(1)%ty_obj)
 allocate(obj_3(1)%ty_obj,source=obj_3(2)%ty2_obj)
 do i=1,-obj_3(1)%ty_obj(1),1
   PRINT*,'pass',i,'/2'
 enddo

 
 obj_3(1)%kk=3
 deallocate(obj_3(1)%ty_obj)
 allocate(obj_3(1)%ty_obj,source=obj_3)
 do i=1,-obj_3(1)%ty_obj(1),1
   PRINT*,'pass',i,'/3'
 enddo

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
implicit none
integer::xx
xx = fun1()
if(xx == 0) print*,'fail'
end

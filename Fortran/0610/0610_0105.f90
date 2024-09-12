module mod1
implicit none

type t1
  integer :: i = 1,k = 0
end type

type,extends(t1) :: t2
  class(t1),pointer :: arr(:,:)
end type

type,extends(t2) :: t3
  integer :: j = 2
end type

type,extends(t3) :: con
 class(t3),pointer :: acc
end type
end module

program main
use mod1
implicit none

type tot
 type(t3) :: obj
 class(con),pointer :: pcc
end type

type(tot) :: tobj(3)

allocate(tobj(1)%pcc)
allocate(tobj(1)%pcc%acc)
allocate(tobj(1)%pcc%acc%arr(5,5))

tobj(1)%pcc%acc%arr(2,2)%k = 10
tobj(1)%pcc%acc%arr(3,3)%k =  20

select type(aa => tobj(1)%pcc%acc%arr(tobj(2)%obj%j,:tobj(2)%obj%i+4))
  class is(t3)
    print*,102
  class is(t1)
    tobj(2)%obj%i = tobj(2)%obj%i-1
    tobj(2)%obj%j = tobj(2)%obj%j-1
    IF(aa(2)%k .EQ. 10) THEN
     PRINT*,'pass'
    ELSE
     PRINT*,101
    END IF
  class default
    print*,103
end select
end

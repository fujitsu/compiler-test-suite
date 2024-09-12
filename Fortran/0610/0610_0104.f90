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

type con
 class(t3),pointer :: acc
end type
end module

program main
use mod1
implicit none

type tot
 type(t3) :: obj
end type

type(tot) :: tobj(3)
class(con),pointer :: pcc

allocate(pcc)
allocate(pcc%acc)
allocate(pcc%acc%arr(5,5))

pcc%acc%arr(2,2)%k = 10
pcc%acc%arr(3,3)%k =  20

select type(aa => pcc%acc%arr(tobj(2)%obj%j,:tobj(2)%obj%i+4))
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

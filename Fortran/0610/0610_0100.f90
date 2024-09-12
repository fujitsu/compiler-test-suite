module mod1
implicit none

type t1
  integer :: i = 1,k = 0
end type

type,extends(t1) :: t2
  class(t1),allocatable :: arr(:,:)
end type

type,extends(t2) :: t3
  integer :: j = 2
end type

end module

program main
use mod1
implicit none

type(t3) :: obj
class(t3),allocatable :: acc
allocate(acc)
allocate(acc%arr(5,5))

acc%arr(2,2)%k = 10
acc%arr(3,3)%k =  20

select type(aa => acc%arr(obj%j,:obj%i+4))
  class is(t3)
    print*,102
  class is(t1)
    obj%i = obj%i-1
    obj%j = obj%j-1
    IF(aa(2)%k .EQ. 10) THEN
     PRINT*,'pass'
    ELSE
     PRINT*,101
    END IF
  class default
    print*,103
end select
end

module mod1
implicit none

type t1
  integer :: i = 1
end type

type,extends(t1) :: t2
  integer :: j = 2
  integer :: k = 0
end type

end module

program main
use mod1
implicit none

type(t2) :: obj
class(*),dimension(:,:),pointer :: ptr
class(t2),dimension(:,:),allocatable,target :: arr

allocate(arr(5,5))

arr(2,2)%k = 10
arr(3,3)%k =  20

ptr => arr

select type(aa=>ptr(:obj%i+4,obj%j+1:))
  type is(t2)
obj%i = obj%i-1
obj%j = obj%j-1
IF(aa(3,1)%k .EQ. 20) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end select
end

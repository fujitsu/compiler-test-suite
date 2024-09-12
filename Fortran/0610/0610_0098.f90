module mod1
implicit none

type t1
  integer :: i = 2,k =0
end type

type,extends(t1) ::  t2
  class(t1),allocatable :: arr(:)
end type

end module

program main
use mod1
implicit none

type(t2) :: obj
allocate(obj%arr(5))

obj%arr(2)%k = 10
obj%arr(3)%k =  20

select type(aa=>obj%arr(obj%i:obj%i+obj%i:obj%i-1))
  class is(t1)
  obj%i = obj%i+1
  IF(aa(1)%k .EQ. 10 .AND. obj%arr(3)%k .EQ. 20) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END SELECT

end

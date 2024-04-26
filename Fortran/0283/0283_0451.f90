module mod1
implicit none

type t1
  integer,allocatable :: arr(:,:)
end type

end module

program main
use mod1
implicit none

integer :: i = 1,j =2
type(t1) :: obj
allocate(obj%arr(5,5))

obj%arr = 1
obj%arr(2,2) = 10
obj%arr(3,3) =  20

associate(aa=>obj%arr(:i+4,j+1:))
i = i-1
j = j-1
IF(aa(3,1) .EQ. 20 .AND. obj%arr(1,2) .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
end

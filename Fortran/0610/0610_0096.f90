module mod1
implicit none

type t1
  integer :: k = 0
end type

type,extends(t1) :: t2
  integer :: j = 2
  integer :: i = 2
end type

end module


program main
use mod1
implicit none

type,extends(t2) :: t3
  class(t2),allocatable :: arr(:,:)
end type

class(t3),allocatable :: obj
allocate(obj)
allocate(obj%arr(5,5))

obj%arr(2,2)%k = 10
obj%arr(3,3)%k =  20

select type(aa => obj%arr(:,:))
  class default
  select type(aa => obj%arr(obj%i+1,int(obj%j)+1))
  class is(t2)
    obj%i = obj%i+1
    obj%j = obj%j+1
    if(aa%k .eq. 20) then
      print*,'pass'
    else
      print*,101
    end if
  end select
end select

end

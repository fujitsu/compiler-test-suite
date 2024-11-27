program main

type base
  integer(kind=8) :: tt
end type

type point
  integer(kind=8) :: tt11
  class(base),allocatable :: alc
end type

type ::pp
  integer(kind=4) :: kk
  class(point),pointer:: act1
end type pp

type(pp)::obj1
class(point),pointer :: arr

ALLOCATE(arr)
arr%tt11 = 16
allocate(obj1%act1, SOURCE=arr)
print*,obj1%act1%tt11
end program

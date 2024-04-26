program main

type base
  integer(kind=8) :: tt
end type

type point
  integer(kind=8) :: tt11
  integer,allocatable :: alc
end type

type ::pp
  integer(kind=4) :: kk
  class(point),pointer:: act1
end type pp

type(pp)::obj1
class(point),pointer :: arr

ALLOCATE(arr)
arr%tt11 = 16
allocate(obj1%act1, MOLD=arr)
allocate(arr%alc)
arr%alc=20
obj1%act1%tt11=2
if(obj1%act1%tt11 /= 2) print*,102

if(allocated(obj1%act1%alc)) print*,103,'ultimate component allocated'
print*,'pass'
end program

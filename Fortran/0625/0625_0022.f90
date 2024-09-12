interface ty01
 function ifunc01(if01_arg01, if01_arg02) result(irst01)
  integer, allocatable :: if01_arg01(:)
  integer              :: if01_arg02(10, 10)
  integer              :: irst01(4)
 end function
end interface

type ty01
 integer, allocatable :: i01(:)
 integer              :: i02(4)
end type

integer, allocatable :: i01(:)
integer              :: i02(10, 10)

type (ty01) :: tt01

i02 = reshape((/(n, n = 1, 100)/), (/10, 10/))

tt01%i02 = ty01(tt01%i01, i02)

tt01 = ty01(tt01%i01, i02 = ty01(i01, i02))

do, n = 1, 4
 if (tt01%i01(n).ne.tt01%i02(n)) print *,'tt01%i01(', n, ') = ', tt01%i01(n), ', tt01%i02(', n, ') = ', tt01%i02(n)
end do

print *,'pass'

end

function ifunc01(if01_arg01, if01_arg02) result(irst01)
 integer, allocatable :: if01_arg01(:)
 integer              :: if01_arg02(10, 10)
 integer              :: irst01(4)
 allocate(if01_arg01, source = reshape(if01_arg02(2:2, 3:6), (/4/)))
 irst01 = if01_arg01
end function

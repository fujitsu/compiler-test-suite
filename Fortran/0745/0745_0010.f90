      module A
  integer, public, parameter :: X = 1
end module A
module B
  use A, only: X
  private
  integer, public :: Y = X
  integer, public :: Z = 5
end module B
program TEST
  use B, only: Z
  if (Z/=5)write(6,*) "NG"
print *,'pass'
end program TEST

program test
type ty
  integer :: x=5
end type ty

type,extends(ty) :: ty1
  integer :: y=6
end type ty1

type(ty1), allocatable :: p1(:)

ALLOCATE(ty1::p1(1))
if (p1(1)%x/=5)print *,101
if (p1(1)%y/=6)print *,102
print *,'pass'
end program test


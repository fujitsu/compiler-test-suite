module m1
  type, public :: ty1
     integer(kind=8) :: i0 = 33
     integer(kind=8) :: i1
     integer(kind=8) :: i2 = 44
     integer(kind=8) :: i3
     integer(kind=8) :: i4
     integer(kind=8) :: i5
     integer(kind=8) :: i6
     integer(kind=8) :: i7 = 55
  end type ty1
  type :: ty2
     type (ty1), dimension(50) :: a2
  end type ty2
  type(ty2),target,save :: a3(100)
end module m1

stop
end

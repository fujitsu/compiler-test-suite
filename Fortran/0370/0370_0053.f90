module m1
  type, public :: ty1
     integer(kind=8) :: p1 = 0
     integer(kind=8) :: i1
     integer(kind=8) :: i2
     integer(kind=8) :: i3
     integer(kind=8) :: i4
     integer(kind=8) :: i5
     integer(kind=8) :: i6
     integer(kind=8) :: i7
  end type ty1
  type :: ty2
     type (ty1), dimension(300) :: a2
  end type ty2
  type(ty2),target,save :: a3(100)
end module m1

stop
end

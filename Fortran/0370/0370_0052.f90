module m1
  type, public :: ty1
     integer :: p1 = 0
     integer :: i1
  end type ty1
  type :: ty2
     type (ty1), dimension(300) :: a2
  end type ty2
  type(ty2),target,save :: a3(100)
end module m1

stop
end

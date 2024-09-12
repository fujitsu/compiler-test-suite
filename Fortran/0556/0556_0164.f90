  module m1
    type x
      integer::x1
    end type
    type , extends(x):: xx
      integer x2
    end type
contains
  subroutine s1
  TYPE stc
   class (*),allocatable::a(:)
  END TYPE

  type(stc)::obj
  allocate(x::obj%a(2))
  if (any(ubound(obj%a)/=[2]))print *,101
  if (size(obj%a)/=2)print *,102
  end subroutine
end module
  use m1
  call s1
  print *,'133 pass'
  end

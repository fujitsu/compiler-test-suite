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
   class (*),allocatable::a(:,:,:,:,:)
  END TYPE

  type(stc)::obj
  allocate(x::obj%a(2,3,4,5:8,6))
  if (any(lbound(obj%a,4)/=[5]))print *,101
  if (size(obj%a,4)/=4)print *,102
  end subroutine
end module
  use m1
  call s1
  print *,'pass'
  end
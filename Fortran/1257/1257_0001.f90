module fy_UnlimitedUtilities
type UnlimitedVectorIterator
 integer :: a
end type
type UnlimitedVector
integer :: a
end type
contains
  recursive logical function is_logical_scalar(u) result(is_logical)
    class(*), intent(in) :: u
    !class(UnlimitedVector), intent(in) :: u
    !class(UnlimitedVectorIterator), intent(in) :: u
    !type (UnlimitedVectorIterator) :: iter
    type(UnlimitedVectorIterator) :: iter
    select type (u)
    !type is (UnlimitedVector)
    !class is (UnlimitedVector)
    CLASS DEFAULT
       is_logical = is_logical_scalar(iter)
       is_logical = is_logical_scalar_a(iter)
    end select
  end function is_logical_scalar
  recursive logical function is_logical_scalar_a(u) result(is_logical)
  class(*), intent(in) :: u
  end
end module fy_UnlimitedUtilities

!use fy_UnlimitedUtilities
print *,'pass'
end

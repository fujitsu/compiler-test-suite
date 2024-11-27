module inner
  type, public :: inner_type
     integer :: i
  end type inner_type
end module inner
module outer
  use inner
  private
  public :: outer_proc
contains
  subroutine outer_proc (inner_arg)
    type(inner_type), intent(in) :: inner_arg
    print *, inner_arg%i
  end subroutine outer_proc
end module outer
print *,'pass'
end

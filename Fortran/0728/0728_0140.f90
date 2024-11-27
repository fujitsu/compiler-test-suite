module generic_interface
  public  :: loc
  private :: loc1
  interface loc
    module procedure loc1
  end interface
  contains
    function loc1 (x) result (value)
      real, intent(in) :: x
      real :: value
      value = x
    end function loc1
end module generic_interface
use generic_interface
print *,'pass'
end

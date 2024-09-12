module mod
  type,private :: str
    integer :: iii
  end type
  type(str),private :: s
  protected :: s
end module
use mod
print *,'pass'

end

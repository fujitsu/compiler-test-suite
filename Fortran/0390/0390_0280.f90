module m1
  type x
    integer,allocatable::x1
  end type
  private v1
  type(x),save::v1
end
use m1
  type(x)::v1
if (allocated(v1%x1)) print *,101
print *,'pass'
end

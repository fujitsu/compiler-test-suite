  module mod01
  type base
    contains
      procedure,nopass::prc
  end type
  contains
  subroutine prc()
    write(6,*)'NG call'
  end subroutine
  end module

  module mod02
    type base
  contains
    procedure,nopass::prc
  end type
  type, extends(base)::ext
  end type
  private::base
  public::ext
  contains
    subroutine prc()
    end subroutine
  end module
module m4
contains
subroutine s(v)
  use mod01
  use mod02
  type(ext)::v
end
end

  use mod01
  use mod02
use m4
  type(ext)::var
  call var%prc()
print *,'pass'
  end program

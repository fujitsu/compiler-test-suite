  module mod01
  type base
    contains
      procedure,nopass::prc
  end type
  type ext
  end type
  public::base
  private::ext
  contains
    subroutine prc()
       write(6,*) 'NG call'
    end subroutine
  end module

  module mod02
  type base
  end type
  type, extends(base)::ext
    contains
      procedure,nopass::prc
  end type
  contains
  subroutine prc()
  end subroutine
  end module
module m4
contains
subroutine s(v)
  use mod01
  use mod02, only:ext
  type(ext)::v
end
end
use m4

  use mod01
  use mod02, only:ext
  type(ext)::var
  call var%prc()
print *,'pass'
  end program

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
    function   prc()
       write(6,*) 'NG call'
       prc=-1
    end function
  end module

  module mod02
  type base
  end type
  type, extends(base)::ext
    contains
      procedure,nopass::prc
  end type
  contains
    function   prc()
    write(32,*) 'Okay'
    prc=1
    end function
  end module
module m4
contains
subroutine s(v)
  use mod01
  use mod02, only:ext
  type(ext)::v
end
end

  program main
  use mod01
  use mod02, only:ext
use m4
  type(ext)::var
  if(var%prc() /=1) print *,2001
print *,'pass'
  end program

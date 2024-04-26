module m0
contains
  function kk()
    kk=1
  end function
end
  module mod01
use m0
  type base
    contains
      procedure,nopass::prc
  end type
  contains
  function   prc(kk)
    write(6,*)'NG call'
    prc=-1+kk
  end function
  end module

  module mod02
use m0
    type base
  contains
    procedure,nopass::prc
  end type
  type, extends(base)::ext
  end type
  private::base
  public::ext
  contains
  function   prc(kk)
    prc=1
if (kk/=1) print *,9001
  end function
  end module

  program main
  use mod01
  use mod02
  type(ext)::var
  if (var%prc(kk())/=1) print *,2002
  print *,'pass'
  end program main

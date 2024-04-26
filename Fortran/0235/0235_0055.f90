  module mod01
  type base
    contains
      procedure,nopass::prc
  end type
  contains
  function   prc()
    write(6,*)'NG call'
    prc=-1
  end function
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
  function   prc()
    prc=1
  end function
  end module

  program main
  use mod01
  use mod02
  type(ext)::var
  if (var%prc()/=1) print *,2002
  print *,'pass'
  end program main

  module mod01
  type base
    integer::x1=1
  end type
  type, extends(base)::ext
    integer::x11=3
  end type
  end module

  module nod02
    type base
    integer::x2=2
  end type
  type, extends(base)::ext
    integer::x21=3
  end type
  type, extends(ext)::xext
    integer::x22=4
  end type
  private::base,ext
  public::xext
  end module

module m4
contains
subroutine s(v)
  use nod02
  type(xext)::v
end
end

use m4
  use mod01
  use nod02
  type(xext)::var
  type(base)::var2
  type(ext )::var3
  if (var%x22/=4) print *,2001
  if (var%x21/=3) print *,2002
  if (var%x2/=2) print *,2032
  if (var2%x1/=1) print *,20321
  if (var3%x11/=3) print *,20521
  print *,'pass'
  end 

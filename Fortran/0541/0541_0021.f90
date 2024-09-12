  module mod01
  type base
    integer::x1=1
  end type
  type, extends(base)::ext
    integer::x11=3
  end type
  type, extends(ext) ::xext
    integer::x12=4
  end type
  type, extends(xext) ::yext
    integer::x13=5
  end type
  type, extends(yext) ::zext
    integer::x14=6
  end type
private::zext
  end module

  module nod02
    type base
    integer::x2=1
  end type
  type, extends(base)::ext
    integer::x21=3
  end type
  type, extends(ext)::xext
    integer::x22=4
  end type
  type, extends(xext) ::yext
    integer::x23=5
  end type
  type, extends(yext) ::zext
    integer::x24=6
  end type

  private::base,ext,xext,yext
  public::zext
  end module

module m4
contains
subroutine s(v)
  use nod02
  type(zext)::v
end
end

  use mod01
  use nod02
use m4
  type(zext)::var
  type(base)::var2
  type(ext )::var3
  type(xext )::var4
  type(yext )::var5
  if (var%x24/=6) print *,2011
  if (var%x23/=5) print *,2021
  if (var%x22/=4) print *,2031
  if (var%x21/=3) print *,2002
  if (var%x2/=1) print *,2032
  if (var2%x1/=1) print *,20321
  if (var3%x1/=1) print *,20521
  if (var3%x11/=3) print *,20521
  if (var4%x1/=1) print *,20521
  if (var4%x11/=3) print *,20521
  if (var4%x12/=4) print *,20521
  if (var5%x1/=1) print *,20521
  if (var5%x11/=3) print *,20521
  if (var5%x12/=4) print *,20521
  if (var5%x13/=5) print *,20521
  print *,'pass'
  end 

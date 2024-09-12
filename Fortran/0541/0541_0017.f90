  module mod01
  type base
    integer::x1=1
  end type
  end module

  module nod02
    type base
    integer::x2=2
  end type
  type, extends(base)::ext
    integer::x21=3
  end type
  private::base
  public::ext
  end module

module m4
contains
subroutine s(v)
  use nod02
  type(ext)::v
end
end

  use mod01
  use nod02
use m4
  type(ext)::var
  type(base)::var2
  if (var%x21/=3) print *,2002
  if (var%x2/=2) print *,2032
  if (var2%x1/=1) print *,20321
  print *,'pass'
  end 

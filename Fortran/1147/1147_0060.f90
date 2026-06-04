module m
  type ty
   contains
     procedure,nopass,private::hoge
     generic        ::gen=>hoge
  end type ty
integer::n=0
contains
  subroutine hoge
n=n+1
  end subroutine hoge
end
module km
use m
  private
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end

submodule(km)smod
contains
  module subroutine sub
    type(ty)::x
!    call x%hoge
!if (n/=1) print *,1001
    call x%gen
if (n/=1) print *,1002
  end subroutine sub
end submodule smod

use km
call sub
    print *,'sngg971n : pass'
end


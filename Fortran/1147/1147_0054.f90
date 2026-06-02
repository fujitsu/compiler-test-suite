module m
  type ty
   contains
     procedure,nopass,private::hoge
     generic,private::gen=>hoge
  end type ty
  private::ty,n
  public !sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
integer::n=0
contains
  subroutine hoge
n=n+1
  end subroutine hoge
end module m

submodule(m)smod
contains
  module subroutine sub
    type(ty)::x
    call x%hoge
if (n/=1) print *,1001
    call x%gen
if (n/=2) print *,1002
  end subroutine sub
end submodule smod

use m
call sub
    print *,'sngg965n : pass'
end


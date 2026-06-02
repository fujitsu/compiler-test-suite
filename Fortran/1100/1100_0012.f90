module m
  interface
     module subroutine sub
     end subroutine sub
     module subroutine ssub
     end subroutine ssub
  end interface
end module m


submodule(m)smod
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  module procedure  sub
    type(ty)::a
     a%x=1
     call fin(a)
  end
  subroutine fin(this)
    type(ty),intent(in) :: this
    write(14,*) this%x
  end subroutine fin
  module procedure  ssub
    type(ty)::a
     a%x=1
     call fin(a)
  end
end submodule

subroutine ss1
use m
call sub
call sub
call sub
call ssub
call ssub
call ssub
end

subroutine ss2
use m
call ss1
call ss1
call ss1
call sub
call sub
call sub
call ssub
call ssub
call ssub
end
subroutine ss3
use m
call sub
call ss1
call ss2
call sub
call ss1
call ss2
call sub
call ss1
call ss2
call ssub
call ssub
call ssub
end
subroutine ss4
call ss1
call ss2
call ss3
call ss1
call ss2
call ss3
call ss1
call ss2
call ss3
end
call ss4
rewind 14
do k=1,378*2
 read(14,*) n
 if (n/=1) print *,9001
end do
 read(14,*,end=1) n
print *,8001

1   print *,'sngg201j : pass'
end

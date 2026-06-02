module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m


submodule(m)smod
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  module subroutine sub
    type(ty)::a
     a%x=1
     !call fin(a)
  end subroutine
  subroutine fin(this)
    type(ty),intent(in) :: this
integer,allocatable::a
allocate(a)
    write(28,*) this%x
  end subroutine fin
end submodule

subroutine ss1
use m
call sub
call sub
call sub
end

subroutine ss2
use m
call ss1
call ss1
call ss1
call sub
call sub
call sub
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
rewind 28
do k=1,378/2
 read(28,*) n
 if (n/=1) print *,9001
end do
 read(28,*,end=1) n
print *,8001

1   print *,'sngg215j : pass'
end

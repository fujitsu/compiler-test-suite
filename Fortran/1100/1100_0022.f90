module m
  interface
     module subroutine sub
     end
     module subroutine ssub
     end
     module subroutine tsub
     end
     module subroutine ysub
     end
     module subroutine zsub
     end
     module subroutine zssub
     end
     module subroutine ztsub
     end
     module subroutine zysub
     end
  end interface
end module m


submodule(m)smod
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  module procedure  zsub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
  end
  module procedure  sub
    type(ty)::a
     a%x=1
     call fin(a)
  end
  subroutine fin(this)
    type(ty),intent(in) :: this
integer,allocatable::a
allocate(a)
    write(24,*) this%x
  end subroutine fin
  module procedure  zssub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
  end
  module procedure  ssub
    type(ty)::a
     a%x=1
     call fin(a)
  end
end submodule

submodule(m:smod) s2
contains
  module procedure  ztsub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
  end
  module procedure  tsub
    type(ty)::a
     a%x=1
     call fin(a)
  end
end

submodule(m:smod) s3
contains
  module procedure  zysub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
  end
  module procedure  ysub
    type(ty)::a
     a%x=1
     call fin(a)
  end
end

subroutine ss1
use m
call sub
call ssub
call tsub
call ysub
call zsub
call zssub
call ztsub
call zysub
end

subroutine ss2
use m
call ss1
call sub
call ssub
call tsub
call ysub
call zsub
call zssub
call ztsub
call zysub
end
subroutine ss3
use m
call ss1
call ss2
call sub
call ssub
call tsub
call ysub
call zsub
call zssub
call ztsub
call zysub
end
subroutine ss4
call ss1
call ss2
call ss3
end
call ss4
rewind 24
do k=1,336
 read(24,*) n
 if (n/=1) print *,9001
end do
 read(24,*,end=1) n
print *,8001

1   print *,'sngg211j : pass'
end

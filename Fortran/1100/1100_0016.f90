module m
  type ty
    integer::x
   contains
     final :: fin
  end type ty
  interface
     module subrouTIne sub
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
     modULe subroutine zysub
     end
  module subroutine fin(this)
    type(ty),intent(in) :: this
     end
  end interface
end module m


submodule(m)smod
contains
  module procedure  sub
    type(ty)::a
     a%x=1
     call fin(a)
  end
  module procedure  zsub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
  end
  module procedure fin
    write(18,*) this%x
  end
  module procedure  ssub
    type(ty)::a
     a%x=1
     call fin(a)
  end
  module procedure  zssub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
  end
end submodule

submodule(m:smod) s2
contains
  module procedure  tsub
    type(ty)::a
     a%x=1
     call fin(a)
  end
  module procedure  ztsub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
  end
end

submodule(m:smod) s3
contains
  module procedure  ysub
    type(ty)::a
     a%x=1
     call fin(a)
  end
  module procedure  zysub
    type(ty)::a
     a%x=1
     call fin(a)
     call sub
     call ssub
     call ysub
     call tsub
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
rewind 18
do k=1,336
 read(18,*) n
 if (n/=1) print *,9001
end do
 read(18,*,end=1) n
print *,8001

1   print *,'sngg205j : pass'
end

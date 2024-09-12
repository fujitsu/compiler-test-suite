module m
  interface
     module subroutine sub
     end subroutine
  end interface
  type ty
     integer::x
  end type ty
end module m

submodule(m)smod
  interface
     subroutine ssub(a)
       import ty
       type(ty)::a
     end subroutine
  end interface
contains
  module subroutine sub
  interface
     subroutine ssuba(a)
       import ty
       type(ty)::a
     end subroutine
  end interface
    call ssub(ty(7))
  end subroutine sub
end submodule smod

submodule(m:smod) smod2
  interface
     module subroutine sub2
      interface
         subroutine ssuba(a)
           import ty
           type(ty)::a
         end subroutine
      end interface
     end subroutine
  end interface
contains
     module subroutine sub2
     end subroutine
end submodule

submodule(m:smod) smod3
  interface
     module subroutine sub3
     end subroutine
  end interface
contains
     module subroutine sub3
      interface
         subroutine ssuba(a)
           import ty
           type(ty)::a
         end subroutine
      end interface
     end subroutine
end submodule

use m
print *,'pass'
end
subroutine ssub(a)
 use m
  type(ty)::a
 a=a
end subroutine

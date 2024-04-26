module m
  interface
    module subroutine sub(a)
      integer, intent(out) :: a
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    a = 10
  end procedure
end


use m
integer a
call sub(a)
if (a/=10) print *,a
print *,'pass'
end

module m
contains
  subroutine sub
    integer:: a(101,102,103,9)
  end subroutine
end

submodule(m)smod
end

use m
print *,shape(a)
end

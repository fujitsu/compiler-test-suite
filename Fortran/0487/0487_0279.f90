module m
  interface
    module subroutine sub(a)
    end subroutine
  end interface
end
submodule(m)submod
  contains
    module procedure sub
      write(1,*)a
    end procedure sub
end submodule submod

use m
call sub(1.0)
rewind 1
read(1,*) b
if (b/=1) print *,201
print *,'pass'
end

module m
  interface
    module subroutine sub(a)
    end subroutine
  end interface
end
submodule(m)submod
  contains
    module procedure sub
      write(4,*)a
    end 
end submodule submod

use m
call sub(1.0)
rewind 4
read(4,*) x
if (x/=1.0) print *,201
print *,'pass'
end

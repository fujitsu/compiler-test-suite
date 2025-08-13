  module m
    interface
      module subroutine sub
      end subroutine
      module subroutine subx
      end subroutine
    end interface
  end module

  submodule(m)submod
    interface
    subroutine sub
    end subroutine
    end interface
  contains
    module subroutine subx
call sub
    end subroutine
  end submodule

  submodule(m)submod2
  contains
    module subroutine sub
write(2,*) 100
    end subroutine
  end submodule
use m
call sub
call subx
rewind 2
read(2,*) k
if (k/=100) print *,10001
read(2,*) k
if (k/=200) print *,10002
print *,'pass'
end
    subroutine sub
write(2,*) 200
    end subroutine

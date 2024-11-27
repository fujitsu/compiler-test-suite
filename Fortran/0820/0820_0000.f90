  module m
    interface
      module subroutine sub 
      end subroutine
    end interface
  end module

  submodule(m)submod
    interface gen
       procedure  sub 
    end interface
  contains
    subroutine sub 
    end subroutine
  end submodule

  submodule(m)submod2
  contains
    module subroutine sub 
write(1,*) 100
    end subroutine
  end submodule
use m
call sub
rewind 1
read(1,*) k
if (k/=100) print *,10001
print *,'pass'
end

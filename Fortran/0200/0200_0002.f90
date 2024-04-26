  module m
    interface
      module subroutine sub1 
      end subroutine
      module subroutine sub2 
      end subroutine
      module subroutine sub 
      end subroutine
      module subroutine sub3 
      end subroutine
      module subroutine subx 
      end subroutine
    end interface
  end module

  submodule(m)submod
    interface 
    subroutine sub 
    end subroutine
    subroutine sub1
    end subroutine
    end interface
  contains
    module subroutine subx 
call sub
call sub1
call sub2
call sub3
    end subroutine
  end submodule

  submodule(m)submod2
  contains
    module subroutine sub 
write(1,*) 100
    end subroutine
    module subroutine sub1 
write(1,*) 110
    end subroutine
    module subroutine sub2 
write(1,*) 120
    end subroutine
    module subroutine sub3 
write(1,*) 130
    end subroutine
  end submodule
use m
call sub
call subx
call sub1
call sub2
call sub3
rewind 1
read(1,*) k
if (k/=100) print *,10001
read(1,*) k
if (k/=200) print *,10002
read(1,*) k; if (k/=300) print *,10006
read(1,*) k; if (k/=120) print *,10003
read(1,*) k; if (k/=130) print *,10004
read(1,*) k; if (k/=110) print *,10005
read(1,*) k; if (k/=120) print *,10007
read(1,*) k; if (k/=130) print *,10008
print *,'pass'
end
    subroutine sub 
write(1,*) 200
    end subroutine
    subroutine sub1 
write(1,*) 300
    end subroutine

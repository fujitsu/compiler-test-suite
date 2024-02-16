module m
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
contains
  subroutine subx
call sub
contains
  subroutine sub
    write(1,*) 2
  end subroutine
  end subroutine
end

submodule(m)smod2
contains
  module subroutine sub
    write(1,*) 1
  end subroutine
end

use m
call sub
call subx
rewind 1
read(1,*) k;if (k/=1) print *,201
read(1,*) k;if (k/=3) print *,202
    print *,'pass'
end
  subroutine subx
    write(1,*) 3
  end subroutine

module m
 interface
   module subroutine sub
   end subroutine
 end interface
end

module n
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(n)smod
contains
  subroutine subx
    print *,'ng'
  end subroutine
end

submodule(m)smod
contains
  subroutine subx
    print *,'ng'
  end subroutine
end

submodule(m:smod)ssmod
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

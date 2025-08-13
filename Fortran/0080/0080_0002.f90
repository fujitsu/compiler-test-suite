module n
  interface
    module subroutine sub
    end subroutine
  end interface
end

module m
 interface
   module subroutine sub
   end subroutine
 end interface
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
    write(3,*)1
  end subroutine
end

submodule(n)smod
contains
  subroutine subx
    print *,'ng'
  end subroutine
end

use m
call sub
call subx
rewind 3
read(3,*) k;if (k/=1) print *,201
read(3,*) k;if (k/=3) print *,202
    print *,'pass'
end
  subroutine subx
    write(3,*) 3
  end subroutine

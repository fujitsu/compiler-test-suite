module m0
  interface 
     module subroutine s
     end
  end  interface
end
submodule(m0) smod
  interface 
     module subroutine t
     end
  end  interface
contains
     module subroutine t
     end
     module subroutine s
     end
end

use m0
call s
print *,'sngg061p : pass'
end


module m
 interface
  module subroutine sub2(i)
  end subroutine
 end interface
end
submodule (m) xx
   interface
       module subroutine sub(i)
      end subroutine
    end interface
contains
 module subroutine sub2(i)
   call sub(i)
 end subroutine
       module subroutine sub(i)
if (i/=1) print *,101
      end subroutine
end

use m
call sub2(1)
print *,'pass'
end

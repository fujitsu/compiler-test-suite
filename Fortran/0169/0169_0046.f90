module m
 interface
  recursive module subroutine sub(i)
  end subroutine
 end interface
end

submodule(m)smod
contains
 module recursive subroutine sub(i)
  if (i /=3) call sub(i+1)
 end subroutine
end

use m
call sub(1)
print *,'pass'
end

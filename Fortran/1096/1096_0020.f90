module m1
  interface
    module subroutine s1
    end
  end interface
end

submodule (m1) smod
  procedure(s1)::sub
contains
 module   procedure  s1
 end
end

use m1
call s1

print *,'sngg537h : pass'
end



module m
  implicit none
  interface
    module function   f  (a,b)
    end
    module function   g  (a,b) result(r)
    end
  end interface
end

submodule(m)smod
contains
  module procedure f
  end procedure
  module procedure g
  end procedure
end

use m
print *,'pass'
end

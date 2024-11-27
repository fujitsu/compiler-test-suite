module m
  interface
    module function fun
      integer fun
    end function
  end interface
end

submodule(m)fun
contains
  module procedure fun
    return
  end procedure
end

use m
print *,fun()
end

module m
  interface
    module function fun()
      integer fun
    end function
  end interface
end

submodule(m)fun
contains
  module procedure fun
    fun=20
    return
  end procedure
end

use m
if (fun() /= 20) print *,101
print *,'pass'
end

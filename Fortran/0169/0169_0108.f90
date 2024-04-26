module m
  interface
    module function fun()
      integer :: fun
    end function
  end interface
end

submodule(m)smod
contains
  module procedure fun
    fun = 10
  end procedure
end


use m
if (fun()/=10) print *,fun()
print *,'pass'
end

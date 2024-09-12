module m
  intrinsic sin
contains
  function f()
    procedure(real),pointer :: f,ff
  entry ff()
    f=>sin
    ff=>sin
  end function
end

use m
print *,'PASS'
end

module m
  interface
     module function sub()
     end function
  end interface
end module m

submodule(m)smod
contains
  module function sub()
  interface
     function ssuba()
     end function
  end interface
sub=ssuba()
  end function sub
end submodule smod

use m
if (sub()/=2) print *,101
print *,'pass'
end
     function ssuba()
      ssuba=2
     end function

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
sub=1
  end function sub
end submodule smod

print *,'pass'
end

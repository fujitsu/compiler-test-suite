module m
  interface
     module subroutine sub
     end subroutine
  end interface
end module m

submodule(m)smod
contains
  module subroutine sub
  interface
     subroutine ssuba()
     end subroutine
  end interface
  end subroutine sub
end submodule smod

print *,'pass'
end

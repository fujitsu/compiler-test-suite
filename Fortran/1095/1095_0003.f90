module m
  interface
    module subroutine sub(a)
      common/com/n
      integer ::a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
!      common/com/n
  end procedure
end

print *,'sngg201f : pass'
end

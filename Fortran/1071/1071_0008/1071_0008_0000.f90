module mod
  abstract interface
    subroutine foo(k)
    end subroutine
  end interface
  procedure(foo),pointer:: p

  contains
    subroutine test
      call sub(p)
      return 
    entry init
      p=>inn
    contains 
      subroutine inn(k)
        k=k+1
      end subroutine inn
    end subroutine test
end module mod

use mod
call init
call test
end

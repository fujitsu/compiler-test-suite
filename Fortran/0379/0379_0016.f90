module mod
  enum,bind(C)
    enumerator :: iii = 100
  end enum
  contains
  subroutine sub()
    interface
      subroutine subsub(arg)
        import
        integer :: arg(iii)
      end subroutine
    end interface
    if ( iii .eq. 100) print *,"ok"
  end subroutine
end module

use mod
call sub()
end

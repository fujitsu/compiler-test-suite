module mod01
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),save,bind(C),pointer :: miii
end module
module mod02
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  save :: miii
  procedure(sub),bind(C),pointer :: miii
end module 
module mod03
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),pointer :: miii
  save :: miii
end module
module mod04
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  save :: miii
  pointer :: miii
  procedure(sub),bind(C) :: miii
end module
module mod05
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: miii
  save :: miii
  pointer :: miii
end module
module mod06
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  pointer :: miii
  procedure(sub),bind(C),save :: miii
end module
module mod07
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),save :: miii
  pointer :: miii
end module
print *,'ok'
end

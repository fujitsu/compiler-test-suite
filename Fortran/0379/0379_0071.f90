module mod01
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),public,bind(C),pointer :: miii
end module
module mod02
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  public :: miii
  procedure(sub),bind(C),pointer :: miii
end module 
module mod03
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),pointer :: miii
  public :: miii
end module
module mod04
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  public :: miii
  pointer :: miii
  procedure(sub),bind(C) :: miii
end module
module mod05
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: miii
  public :: miii
  pointer :: miii
end module
module mod06
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  pointer :: miii
  procedure(sub),bind(C),public :: miii
end module
module mod07
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),public :: miii
  pointer :: miii
end module
print *,'ok'
end

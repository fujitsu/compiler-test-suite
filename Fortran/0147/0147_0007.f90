module mod
  interface
    subroutine sub()
    end subroutine
  end interface
end module mod

module mod1
  interface
    subroutine sub1(a)
    use mod
    procedure (sub) :: a
    end subroutine
  end interface
end module mod1

module mod2
  use mod1
end module mod2

use mod2
print *,'pass'
end

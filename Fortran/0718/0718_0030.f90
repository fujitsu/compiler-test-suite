program main
  interface
    subroutine sub01()
    end subroutine
    subroutine sub02() bind(C)
    end subroutine
  end interface
  procedure(sub01),pointer :: aaa01
  procedure(sub01),pointer :: bbb01
  procedure(sub01),pointer :: ccc01
  procedure(sub02),pointer,bind(C) :: aaa02
  procedure(sub02),pointer,bind(C) :: bbb02
  procedure(sub02),pointer,bind(C) :: ccc02
  !$pragma c(aaa01)
  !$pragma c(bbb01)
  !$pragma c(ccc01)
  !$pragma c(aaa02)
  !$pragma c(bbb02)
  !$pragma c(ccc02)
end program

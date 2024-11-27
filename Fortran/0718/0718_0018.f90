!$pragma c(aaa)
!$pragma c(bbb)
!$pragma c(ccc)
program main
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub) :: aaa
  procedure(sub) :: bbb
  procedure(sub) :: ccc
end program

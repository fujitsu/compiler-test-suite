interface
  subroutine sub01(p_pro)
    interface
      subroutine sub02(p01)
        real :: p01
      end subroutine
    end interface
    procedure(sub02) :: p_pro
  end subroutine
end interface
end program
subroutine sub01(p_pro)
  interface
    subroutine sub02(p01)
      integer :: p01
    end subroutine
  end interface
  procedure(sub02) :: p_pro
end subroutine

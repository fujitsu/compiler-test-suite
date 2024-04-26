    module a
    use iso_c_binding
    type, bind(c) :: a0
      type(c_ptr) a00
    end type a0
    interface
      integer(c_int) function a1(a10) bind(c)
        use iso_c_binding
        import a0
        implicit none
        type(a0), intent(in) :: a10
      end function a1
      subroutine a2(a20)
        import a0
        implicit none
        type(a0), intent(in) :: a20
      end subroutine a2
    end interface
    end module a

    program main
      use a
      implicit none
print *,'pass'
    end program main

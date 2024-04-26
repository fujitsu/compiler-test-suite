    module a
    use iso_c_binding
    type, bind(c) :: a0
      type(c_ptr) a00
      integer a01
    end type a0
    interface
      integer(4) function a1(a10) bind(c)
        use iso_c_binding
        import a0
        implicit none
        type(a0), intent(in) :: a10
      end function a1
      subroutine a2(a20)
        use iso_c_binding
        import a0
        implicit none
        type(a0), intent(in) :: a20
      end subroutine a2
    end interface
    end module a

    program main
      use a
      implicit none
    type(a0):: v
    v%a01=1
    if (a1(v)/=1) print *,1
print *,'pass'
    end program main
      integer(4) function a1(a10) bind(c)
        use a,only:a0
        use iso_c_binding
        implicit none
        type(a0), intent(in) :: a10
        a1=a10%a01
      end function a1

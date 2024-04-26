    module a
    interface
      integer(4) function a1() bind(c)
        use iso_c_binding
        import 
        implicit none
      end function a1
      subroutine a2()
        use iso_c_binding
      end subroutine a2
    end interface
    end module a

    program main
      use a
    if (a1()/=1) print *,1
print *,'pass'
    end program main
      integer(4) function a1() bind(c)
        implicit none
        a1=1
      end function a1

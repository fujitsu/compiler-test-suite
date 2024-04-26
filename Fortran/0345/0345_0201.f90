    module modf
     contains
      function ifun(i)
        ifun = i**2
      end function
    end module

    module mods
     use modf
     contains
      subroutine sub(ii)
        do i=1,10
          ii = ii + ifun(i)
        enddo
      end subroutine
    end module

    program main
     use mods
      ii=0
      call sub(ii)
      if (ii/=385) print *,'error ii -> ',ii
      print *,'pass'
    end program

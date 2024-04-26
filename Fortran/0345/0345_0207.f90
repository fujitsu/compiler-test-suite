    module mod_s
     contains
      subroutine isub(j,i)
        j = i**2
      end subroutine
    end module

      function ifun0(n)
       use mod_s
        ii=0
        do i=1,n
          call isub(j,i)
          ii = ii + j
        enddo
        ifun0=ii
      end function

    program main
      n=10
      ii = ifun0(n)
      if (ii/=385) print *,'error ii -> ',ii
      print *,'pass'
    end program

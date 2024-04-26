    module mod
     contains
      subroutine isub(j,i)
        j = i**2
      end subroutine
      function ifun0(n)
        ii=0
        do i=1,n
          call isub(j,i)
          ii = ii + j
        enddo
        ifun0=ii
      end function
      subroutine sub0(ii,n)
        ii = ifun0(n)
      end subroutine
      subroutine subz(ii,n)
        if (ii/=n) print *,'error ii -> ',ii
      end subroutine
    end module

    program main
     use mod
      n=10
      call sub0(ii,n)
      call subz(ii,385)
      print *,'pass'
    end program

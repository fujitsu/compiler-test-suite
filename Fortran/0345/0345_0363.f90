    program main
      ii=0
      call sub(ii)
      if (ii/=385) print *,'error ii -> ',ii
      print *,'pass'
    end program

    subroutine sub(ii)
      do i=1,10
        ii = ii + ifun(i)
      enddo
    end subroutine

    function ifun(i)
      ifun = i**2
    end function

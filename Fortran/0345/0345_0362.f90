    program main
      ii=0
      do i=1,10
        ii = ii + ifun(i)
      enddo
      if (ii/=385) print *,'error ii -> ',ii
      print *,'pass'
    end program

    function ifun(i)
      ifun = i**2
    end function

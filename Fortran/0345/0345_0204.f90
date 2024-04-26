    module mod2
     contains
      function ifun1(i)
        ifun1 = i**2
      end function
    end module

      function ifun0(n)
       use mod2
        ii=0
        do i=1,n
          ii = ii + ifun1(i)
        enddo
        ifun0=ii
      end function

    program main
      n=10
      ii = ifun0(n)
      if (ii/=385) print *,'error ii -> ',ii
      print *,'pass'
    end program

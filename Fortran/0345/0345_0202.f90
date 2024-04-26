    module mod2
     contains
      function ifun1(i)
        ifun1 = i**2
      end function
    end module

    module mod1
     use mod2
     contains
      function ifun0(n)
        ii=0
        do i=1,n
          ii = ii + ifun1(i)
        enddo
        ifun0=ii
      end function
    end module

    program main
     use mod1
      n=10
      ii = ifun0(n)
      if (ii/=385) print *,'error ii -> ',ii
      print *,'pass'
    end program

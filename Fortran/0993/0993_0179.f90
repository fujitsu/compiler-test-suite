  program main
    interface operator(.foobar.)
      function fun(c,i)
        character ,intent(in) :: c
        integer , intent(in)  :: i
      end function
    end interface

  end program main

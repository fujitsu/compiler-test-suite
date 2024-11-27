  program main

  end program main

  module mod
    integer :: res
    contains 
    function fun()
      res = 10
      entry ent() result(res)

      fun = 1738
    end function
  end module

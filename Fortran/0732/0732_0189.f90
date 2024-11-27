      module m
      contains
      function cfun()
      cfun = 100.
      end function
      subroutine sub()
      if (cfun()/=100.)write(6,*) "NG"
      end  subroutine
      end module

      use m
      call sub()
print *,'pass'
      end

      function cfun()
      cfun = 10.
      end function

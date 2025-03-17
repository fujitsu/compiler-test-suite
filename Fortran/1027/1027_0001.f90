   interface flag
  function f()
  end function
   end interface

          type flag
            integer::x
          end type
          type(flag) :: n=flag(1)
          if (n%x/=1) print *,101
          if (flag()/=1.0) print *,102
          print *,"pass"
          End
  function f()
   f=1.0
  end function

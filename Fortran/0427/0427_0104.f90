      module m
      procedure(logical)::aaa
      end module
      function aaa() result(a)
      a=1
      end function
      function aaaa() result(a)
      use m
      a=1
      end function
      print *,'pass'
      end

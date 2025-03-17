      module m
       contains
        function f() result(a)
         character(20)::a
          a='ABCDEFGHIJ'//'abcdefghij'
        end function f
      end module

      program main
       use m
       character(20)::a
        a=f()
        if (a/='ABCDEFGHIJabcdefghij') print *,'error ',a
        print *,'pass'
      end program main

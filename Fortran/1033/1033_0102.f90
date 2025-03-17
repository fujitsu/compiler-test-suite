      function f() result(a)
       character(20)::a
        a='ABCDEFGHIJ'//'abcdefghij'
      end function f

      program main
       character(20)::a,f
        a=f()
        if (a/='ABCDEFGHIJabcdefghij') print *,'error ',a
        print *,'pass'
      end program main

      function ie_fun1(i) result(j)
        j=i+1
        return
      entry ie_fun2(i) result(j)
        j=i+2
        return
      end function

      module m
      contains
        function ifun(i) result(j)
          j=ie_fun1(i)
          return
        entry ient(i) result(j)
          j=ie_fun2(i)
        end function
      end module m

      program main
       use m
        i=1
        j1=ifun(i)
        j2=ient(i)
        if (j1/=2.or.j2/=3) print *,'error',j1,j2
        print *,'pass'
      end program

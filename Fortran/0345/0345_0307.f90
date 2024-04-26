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

      function ff(i) result(l)
       use m
       logical(4)::l
        j1=ifun(i)
        j2=ient(i)
        if (j1/=2.or.j2/=3) then
          l=.true.
        else
          l=.false.
        endif
        return
      entry ee(i) result(l)
        j1=ifun(i)
        j2=ient(i)
        if (j1/=3.or.j2/=4) then
          l=.true.
        else
          l=.false.
        endif
      end function

      program main
       logical(4)::l1,l2
       logical(4),external::ff,ee
        l1=ff(1)
        l2=ee(2)
        if (l1.or.l2) print *,'error'
        print *,'pass'
      end program

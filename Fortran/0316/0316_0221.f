
      program main
      n=10
      call sub(n)
      print *,'*** ok ***'
      end

      recursive subroutine sub(n)
      n=n-1
      if (n.gt.0) then
       call sub(n)
      endif 

      i = ifun(n)
      if (i.ne.n) then
        print *,'??? ng ???'
        stop 1
      endif

      contains
        function ifun(n) result(iresult)
        iresult=n
        end function ifun
      end

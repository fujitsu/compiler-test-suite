
      n=10
      i=ifun(n)
      if (i.ne.10) then
        print *,'??? ng ???'
        stop 2
      else
        print *,'*** ok ***'
      endif
      end

      recursive  function ifun(n) result(iresult)
      n=n-1
      m=n
      if (n.eq.0) then
        iresult=1
        return
      endif
      
      i=ifun(n)
      iresult=m+1

      if (i.ne.m) then
        print *,'??? ng ???'
        stop 1
      endif
      end

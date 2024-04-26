
      n=10
      call sub(n)
      print *,'*** ok ***'
      end

      recursive subroutine sub(n)
      data m/10/
      save m
      if (n.ne.m) then
        print *,'??? ng ???'
        stop 1
      endif
      m=m-1 ; n=n-1
      if (n.eq.0) return
      call sub(n)
      m=m+1 ; n=n+1
      if (n.ne.m) then
        print *,'??? ng ???'
        stop 2
      endif
      end
      



      program main
      n=10
      call sub(n)
      print *,'*** ok ***'
      end

      recursive subroutine sub(n)
      n=n-1
      m=n
      if (n.eq.0) return

      call sub(n)

      i = ifun(m)
      jj = 1
      do j=1,m
        jj = jj*j
      enddo
      if (i.ne.jj) then
        print *,'??? ng ???'
        stop 1
      endif

      contains
        recursive function ifun(k) result(iresult)
        if (k.eq.0) then
          iresult=1
          return
        else
          iresult=k*ifun(k-1)
        endif
        end function ifun
      end

      integer a,b
      pointer (pa,a)
      pa=loc(b)
      a=100
      call sub(pa)
      end

      subroutine sub(pa)
      integer a
      pointer (pa,a)
      if(a.eq.100) then
        print *,'*** ok ***'
      else
        print *,'*** ng ***' 
      endif
      return
      end


      n=10
      call sub(n)
      print *,'*** ok ***'
      end

      recursive subroutine sub(n)
      integer,target ::a(1:5),b(5:1)
      integer,pointer::p(:)
      n=n-1
      if (n.eq.0) return
      call sub(n)

      p=>a
      if (associated(p,a)) then
        continue
      else
        print *,'??? ng ???'
        stop 1
      endif
      if (associated(p,b)) then
        print *,'??? ng ???'
        stop 2
      endif
      end

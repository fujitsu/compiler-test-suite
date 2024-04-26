
      integer,target ::a(1:5),b(5:1)
      integer,pointer::p(:)
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
      print *,'*** ok ***'
      end

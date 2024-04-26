
      character*10           :: ch(2)
      integer a(ubound(ch(1:2),1),lbound(ch(2:2),1))

      if (ubound(a,1).ne.ubound(ch(1:2),1)) then
        print *,'??? ng ???'
        stop 1
      endif

      if (ubound(a,2).ne.lbound(ch(2:2),1)) then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

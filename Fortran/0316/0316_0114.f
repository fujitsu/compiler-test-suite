
      integer a(10)
      integer b(ubound(a(1:10:3),1))

      if (ubound(b,1).ne.ubound(a(1:10:3),1)) then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

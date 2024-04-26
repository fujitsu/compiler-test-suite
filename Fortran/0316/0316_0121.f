      
      type tag
        integer a(10)
      end type
      type (tag) ::t
      integer b(ubound(t%a(1:10:3),1))

      if (ubound(b,1).ne.ubound(t%a(1:10:3),1)) then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

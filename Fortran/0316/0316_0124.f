      
      type tag
        integer a(10)
      end type
      type (tag) ::t(10)
      integer b(ubound(t(1:2),1))

      if (ubound(b,1) .ne. ubound(t(1:2),1) )  then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

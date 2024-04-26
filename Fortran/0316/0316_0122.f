      
      type tag
        character*10 a(5)
      end type
      type (tag) ::t
      character (len=len(t%a(2:4)(6:9))) :: b(ubound(t%a(2:4)(6:9),1))

      if (len(b) .ne. len(t%a(2:4)(6:9)) )  then
        print *,'??? ng ???'
        stop 1
      endif

      if (ubound(b,1) .ne. ubound(t%a(2:4)(6:9),1) )  then
        print *,'??? ng ???'
        stop 2
      endif
      print *,'*** ok ***'
      end

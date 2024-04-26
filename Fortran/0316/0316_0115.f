      
      character*10 a(5)
      character (len=len(a(2:4)(6:9))) :: b(ubound(a(2:4)(6:9),1))

      if (len(b) .ne. len(a(2:4)(6:9)) )  then
        print *,'??? ng ???'
        stop 1
      endif

      if (ubound(b,1) .ne. ubound(a(2:4)(6:9),1) )  then
        print *,'??? ng ???'
        stop 2
      endif
      print *,'*** ok ***'
      end

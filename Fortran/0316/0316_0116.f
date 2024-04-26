      
      integer,parameter ::i(3)=(/10,9,8/)
      integer a(10)
      integer b(ubound(a(i),1))

      if (ubound(b,1) .ne. ubound(a(i),1) )  then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

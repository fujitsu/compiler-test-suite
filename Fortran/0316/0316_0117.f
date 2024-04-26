      
      integer a(5)
      integer b(ior( ubound(a(2:5),1), 3 ))

      if (ubound(b,1) .ne. ior(ubound(a(2:5),1),3) )  then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

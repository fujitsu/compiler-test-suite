
      type tag
        character*10           :: ch(2)
      end type
      type (tag) ::t(10)
      integer a(ubound(t(1)%ch(1:2),1))

      if (ubound(a,1).ne.ubound(t(1)%ch(1:2),1)) then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

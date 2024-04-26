
      type tag
        character*10           :: ch
      end type
      type (tag) ::t(10)
      character (len=len(t(1)%ch(1:5))) :: ch2

      if (len(ch2).ne.len(t(1)%ch(1:5))) then
        print *,'??? ng ???'
        stop 1
      endif
      print *,'*** ok ***'
      end

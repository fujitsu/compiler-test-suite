
      character*10                  :: ch
      character (len=len(ch (1:5))) :: ch2
      character (len=len(ch2(1:4))) :: ch3

      if (len(ch2).ne.len(ch(1:5))) then
        print *,'??? ng ???'
        stop 1
      endif

      if (len(ch3).ne.len(ch2(1:4))) then
        print *,'??? ng ???'
        stop 2
      endif
      print *,'*** ok ***'
      end

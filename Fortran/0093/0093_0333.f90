      type ty1
      real,pointer :: p1
      end type
      type (ty1) ::str
      complex ,target     :: p2
      p2=(5,6)
      str=ty1(p2%im)            
      if(str%p1 .ne. 6)print*,"101"
      print*,"pass"
      end

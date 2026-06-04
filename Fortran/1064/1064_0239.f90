       Type tz(k1)
       Integer,kind  :: k1
       character(kind= k1,len = 10) :: ch
       character(len = 10,kind=k1) :: ch2
       End type
       Type(tz(1)) :: ob
       if(len(ob%ch) .ne. 10) print*,"221",len(ob%ch)
       if(len(ob%ch2) .ne. 10) print*,"222",len(ob%ch2)
       call sub
       contains
       subroutine sub
       Type ty(k1)
       Integer,kind  :: k1
       character(kind= k1,len = 10) :: ch
       End type
       Type(ty(1)) :: obj
       if(len(obj%ch) .ne. 10) print*,"121",len(obj%ch)
      print*,"pass"
      end subroutine
      End

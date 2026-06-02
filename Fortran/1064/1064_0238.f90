       character(len = 10)::cc
       call sub
       contains
       subroutine sub
       Type ty(k1)
       Integer,kind  :: k1
       character(kind= k1,len = len(cc)+k1) :: ch
       End type
       Type(ty(1)) :: obj
     if(len(obj%ch) .ne. 11) print*,"121"
       obj%ch='123456789abc'
if (obj%ch/='123456789ab') print *,212
      print*,"pass"
      end subroutine
      End

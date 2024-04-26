PROGRAM MAIN

character(len = 10,kind = 4), parameter :: c = "abcd  ef  "
character(len = 10,kind =4),parameter :: b =  trim(c)
character(len = 10,kind =4)::d
integer,parameter::k = kind(trim(c))

d = "abcd  ef  "

print *,b ,"--",trim(d)
if (b.NE.trim(d)) then
 print *,'??? (Error: utfchar->utfchar) ???'
else
 print*, "urfchar->utfchar OK"
endif

call check(k, kind(trim(d)))

END

    subroutine check(x,y)
      integer x,y
      print *,"KIND::",x ,"--", "KIND::",y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine

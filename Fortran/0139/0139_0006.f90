PROGRAM MAIN

character(len =8,kind = 4), parameter :: c = "    abcd"
character(len =8,kind =4),parameter :: l =  adjustl(c)
character(len =8,kind =4)::d
integer,parameter::k = kind(adjustl(c))
d = "    abcd"

print *,l ,"--",adjustl(d)
if (l.NE.adjustl(d)) then
 print *,'??? (Error: utfchar->utfchar) ???'
else
 print*, "utfchar->utfchar OK"
endif

call check(k, kind(adjustl(d)))


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

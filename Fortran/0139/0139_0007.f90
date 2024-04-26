PROGRAM MAIN

character(len =8,kind = 4), parameter :: c = "abcd    "
character(len =8,kind =4),parameter :: l =  adjustr(c)
character(len =8,kind =4)::d
integer,parameter::k = kind(adjustr(c))
d = "abcd    "

print *,l ,"--",adjustr(d)
if (l.NE.adjustr(d)) then
 print *,'??? (Error: utfchar->utfchar) ???'
else
 print*, "utfchar->utfchar OK"
endif

call check(k, kind(adjustr(d)))


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

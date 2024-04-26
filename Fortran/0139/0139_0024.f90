PROGRAM MAIN

character(len =1 ,kind =4), parameter :: c = 'a'
character(len =1,kind =4),parameter :: b  = new_line(c)
character(len =1,kind =4)::d
integer,parameter::k = kind(new_line(c))
d = 'a'

print *,b ,"--",new_line(d)
if (b.NE.new_line(d)) then
 print *,'??? (Error: utfchar->utfchar) ???'
else
 print*, "utfchar->utfchar OK"
endif

call check(k , kind(new_line(d)))
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

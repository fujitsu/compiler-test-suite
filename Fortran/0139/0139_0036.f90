PROGRAM MAIN

character(len =8,kind = 4), parameter :: c = "    abcd"
character(len =8,kind =4),parameter :: l =  adjustl(c)
character(len =8,kind =4)::d
character(len =8,kind =1)::dd
integer,parameter::k = kind(adjustl(c))
d = "    abcd"

write(1,*)l ,"--",adjustl(d)
if (l.NE.adjustl(d)) then
 print *,'??? (Error: utfchar->utfchar) ???'
else
 print*, "pass"
endif

dd=l
if (dd/='abcd    ') print *,301

call check(k, kind(adjustl(d)))


END
subroutine check(x,y)
      integer x,y
      write(1,*)"KIND::",x ,"--", "KIND::",y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
      endif
      end subroutine

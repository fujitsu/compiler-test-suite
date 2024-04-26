PROGRAM MAIN

character(len =2,kind = 4), parameter :: c = 'ab'
integer,parameter :: b = ichar(c,4)
character(len =2,kind = 4)::d
integer,parameter::k = kind(ichar(c,4))
d = 'ab'
print *,b ,"--",ichar(d,4)
if (b.NE.ichar(d,4)) then
 print *,'??? (Error: utfchar->integer) ???'
else
 print*, "utfchar->integer OK"
endif

call check(k, kind(ichar(d,4)))

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


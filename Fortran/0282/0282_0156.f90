PROGRAM MAIN

character(len =1,kind = 4), parameter :: c = 'a'
integer,parameter :: l = iachar(c,4)
character(len =1,kind = 4)::d
integer,parameter::k = kind(iachar(c,4))
d = 'a'
print *,l ,"--",iachar(d,4)
if (l.NE.iachar(d,4)) then
 print *,'??? (Error: utfchar->integer) ???'
else
 print*, "utfchar->integer OK"
endif

call check(k, kind(iachar(d,4)))

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


PROGRAM MAIN
character(len =1),parameter::t = 'a'
integer,PARAMETER::b=iachar( t)

character(len =1) :: c

integer::k= kind(iachar('a' ))

c = 'a'

print *,b ,"--",iachar(c)
if (b.NE.iachar(c)) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif

call check1(k,kind(iachar(c)))
END

  subroutine check1(x,y)
      integer x,y
      print *,"KIND::",x ,"--", "KIND::",y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine



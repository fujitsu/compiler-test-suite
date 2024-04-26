PROGRAM MAIN
character(len =1),parameter::t = 'a'
integer,PARAMETER::b=iachar(C= t,kind = 1)

character(len =1) :: c

integer,parameter::k= kind(iachar(C= t,kind =1))

c = 'a'

print *,b ,"--",iachar(C =c, kind = 1)
if (b.NE.iachar(C = c, kind = 1)) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif

call check1(k,kind(iachar(c,1)))
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



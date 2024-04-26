PROGRAM MAIN
integer,PARAMETER::b=ichar( 'a')

character(len =1) :: c

integer::k= kind(ichar('a' ))

c = 'a'

print *,b ,"--",ichar(c)
if (b.NE.ichar(c)) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif

call check1(k,kind(ichar(c)))
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



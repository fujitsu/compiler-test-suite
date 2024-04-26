PROGRAM MAIN

integer,PARAMETER::b=iachar(C='a',Kind=1)
character(len =1)::c
integer::k= kind(iachar(C='a',kind=1))

c = 'a'


print *,b ,"--",iachar(C='a',KIND =1)
if (b.NE.iachar(C='a',kind=1)) then
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



PROGRAM MAIN

TYPE ONE
character(len =1)::b
character(len =1)::c
END TYPE ONE

character(len =1) :: d
character(len =1) :: e

integer::k= kind(new_line('a'))

TYPE(ONE),PARAMETER::O=ONE(new_line('a'),new_line('b'))


TYPE(ONE)::Z
d = 'a'
e = 'b'

Z=ONE(new_line(d),new_line(e))

print *,O%b ,"--",Z%b
if (O%b.NE.Z%b) then
 print *,'??? (Error: character->character) ???'
else
 print*, "character->character OK"
endif

print *,O%c ,"--",Z%c
if (O%c.NE.Z%c) then
 print *,'??? (Error: character->character) ???'
else
 print*, "character->character OK"
endif



call check1(k,kind(new_line(d)))
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



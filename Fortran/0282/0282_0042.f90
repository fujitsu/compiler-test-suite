PROGRAM MAIN

TYPE ONE
character(len =1)::b
character(len =1)::c
END TYPE ONE

integer :: d
integer :: e

integer::k= kind(char(20))

TYPE(ONE),PARAMETER::O=ONE(char(20),char(25))


TYPE(ONE)::Z
d = 20
e = 25

Z=ONE(char(d),char(e))

print *,O%b ,"--",Z%b
if (O%b.NE.Z%b) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif

print *,O%c ,"--",Z%c
if (O%c.NE.Z%c) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif



call check1(k,kind(char(d)))
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




PROGRAM MAIN

character(len =1),PARAMETER::b=char(I = 51,KIND =2)
integer::c
integer::k= kind(char(15,1))
c = 51

print *,b ,"--",char(I = 51,KIND =2)
if (b.NE.char(I = c,KIND =1)) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif


call check1(k,kind(char(c,1)))

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



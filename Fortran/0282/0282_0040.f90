PROGRAM MAIN
character(len =1 ),PARAMETER::b=char( 15)

integer :: c

integer::k= kind(char(15 ))

c = 15

print *,b ,"--",char(c)
if (b.NE.char(c)) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif

call check1(k,kind(char(c)))
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



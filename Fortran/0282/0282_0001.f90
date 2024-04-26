PROGRAM MAIN
character(len =1 ),PARAMETER::b=achar( 51)

integer :: c

integer::k= kind(achar(51))

c = 51

print *,b ,"--",achar(c)
if (b.NE.achar(c)) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif

call check1(k,kind(achar(c)))
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



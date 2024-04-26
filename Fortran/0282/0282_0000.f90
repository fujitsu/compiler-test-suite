PROGRAM MAIN
character(len =1),PARAMETER::b=achar(I = 75,kind = 1)

integer::c

integer::k= kind(achar(I= 75,kind =1))

c = 75

print *,b ,"--",achar(I= c,kind = 1)
if (b.NE.achar(I=c,kind=1)) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif


call check1(k,kind(achar(I = c,kind = 1)))

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



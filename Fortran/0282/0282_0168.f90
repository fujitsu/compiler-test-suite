PROGRAM MAIN
integer,PARAMETER::b=index( "","",.false.,4)

character(len = 10) :: ch1
character(len = 10) :: ch2 
integer::k= kind(index("","",.false.,4 ))

ch1 = ""
ch2 = ""

print *,b ,"--",index(ch1,ch2,.false.,4)
if (b.NE.index(ch1,ch2,.false.,4)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

call check1(k,kind(index(ch1,ch2,.false.,4)))
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



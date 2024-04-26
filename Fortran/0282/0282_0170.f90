PROGRAM MAIN
integer,PARAMETER::b= index( "ABCDEF","EF",.true.)

character(len = 6) :: ch1
character(len = 2) :: ch2

integer::k= kind(index("ABCDEF","EF",.true.))

ch1 = "ABCDEF"
ch2 = "EF"


print *,b ,"--",index(ch1,ch2,.true.)
if (b.NE.index(ch1,ch2,.true.)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

call check1(k,kind(index(ch1,ch2,.true.)))
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


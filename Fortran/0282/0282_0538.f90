PROGRAM MAIN
character(len = 10),PARAMETER::b=trim( "")

character(len = 10) :: ch1

integer::k= kind(trim("" ))

ch1 = ""

print *,b ,"--",trim(ch1)
if (b.NE.trim(ch1)) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif

call check1(k,kind(trim(ch1)))
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



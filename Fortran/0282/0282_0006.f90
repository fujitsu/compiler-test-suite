PROGRAM MAIN
character(len = 10),PARAMETER::b=adjustl( "")

character(len = 10) :: ch1

integer::k= kind(adjustl("" ))

ch1 = ""

print *,b ,"--",adjustl(ch1)
if (b.NE.adjustl(ch1)) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif

call check1(k,kind(adjustl(ch1)))
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



PROGRAM MAIN
character(len = 10),PARAMETER::b=adjustr( "")

character(len = 10) :: ch1

integer::k= kind(adjustr("" ))

ch1 = ""

print *,b ,"--",adjustr(ch1)
if (LEN(b).NE.LEN(adjustr(ch1))) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif

call check1(k,kind(adjustr(ch1)))
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



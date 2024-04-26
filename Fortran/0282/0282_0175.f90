PROGRAM MAIN
integer,PARAMETER::b=len_trim( "")

character(len = 10) :: ch1

integer::k= kind(len_trim("" ))

ch1 = ""

print *,b ,"--",len_trim(ch1)
if (b.NE.len_trim(ch1)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

call check1(k,kind(len_trim(ch1)))
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



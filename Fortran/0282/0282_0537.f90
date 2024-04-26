PROGRAM MAIN

character(len = 20),PARAMETER::b=trim(STRING = "FORTRAN    ")

character(len = 20) :: ch1
integer::k= kind(trim( "FORTRAN    "))

ch1 = "FORTRAN    "

print *,b ,"--",trim(STRING=ch1)
if (b.NE.trim(STRING=ch1)) then
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



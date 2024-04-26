PROGRAM MAIN
character(len = 20),PARAMETER::b= adjustl( "    AB  CDEF     ")

character(len = 20) :: ch1


integer::k= kind(adjustl("    AB  CDEF     "))

ch1 = "    AB  CDEF     "


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


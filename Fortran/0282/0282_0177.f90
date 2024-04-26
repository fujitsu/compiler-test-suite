PROGRAM MAIN
integer,PARAMETER::b= len_trim( "AB  CDEF     ")

character(len = 20) :: ch1


integer::k= kind(len_trim("AB  CDEF     "))

ch1 = "AB  CDEF     "


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


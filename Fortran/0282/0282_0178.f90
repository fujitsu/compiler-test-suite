PROGRAM MAIN

character(len = 5,kind = 4), parameter :: c = "abc "
integer,parameter :: b = len_trim(c,4)
character(len =5,kind = 4)::d
integer,parameter::k = kind(len_trim(c,4))
d = "abc "

print *,b ,"--",len_trim(d,4)
if (b.NE.len_trim(d,4)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

call check(k, kind(len_trim(d,4)))

END
     subroutine check(x,y)
      integer x,y
      print *,"KIND::",x ,"--", "KIND::",y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine


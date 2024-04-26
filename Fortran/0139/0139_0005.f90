PROGRAM MAIN

integer, parameter :: i = 55
integer::c
character(len =1,kind = 4)::result
character(len =1,kind =4),parameter :: b = achar(i)
integer,parameter::k = kind(b)
c = 55
result = achar(c)

print *,b ,"--",result
if (b.NE.result) then
 print *,'??? (Error: integer->utfchar) ???'
else
 print*, "integer->utfchar OK"
endif

call check(k, kind(result))

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

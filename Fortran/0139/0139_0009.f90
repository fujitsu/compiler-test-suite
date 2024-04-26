PROGRAM MAIN

integer, parameter :: c = 55
character(len =1,kind=4),parameter :: b = char(c,4)
integer::d
integer,parameter::k = kind(b)

d = 55 

print *,b ,"--",char(d,4)
if (b.NE.char(d,4)) then
 print *,'??? (Error: integer->utfchar) ???'
else
 print*, "integer->utfchar OK"
endif

call check(k, kind(d))


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
 

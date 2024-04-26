PROGRAM MAIN
integer, parameter :: c = 55
character(len =1,kind =4),parameter :: b = char(c,1)
integer::d
character(len =1, kind = 4)::backend
integer,parameter::k = kind(char(c,1))
d = 55 
backend = char(d,1)

print *,b ,"--",backend
if (b.NE.backend) then
 print *,'??? (Error: integer->utfchar) ???'
else
 print*, "integer->utfchar OK"
endif

call check(k, kind(char(d,1)))


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

PROGRAM MAIN
character(len =1 ),PARAMETER::b=new_line('a')

character(len =1)::c

integer::k= kind(new_line('a'))

c = 'a'

print *,b ,"--",new_line(c)
if (b.NE.new_line(c)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

call check1(k,kind(new_line(c)))
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



PROGRAM MAIN
character(len =1),PARAMETER::a= 'b'

character(len =1 ),DIMENSION(1:3)::c=new_line(a)

character(len =1)::d

integer::k= kind(new_line('b'))

d = 'b'

do i=1,3

print *,c(i) ,"--",new_line(d)
if (c(i).NE.new_line(d)) then
 print *,'??? (Error: character->character) ???'
else
 print*, "character->character OK"
endif

call check1(k,kind(new_line(d)))
enddo

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



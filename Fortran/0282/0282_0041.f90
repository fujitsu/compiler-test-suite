PROGRAM MAIN
integer,PARAMETER::a= 20

character(len =1 ),DIMENSION(1:3)::c=char(a)

integer :: d

integer::k= kind(char(a))

d = 20

do i=1,3

print *,c(i) ,"--",char(d)
if (c(i).NE.char(d)) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif

call check1(k,kind(char(d)))
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



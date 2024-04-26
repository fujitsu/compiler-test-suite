PROGRAM MAIN
integer,PARAMETER::a= 70

character(len =1 ),DIMENSION(1:3)::c=achar(a)

integer :: d

integer::k= kind(achar(a))

d = 70

do i=1,3

print *,c(i) ,"--",achar(d)
if (c(i).NE.achar(d)) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif

call check1(k,kind(achar(d)))
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



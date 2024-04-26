PROGRAM MAIN
character(len =1),PARAMETER::a= 's'

integer,DIMENSION(1:3)::c=iachar(a)

character(len =1) :: d

integer::k= kind(iachar('s' ))

d = 's'

do i=1,3

print *,c(i) ,"--",iachar(d)
if (c(i).NE.iachar(d)) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif

call check1(k,kind(iachar(d)))
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



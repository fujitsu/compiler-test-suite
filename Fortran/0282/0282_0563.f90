PROGRAM MAIN
character(LEN = 20),PARAMETER::a="    ABCDEFG"

character(len =20),DIMENSION(1:3)::c=adjustl(a)

character(len = 20) :: ch1

integer::k= kind(adjustl( "    ABCDEFG"))

ch1 = "    ABCDEFG"

do i=1,3

print *,c(i) ,"--",adjustl(ch1)
if (c(i).NE.adjustl(ch1)) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif


call check1(k,kind(adjustl(ch1)))
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



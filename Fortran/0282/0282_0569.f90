PROGRAM MAIN
character(LEN = 20),PARAMETER::a="ABCDEFG   "

integer,DIMENSION(1:3)::c=len_trim(a)

character(len = 20) :: ch1

integer::k= kind(len_trim( "ABCDEFG   "))

ch1 = "ABCDEFG    "

do i=1,3

print *,c(i) ,"--",len_trim(ch1)
if (c(i).NE.len_trim(ch1)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

call check1(k,kind(len_trim(ch1)))
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



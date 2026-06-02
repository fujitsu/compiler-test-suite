PROGRAM MAIN
character(LEN = 7),PARAMETER::a="ABCDEFG"
character(len =2),parameter::b = "FG"

integer,DIMENSION(1:3)::c=index(STRING = a,Substring = b)

character(len = 7) :: ch1
character(len =2):: ch2

integer::k= kind(index( "ABCDEFG","FG"))

ch1 = "ABCDEFG"
ch2 = "FG"


do i=1,3

print *,c(i) ,"--",index(string = ch1,substring = ch2)
if (c(i).NE.index(ch1,ch2)) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

call check1(k,kind(index(ch1,ch2)))
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



PROGRAM MAIN
character(LEN = 10),PARAMETER::a="FORTRAN"
character(LEN = 10),PARAMETER::b ="FRIENDS"

logical,DIMENSION(1:3)::c=LLT(a,b)

character(len = 10) :: ch1
character(len = 10) :: ch2
integer::k= kind(LLT(STRING_A = "FORTRAN", STRING_B ="FRIENDS" ))

ch1 = "FORTRAN"
ch2 = "FRIENDS"

do i=1,3

print *,c(i) ,"--",llt(STRING_A =ch1,STRING_B = ch2)
if (c(i).NEQV.llt(STRING_A =ch1,STRING_B = ch2)) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

call check1(k,kind(LLT(STRING_A = ch1, STRING_B = ch2 )))
enddo

END

      subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine

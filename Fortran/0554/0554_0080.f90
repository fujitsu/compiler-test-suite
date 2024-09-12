PROGRAM MAIN
LOGICAL,PARAMETER::b=LLE(STRING_A = "FORTRAN", STRING_B = "")

character(len = 10) :: ch1
character(len = 10) :: ch2
integer::k= kind(LLE(STRING_A = "FORTRAN", STRING_B ="" ))

ch1 = "FORTRAN"
ch2 = ""

print *,b ,"--",lle(STRING_A =ch1,STRING_B = ch2)
if (b.NEQV.lle(STRING_A =ch1,STRING_B = ch2)) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

call check1(k,kind(LLE(STRING_A = ch1, STRING_B = ch2 )))
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

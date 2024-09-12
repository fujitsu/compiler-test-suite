PROGRAM MAIN
logical,PARAMETER::b=LGT(STRING_A = "", STRING_B = "")

character(len = 10) :: ch1
character(len = 10) :: ch2
integer::k= kind(LGT(STRING_A = "", STRING_B ="" ))

ch1 = ""
ch2 = ""

print *,b ,"--",lgt(STRING_A =ch1,STRING_B = ch2)
if (b.NEQV.lgt(STRING_A =ch1,STRING_B = ch2)) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

call check1(k,kind(LGT(STRING_A = ch1, STRING_B = ch2 )))
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

PROGRAM MAIN
logical,PARAMETER::b=LGE(STRING_A = "", STRING_B = "")

character(len = 10) :: ch1
character(len = 10) :: ch2

integer::k= kind(LGE(STRING_A = "", STRING_B ="" ))
ch1 = ""
ch2 = ""

print *,b ,"--",lge(STRING_A =ch1,STRING_B = ch2)
if (b.NEQV.lge(STRING_A =ch1,STRING_B = ch2)) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

call check1(k,kind(LGE(STRING_A = ch1, STRING_B = ch2 )))
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

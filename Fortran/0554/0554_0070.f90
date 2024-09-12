PROGRAM MAIN
LOGICAL,PARAMETER::b=LGT(STRING_A = "FORTRAN", STRING_B ="FRIENDS" )
character(len = 10) :: ch1
character(len = 10) :: ch2

integer::k= kind(LGT(STRING_A = "FORTRAN", STRING_B ="FRIENDS" ))
ch1 = "FORTRAN"
ch2 = "FRIENDS"

print *,b ,"--",lgt(ch1,ch2)
if (b.NEQV.lgt(ch1,ch2)) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

call check1(k,kind(LGT(STRING_A = ch1, STRING_B = ch2 )))
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

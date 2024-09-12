PROGRAM MAIN

TYPE ONE
logical::b
logical::c
END TYPE ONE

character(len = 10) :: ch1
character(len = 10) :: ch2

integer::k= kind(LGE(STRING_A = "FORTRAN", STRING_B ="FRIENDS" ))

TYPE(ONE),PARAMETER::O=ONE(LGE("FORTRAN", "FRIENDS"),LGE("FORTRAN", "FRIENDS"))

TYPE(ONE)::Z
ch1 = "FORTRAN"
ch2 = "FRIENDS"

Z=ONE(LGE(ch1, ch2),LGE(ch1, ch2))

print *,O%b ,"--",Z%b
if (O%b.NEQV.Z%b) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

print *,O%c ,"--",Z%c
if (O%c.NEQV.Z%c) then
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

PROGRAM MAIN

TYPE ONE
logical::b
logical::c
END TYPE ONE

character(LEN = 10)::d
character(LEN = 10)::e

integer::k= kind(LLT(STRING_A = "FORTRAN", STRING_B ="FRIENDS" ))

TYPE(ONE),PARAMETER::O=ONE(LLT( "FORTRAN", "FRIENDS"),LLT("FORTRAN", "FRIENDS"))

TYPE(ONE)::Z

d = "FORTRAN"
e = "FRIENDS"

Z=ONE(LLT(d,e),LLT(d,e))

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

call check1(k,kind(LLT(STRING_A = d, STRING_B = e )))
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

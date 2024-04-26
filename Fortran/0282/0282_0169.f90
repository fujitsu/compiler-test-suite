PROGRAM MAIN

TYPE ONE
integer::b
integer::c
END TYPE ONE

character(len = 7) :: ch1
character(len = 4)::ch2

integer::k= kind(index("FORTRAN","TRAN"))

TYPE(ONE),PARAMETER::O=ONE(index("FORTRAN","TRAN"),index("FORTRAN","TRAN"))


TYPE(ONE)::Z
ch1 = "FORTRAN"
ch2 = "TRAN"

Z=ONE(index(ch1,ch2),index(ch1,ch2))

print *,O%b ,"--",Z%b
if (O%b.NE.Z%b) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

print *,O%c ,"--",Z%c
if (O%c.NE.Z%c) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif



call check1(k,kind(index(ch1,ch2)))
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



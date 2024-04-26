PROGRAM MAIN

TYPE ONE
character(len=10)::b
character(len=10)::c
END TYPE ONE

character(len = 10) :: ch1


integer::k= kind(trim("FORTRAN    "))

TYPE(ONE),PARAMETER::O=ONE(trim("FORTRAN    "),trim("FORTRAN    "))


TYPE(ONE)::Z
ch1 = "FORTRAN    "


Z=ONE(trim(ch1),trim(ch1))

print *,O%b ,"--",Z%b
if (O%b.NE.Z%b) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif

print *,O%c ,"--",Z%c
if (O%c.NE.Z%c) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif



call check1(k,kind(trim(STRING= ch1)))
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



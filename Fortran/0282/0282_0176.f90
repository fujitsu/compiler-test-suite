PROGRAM MAIN

TYPE ONE
integer::b
integer::c
END TYPE ONE

character(len = 10) :: ch1


integer::k= kind(len_trim("FORTRAN    "))

TYPE(ONE),PARAMETER::O=ONE(len_trim("FORTRAN    "),len_trim("FORTRAN    "))


TYPE(ONE)::Z
ch1 = "FORTRAN    "


Z=ONE(len_trim(ch1),len_trim(ch1))

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



call check1(k,kind(len_trim(STRING=ch1 )))
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



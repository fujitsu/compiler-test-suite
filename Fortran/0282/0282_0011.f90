PROGRAM MAIN

TYPE ONE
character(len=15)::b
character(len=15)::c
END TYPE ONE

character(len = 15) :: ch1


integer::k= kind(adjustr("FORTRAN    "))

TYPE(ONE),PARAMETER::O=ONE(adjustr("FORTRAN    "),adjustr("FORTRAN    "))


TYPE(ONE)::Z
ch1 = "FORTRAN    "


Z=ONE(adjustr(ch1),adjustr(ch1))

print *,O%b ,"--",Z%b
if (len(O%b).NE.len(Z%b)) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif

print *,O%c ,"--",Z%c
if (len(O%c).NE.len(Z%c)) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif



call check1(k,kind(adjustr(ch1)))
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



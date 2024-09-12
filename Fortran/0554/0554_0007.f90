PROGRAM MAIN

TYPE ONE
integer::b
integer::c
END TYPE ONE

integer*8::d
integer::e

integer::k= kind(AND(25_8,10))
TYPE(ONE),PARAMETER::O=ONE(AND(25_8, 10),AND(25_8, 10))

TYPE(ONE)::Z

d = 25_8
e = 10
Z=ONE(AND(d,e),AND(d,e))

print *,O%b ,"--",Z%b
if (O%b.ne.Z%b) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

print *,O%c ,"--",Z%c
if (O%b.ne.Z%b) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind(AND(d , e)))
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

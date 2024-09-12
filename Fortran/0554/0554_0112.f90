PROGRAM MAIN
REAL*8,PARAMETER::b= 4.0_8 ** 4.0_8

real*8::c = 4.0_8
real*8::d = 4.0_8

integer::k= kind((4.0_8 ** 4.0_8))
c = 4.0_8
d = 4.0_8

print *,b ,"--",(c ** d)
if (b.ne.( c ** d)) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind((c ** d)))
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

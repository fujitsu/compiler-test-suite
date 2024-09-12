PROGRAM MAIN
complex*32,PARAMETER::b=  ((3.0_16, 3.0_16)) ** 4.0_8

complex*32::c
real*8::d

integer::k= kind(((3.0_16, 3.0_16) ** 4.0_8))
c = (3.0_16, 3.0_16)
d = 4.0_8

if (b.ne.( c ** d)) then
 print '(z32.32,z32.32)',b
 print '(z32.32,z32.32)',c**d
 print *,'??? (Error:) ???'
else
endif

call check1(k,kind((c ** d)))
print *,'pass'

END

     subroutine check1(x,y)
      integer x,y
      if (x.ne.y) then
     print *,"KIND::",x ,"--", "KIND::",y
        print *,'??? (KIND Error:) ???'
      else
      endif
      end subroutine

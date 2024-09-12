PROGRAM MAIN
complex*32,PARAMETER::b=  ((3.0_16, 3.0_16)) ** ((4.0_16 , 4.0_16))

complex*32::c
complex*32::d 

integer::k= kind(((3.0_16, 3.0_16) ** (4.0_16 , 4.0_16)))

c = ((3.0_16, 3.0_16))
d = ((4.0_16, 4.0_16))

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

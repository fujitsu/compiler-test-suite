PROGRAM MAIN
complex*8,PARAMETER::b= 4.0_4 ** ((3.0_4, 3.0_4))

complex*8::d
real::c
integer::k= kind( 4.0_4 ** (3.0_4 , 3.0_4) )
c = 4.0_4
d = ((3.0_4 , 3.0_4))

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

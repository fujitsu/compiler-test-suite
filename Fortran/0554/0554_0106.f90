PROGRAM MAIN
complex*8,PARAMETER::b=  ((3.0_4, 3.0_4)) ** 4_4

complex*8::c
integer*4::d
integer::k= kind((3.0_4 , 3.0_4) ** 4_4 )

c = ((3.0_4 , 3.0_4))
d = 4_4

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

PROGRAM MAIN
integer*8,PARAMETER::b= 4_8 ** 4_8 

integer*8::c
integer*8::d

integer::k= kind(((4_8 ** 4_8 )))
c = 4_8
d = 4_8

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

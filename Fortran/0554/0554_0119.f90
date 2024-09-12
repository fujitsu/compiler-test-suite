PROGRAM MAIN
integer*2,PARAMETER::b= 4_2 ** 2_2 

integer*2::c
integer*2::d

integer::k= kind((4_2 ** 2_2))

c = 4_2
d = 2_2

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

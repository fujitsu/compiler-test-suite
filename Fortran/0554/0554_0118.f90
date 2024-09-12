PROGRAM MAIN
integer*1,PARAMETER::b= 4_1 ** 2_1 

integer*1::c
integer*1::d
integer::k= kind(( 4_1 ** 2_1 ))

c = 4_1
d = 2_1

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

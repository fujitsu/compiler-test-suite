PROGRAM MAIN
integer,PARAMETER::b=AND(22_2, 44_2)

integer*2::c 
integer*2::d
integer::k= kind(AND(22_2,44_2))

c = 22_2
d = 44_2

print *,b ,"--",and(c,d)
if (b.ne.and(c,d)) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind(AND(c , d)))
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

PROGRAM MAIN
integer,PARAMETER::b=AND(2_1 ,12_1)

integer*1::c
integer*1::d
integer::k= kind(AND(2_1,12_1))
c = 2_1
d = 12_1

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

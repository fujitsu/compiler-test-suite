PROGRAM MAIN
logical,PARAMETER::b=BTEST(2_1 ,1)

integer*1::c
integer::d
integer::k= kind(BTEST(2_1,1))

c = 2
d = 1
print *,b ,"--",btest(c,d)
if (b.neqv.btest(c,d)) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind(BTEST(c , d)))

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

PROGRAM MAIN

integer*8::d  
integer::e 

integer::k= kind(BTEST(25_8,10))
logical:: i=BTEST(25_8,10)

d = 25_8
e = 10

print *,i ,"--",BTEST(d,e)
if (i.neqv.BTEST(d,e)) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind(BTEST(d,e)))

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

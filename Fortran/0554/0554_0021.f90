PROGRAM MAIN
integer,DIMENSION(1:3),PARAMETER::a= 22_4
logical,DIMENSION(1:3)::b= BTEST(a ,4)

integer::c
integer::d
integer::k= kind(BTEST(22_4,4))

c = 22_4
d = 4

do i=1,3

print *,b(i) ,"--",btest(c,d)
if (b(i).neqv.btest(c,d)) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind(BTEST(c , d)))
enddo

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

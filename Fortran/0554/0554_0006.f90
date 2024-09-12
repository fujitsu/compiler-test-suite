PROGRAM MAIN
integer,DIMENSION(1:3),PARAMETER::a= 22_4
integer,DIMENSION(1:3)::b= AND(a ,4_4)

integer::c
integer::d

integer::k= kind(AND(22_4,4_4))
c = 22_4
d = 4_4

do i=1,3

print *,b(i) ,"--",and(c,d)
if (b(i).ne.and(c,d)) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

call check1(k,kind(AND(22_4,4_4)))
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

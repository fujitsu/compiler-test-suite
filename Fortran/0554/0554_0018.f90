PROGRAM MAIN
logical::a(2,2) = btest(2,reshape((/11,12,3,4/),(/2,2/)))

integer::b
integer::c(2,2)

integer::k= kind(btest(2,reshape((/11,12,3,4/),(/2,2/))))
c = reshape((/11,12,3,4/),(/2,2/))
b = 2

DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",btest(b,c(i,j))
if (a(i,j).neqv.btest(b,c(i,j))) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

END DO
END DO
call check1(k,kind(btest(b,c)))

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
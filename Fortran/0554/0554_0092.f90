PROGRAM MAIN
logical::a(2,2) = llt(reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/)),"hello")

character(len = 10)::b(2,2)
character(len = 10)::c

integer::k= kind(llt(reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/)),"hello"))
b = reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/))
c = "hello"

DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",llt(b(i,j),c)
if (a(i,j).NEQV.llt(b(i,j),c)) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

END DO
END DO
call check1(k,kind(llt(b,c)))

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

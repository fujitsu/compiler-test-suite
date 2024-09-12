PROGRAM MAIN
logical::a(2,2) = llt("hello",reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/)))

character(len = 10)::b
character(len = 10)::c(2,2)

integer::k= kind(llt("hello",reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/))))
c = reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/))
b = "hello"

DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",llt(b,c(i,j))
if (a(i,j).NEQV.llt(b,c(i,j))) then
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

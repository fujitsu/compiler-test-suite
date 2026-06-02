PROGRAM MAIN
character(len = 20),parameter::a(2,2) = adjustr(reshape((/"ABCDEFG  ","FORTRAN  ","fortran  ","abcdefg  "/),(/2,2/)))

character(len = 20)::b(2,2)


integer::k= kind(adjustr(reshape((/"ABCDEFG  ","FORTRAN  ","fortran  ","abcdefg  "/),(/2,2/))))
b = reshape((/"ABCDEFG  ","FORTRAN  ","fortran  ","abcdefg  "/),(/2,2/))




DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",adjustr(b(i,j))
if (len(a(i,j)).NE.len(adjustr(b(i,j)))) then
 print *,'??? (Error: string->string) ???'
else
 print*, "string->string OK"
endif

END DO
END DO
call check1(k,kind(adjustr(b)))

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


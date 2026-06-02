PROGRAM MAIN
integer,parameter::a(2,2) = len_trim(reshape((/"ABCDEFG  ","FORTRAN  ","fortran  ","abcdefg  "/),(/2,2/)))

character(len = 20)::b(2,2)


integer::k= kind(len_trim(reshape((/"ABCDEFG  ","FORTRAN  ","fortran  ","abcdefg  "/),(/2,2/))))
b = reshape((/"ABCDEFG  ","FORTRAN  ","fortran  ","abcdefg  "/),(/2,2/))




DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",len_trim(b(i,j))
if (a(i,j).NE.len_trim(b(i,j))) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

END DO
END DO
call check1(k,kind(len_trim(b)))

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


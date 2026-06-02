PROGRAM MAIN
integer,parameter::a(2,2) = index((reshape((/"ABCDEFG","FORTRAN","fortran","abcdefg"/),(/2,2/))),"RT") 

character(len = 20)::b(2,2)


integer::k= kind(index((reshape((/"ABCDEFG","FORTRAN","fortran","abcdefg"/),(/2,2/))),"RT"))
b = reshape((/"ABCDEFG","FORTRAN","fortran","abcdefg"/),(/2,2/))




DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",index(b(i,j),"RT")
if (a(i,j).NE.index(b(i,j),"RT")) then
 print *,'??? (Error: string->integer) ???'
else
 print*, "string->integer OK"
endif

END DO
END DO
call check1(k,kind(index(b, "RT")))

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


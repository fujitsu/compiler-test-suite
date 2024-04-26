PROGRAM MAIN
integer,parameter::a(2,2) = ichar(reshape((/'a','b','c','d'/),(/2,2/)))

character(len =1)::b(2,2)


integer::k= kind(ichar(reshape((/'a','b','c','d'/),(/2,2/))))
b = reshape((/'a','b','c','d'/),(/2,2/))




DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",ichar(b(i,j))
if (a(i,j).NE.ichar(b(i,j))) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif

END DO
END DO
call check1(k,kind(ichar(b)))

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


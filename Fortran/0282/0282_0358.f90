PROGRAM MAIN
character(len =1),parameter::a(2,2) = new_line(reshape((/'a','b','c','d'/),(/2,2/)))

character(len =1)::b(2,2)


integer::k = kind(new_line(reshape((/'a','b','c','d'/),(/2,2/))))
b = reshape((/'a','b','c','d'/),(/2,2/))


DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",new_line(b(i,j))
if (a(i,j).NE.new_line(b(i,j))) then
 print *,'??? (Error: character->character) ???'
else
 print*, "character->character OK"
endif

END DO
END DO
call check1(k,kind(new_line(b)))

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


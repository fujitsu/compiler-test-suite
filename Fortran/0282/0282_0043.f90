PROGRAM MAIN
character(len =1),parameter::a(2,2) = char(reshape((/65,66,67,68/),(/2,2/)))

integer::b(2,2)


integer::k= kind(char(reshape((/65,66,67,68/),(/2,2/))))
b = reshape((/65,66,67,68/),(/2,2/))




DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",char(b(i,j))
if (a(i,j).NE.char(b(i,j))) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif

END DO
END DO
call check1(k,kind(char(b)))

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


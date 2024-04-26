PROGRAM MAIN
character(len =1),parameter::a(2,2) = achar(reshape((/2,3,4,5/),(/2,2/)))

integer::b(2,2)


integer::k= kind(achar(reshape((/2,3,4,5/),(/2,2/))))
b = reshape((/2,3,4,5/),(/2,2/))




DO I = 1, 2
DO J = 1,2

print *,a(i,j) ,"--",achar(b(i,j))
if (a(i,j).NE.achar(b(i,j))) then
 print *,'??? (Error: integer->character) ???'
else
 print*, "integer->character OK"
endif

END DO
END DO
call check1(k,kind(achar(b)))

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


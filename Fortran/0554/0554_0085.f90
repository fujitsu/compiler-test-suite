PROGRAM MAIN
logical::a(2,2) = lle(reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/)) ,&
                         reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/)) ) 

character(len = 10)::b(2,2)
character(len = 10)::c(2,2)

integer::k= kind(lle(reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/)) ,&
                         reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/)) ))

b = reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/))
c = reshape((/"FRIENDS","FORTRAN","fortran","friends"/),(/2,2/))

DO I = 1, 2
DO J = 1, 2

print *,a(i,j) ,"--",lle(b(i,j),c(i,j))
if (a(i,j).NEQV.lle(b(i,j),c(i,j))) then
 print *,'??? (Error: string->logical) ???'
else
 print*, "string->logical OK"
endif

END DO
END DO

call check1(k,kind(lle(b,c)))

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

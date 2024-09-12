PROGRAM MAIN
integer::a(2,2) = and(reshape((/11,12,3,4/),(/2,2/)),reshape((/1,1,3,4/),(/2,2/)))

integer::b(2,2)
integer::c(2,2)

integer::k= kind(and(reshape((/11,12,3,4/),(/2,2/)),reshape((/1,1,3,4/),(/2,2/))))

b = reshape((/11,12,3,4/),(/2,2/))
c = reshape((/1,1,3,4/),(/2,2/))

DO I = 1, 2
DO J = 1, 2

print *,a(i,j) ,"--",and( b(i,j),c(i,j) )
if (a(i,j).ne.and(b(i,j),c(i,j))) then
 print *,'??? (Error:) ???'
else
 print*, " OK"
endif

END DO
END DO

call check1(k,kind(and(b,c)))

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

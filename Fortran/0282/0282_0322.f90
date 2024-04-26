program main

 character(len=5,kind=1),dimension(2,2,2:1) ::a
 character(len=5, kind=1),parameter,dimension(2,2,2:1) ::b = RESHAPE((/"abcde","efghi","jklmn","opqrs" /),(/2,2,0/))
 character(len=5, kind=1)::backend
 
 character(len=5, kind=1),parameter::frontend  = minval(b)
 integer,parameter::p = kind(minval(b))
 a = reshape((/"abcde","efghi","jklmn","opqrs"/),(/2,2,0/))
 backend = minval(b)
 
 if ( frontend.ne. backend ) then
 print*, '??? (Error: ) ???'
 else
 print*, 'PASS'
 endif
 call check(p, kind(minval(a)))

end

subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine

program main

 character(len=5,kind=1),dimension(2,2,2:1) ::a
 character(len=5, kind=1),parameter,dimension(2,2,2:1) ::b = RESHAPE((/"abcde","efghi","jklmn","opqrs" /),(/2,2,0/))
 character(len=5, kind=1)::backend
 
 character(len=5, kind=1),parameter::frontend  = maxval(b)
 integer,parameter::p = kind(maxval(b))
 a = reshape((/"abcde","efghi","jklmn","opqrs"/),(/2,2,0/))
 backend = maxval(b)
 print*,frontend
 print *, backend
 
 print*, ichar(frontend), '---', ichar(backend)
 if ( frontend.ne. backend ) then
 print*, '??? (Error: ) ???'
 else
 print*, 'PASS'
 endif
 call check(p, kind(maxval(a)))

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

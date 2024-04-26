program main

 character(len=5,kind=4),dimension(2,2,2:1) ::a
 character(len=5, kind=4),parameter,dimension(2,2,2:1) ::b = RESHAPE((/"abcde","efghi","jklmn","opqrs" /),(/2,2,0/))
 character(len=5, kind=4)::backend
 
 character(len=5, kind=4),parameter::frontend  = minval(b)
 integer,parameter::p = kind(minval(b))
 a = reshape((/"abcde","efghi","jklmn","opqrs"/),(/2,2,0/))
 backend = minval(b)
 print * ,ichar(frontend(1:1))
 print * ,ichar(frontend(2:2))
 print * ,ichar(frontend(3:3))
 print * ,ichar(frontend(4:4))

 backend (1:1) = char( 2147483647 ,kind=4)
 backend (2:2) = char( 2147483647 ,kind=4)
 backend (3:3) = char( 2147483647 ,kind=4)
 backend (4:4) = char( 2147483647 ,kind=4)

 print * ,ichar(backend(1:1))
 print * ,ichar(backend(2:2))
 print * ,ichar(backend(3:3))
 print * ,ichar(backend(4:4))
 
 print*, 'PASS'
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

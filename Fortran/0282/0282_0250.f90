Program Main
character(len=5, kind=1),dimension(2,3,2,1)::a
character(len=5, kind=1),parameter, dimension (2,3,2,1) :: b = reshape((/"abcde", "efghi", "jklmn", "opqrs" ,&
                                   "tuvwx", "yzabc", "efghi", "jklmn","opqrs","abdef","bbbbb","ccccc"/), (/2,3,2,1/))
logical,parameter::m = .false.
character(len=5, kind=1),parameter :: c = maxval(b ,mask = m)

character(len=5, kind=1) :: d
integer,parameter::p = kind(maxval(b,mask = m))
a =  reshape((/"abcde", "efghi", "jklmn", "opqrs" ,&
                    "tuvwx", "yzabc", "efghi", "jklmn","opqrs","abdef","bbbbb","ccccc"/), (/2,3,2,1/)) 
d =  maxval(a,mask = m)
do i = 1,5
print*, ichar(c(i:i)), '---', ichar(d(i:i))
if ( c(i:i).ne. d(i:i) ) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
end do
call check(p, kind(maxval(a,mask = m)))

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


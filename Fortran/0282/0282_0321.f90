Program Main
character(len=5, kind=1),dimension(2,3,2,1)::a
character(len=5, kind=1),parameter, dimension (2,3,2,1) :: b = reshape((/"abcde", "efghi", "jklmn", "opqrs" ,&
                                   "tuvwx", "yzabc", "efghi", "jklmn","opqrs","abdef","bbbbb","ccccc"/), (/2,3,2,1/))
logical,parameter::m = .true.
character(len=5, kind=1),parameter,dimension(1) :: c = minval(b ,mask = m)

character(len=5, kind=1),dimension(1) :: d
integer,parameter::p = kind(minval(b,mask = m))
a =  reshape((/"abcde", "efghi", "jklmn", "opqrs" ,&
                    "tuvwx", "yzabc", "efghi", "jklmn","opqrs","abdef","bbbbb","ccccc"/), (/2,3,2,1/))
d =  minval(a,mask = m)
do i = 1,1
print*, c(i), '---', d(i)
if ( c(i).ne. d(i) ) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
end do
call check(p, kind(minval(a,mask = m)))

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

Program Main
character(len=5, kind=1),dimension(2,3,2,1)::a
character(len=5, kind=1),parameter, dimension (2,3,2,1) :: b = reshape((/"abcde", "efghi", "jklmn", "opqrs" ,&
                                   "tuvwx", "yzabc", "efghi", "jklmn","opqrs","abdef","bbbbb","ccccc"/), (/2,3,2,1/))

logical,parameter, dimension(12)::m = .false.
logical,parameter,dimension(2,3,2,1)::n = reshape(m,(/2,3,2,1/))

character(len=5, kind=1),parameter,dimension(1) :: c = minval(b ,mask = n)

character(len=5, kind=1),dimension(1) :: d
integer,parameter::p = kind(minval(b,mask = n))
a =  reshape((/"abcde", "efghi", "jklmn", "opqrs" ,&
                    "tuvwx", "yzabc", "efghi", "jklmn","opqrs","abdef","bbbbb","ccccc"/), (/2,3,2,1/))
d =  minval(a,mask = n)
do i = 1,1
write(64,*) c(i), '---', d(i)
if ( c(i).ne. d(i) ) then
print*, '??? (Error: ) ???'
else
print*, 'pass'
endif
end do
call check(p, kind(minval(a,mask = n)))

end

subroutine check(x, y)
integer x, y
write(64,*) x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
